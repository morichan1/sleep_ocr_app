import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:sleep_ocr_app/common/data/pokemon_data.dart';
import 'package:sleep_ocr_app/common/data/sub_skill_data.dart';
import 'package:sleep_ocr_app/common/data/trait_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OCRアプリ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ocrResult = '';
  String pokemonName = '';
  String pokemonNature = '';
  File? _imageFile;
  final picker = ImagePicker();
  late TextRecognizer textRecognizer;

  @override
  void initState() {
    super.initState();
    textRecognizer = TextRecognizer(script: TextRecognitionScript.japanese);
  }

  @override
  void dispose() {
    textRecognizer.close();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File processedImage = await _preprocessImage(File(pickedFile.path));

      setState(() {
        _imageFile = processedImage;
        ocrResult = ''; // 前回の結果をクリア
        pokemonName = ''; // ポケモン名をクリア
        pokemonNature = ''; // 性格をクリア
      });

      await _performOcr(processedImage);
    }
  }

  Future<File> _preprocessImage(File imageFile) async {
    Uint8List imageData = await imageFile.readAsBytes();
    img.Image? originalImage = img.decodeImage(imageData);

    if (originalImage == null) {
      return imageFile;
    }

    img.Image grayscaleImage = img.grayscale(originalImage);
    img.Image contrastImage = img.adjustColor(grayscaleImage, contrast: 1.0);

    final directory = await getTemporaryDirectory();
    String tempPath = '${directory.path}/processed_image.png';
    File processedImageFile = File(tempPath)
      ..writeAsBytesSync(img.encodePng(contrastImage));

    return processedImageFile;
  }

  Future<void> _performOcr(File imageFile) async {
    final inputImage = InputImage.fromFile(imageFile);

    try {
      final RecognizedText recognizedText =
          await textRecognizer.processImage(inputImage);

      // ポケモン名と性格、スキルを含むテキストを抽出
      final extractedInfo = _extractInformation(recognizedText);

      setState(() {
        ocrResult = extractedInfo['skills']?.join('\n') ?? '';
        pokemonName = extractedInfo['pokemonName'] ?? '';
        pokemonNature = extractedInfo['pokemonNature'] ?? '';
      });
    } catch (e) {
      print('OCR処理中にエラーが発生しました: $e');
      setState(() {
        ocrResult = 'エラーが発生しました: $e';
      });
    }
  }

  Map<String, dynamic> _extractInformation(RecognizedText recognizedText) {
    List<TextBlock> blocks = recognizedText.blocks;

    String? extractedPokemonName;
    String? extractedPokemonNature;
    List<String> extractedSkills = [];

    for (var block in blocks) {
      for (var line in block.lines) {
        String text = line.text;

        // 左上のポケモン名を特定
        if (pokemonData.any((pokemon) => pokemon.name == text)) {
          extractedPokemonName = text;
        }

        if (traitData.any((trait) => trait.traitName == text)) {
          extractedPokemonNature = text;
        }

        // スキルリストに存在するテキストを抽出
        if (subSkillData.any((element) => element.skillName == text)) {
          extractedSkills.add(text);
        }
      }
    }

    return {
      'pokemonName': extractedPokemonName,
      'pokemonNature': extractedPokemonNature,
      'skills': extractedSkills
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('画像選択OCR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_imageFile != null)
              Image.file(
                _imageFile!,
                width: double.infinity,
                height: 300,
                fit: BoxFit.contain,
              )
            else
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.grey[300],
                child: Icon(
                  Icons.image,
                  size: 100,
                  color: Colors.grey[700],
                ),
              ),
            SizedBox(height: 20),
            if (pokemonName.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ポケモン名: $pokemonName'),
              ),
            if (pokemonNature.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('性格: $pokemonNature'),
              ),
            if (ocrResult.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('スキル:\n$ocrResult'),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickImage,
        child: Icon(Icons.photo_library),
      ),
    );
  }
}
