import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class RegistrationPlayGameController extends GetxController {
  //TODO: Implement RegistrationPlayGameController
  bool profileInProgress=false;

  XFile ? _pickedImage;

  XFile? get pickedImage => _pickedImage;
  // ---- SAVE IMAGE TO SHARED PREF ----
  Future<void> _saveImageToPrefs(String path) async {
    //final prefs = await SharedPrefServices.getInstance();
    // await prefs.setString('profile_image_path', path);
  //  await prefs.put('profile_image_path', path);
  }

  // ---- LOAD IMAGE FROM SHARED PREF ----


  Future<void> setPickedImage(XFile image) async {
    _pickedImage = image;
    await _saveImageToPrefs(image.path);
    update();
  }


  Future<void> pickImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      _pickedImage = XFile(pickedFile.path);
      await _saveImageToPrefs(pickedFile.path);
      update();
    }
  }


  void chooseImageFrom() {
    showModalBottomSheet(
      context: Get.context!,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Camera'),
                onTap: () {
                  pickImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Gallery'),
                onTap: () {
                  pickImage(
                      ImageSource.gallery
                  );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }


}
