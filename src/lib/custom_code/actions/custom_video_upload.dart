// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// i want this action to upload a media (prompt from their device) to firebase, ONLY A VIDEO and then return the data as something that can be added into a video path list
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

Future<String?> customVideoUpload() async {
  try {
    final ImagePicker picker = ImagePicker();

    // Pick video from device
    final XFile? videoFile = await picker.pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(minutes: 10),
    );

    if (videoFile == null) {
      return null;
    }

    // Create a reference to Firebase Storage
    final String fileName =
        'videos/${DateTime.now().millisecondsSinceEpoch}_${videoFile.name}';
    final Reference storageRef = FirebaseStorage.instance.ref().child(fileName);

    // Upload the video file
    final File file = File(videoFile.path);
    final UploadTask uploadTask = storageRef.putFile(file);

    // Wait for upload to complete
    final TaskSnapshot snapshot = await uploadTask;

    // Get the download URL
    final String downloadUrl = await snapshot.ref.getDownloadURL();

    return downloadUrl;
  } catch (e) {
    print('Error uploading video: $e');
    return null;
  }
}
