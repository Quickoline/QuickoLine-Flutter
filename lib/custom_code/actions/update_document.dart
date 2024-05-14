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

import 'package:cloud_firestore/cloud_firestore.dart';

Future updateDocument() async {
// Define the function to update a document in Firestore
  try {
    // Access the Firestore instance
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    // Define the document reference
    DocumentReference documentReference =
        firestore.collection('users').doc('PKyqRoSMywXOoC7gFlM1BlD0w7l2');

    // Update the document with new data
    await documentReference.update({'Whatsappnumber': 'String'});

    // Print a success message
    print('Document updated successfully');
  } catch (e) {
    // Print an error message
    print('Error updating document: $e');
  }
}
