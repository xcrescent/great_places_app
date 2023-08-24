import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});
  @override
  State<StatefulWidget> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  XFile? _storedImage;
  Uint8List? _image;
  Future<void> _takePicture() async {
    _storedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    Uint8List __image = await _storedImage!.readAsBytes();
    setState(() {
      _image = __image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: _image != null
              ? Image.memory(
                  _image!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : const Text("No image taken"),
        ),
        ElevatedButton.icon(
          onPressed: _takePicture,
          icon: const Icon(Icons.camera),
          label: const Text(
            'Take Picture',
          ),
        )
      ],
    );
  }
}
