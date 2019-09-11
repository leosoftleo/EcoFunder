import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MProfile extends ChangeNotifier {

  static void imageSelector() async {
    File imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

}