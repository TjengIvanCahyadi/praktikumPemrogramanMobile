import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirestoreController extends GetxController {
  var items = FirebaseFirestore.instance.collection("items").obs;
}
