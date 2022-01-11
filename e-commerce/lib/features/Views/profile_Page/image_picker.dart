import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageLink extends StatefulWidget {
  const ImageLink({Key? key}) : super(key: key);

  @override
  _ImageLinkState createState() => _ImageLinkState();
}

class _ImageLinkState extends State<ImageLink> {
  final ImagePicker _picker = ImagePicker();
  var _image = Image(
    image: AssetImage('assets/image.JPG'),
  );

  Future getImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image! as Image;
      print('Here it is dawg look fast');
      //print(_image.path);
      print('Here');
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        getImage();
        print('Love');
      },
      child: Scaffold(
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            color: Colors.blueAccent,
            child: Center(
              child: Image.asset(''),
            ), //Image.file(_image),
          ),
        ),
      ),
    );
  }

  upLoadImage() async {
    final _picker = ImagePicker();
    final _storage = FirebaseStorage.instance;

    PickedFile image;
    // check for permission.
    await Permission.photos.request();
    var permissionStatus = Permission.photos.status;

    // if (permissionStatus.isGranted) {
    //   // image picker
    //   image =
    //       (await _picker.pickImage(source: ImageSource.gallery)) as PickedFile;

    //    File file = image.path as File;

    //   if (image) {
    //     var snapShot = await _storage.ref().child('folderName/ImageName').putFile(file).
    //   }
    // } else {
    //   print('Grant permission status');
    // }

    // image picker.
    // upload to firebase.
  }
}
