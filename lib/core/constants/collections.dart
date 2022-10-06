import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference usersCollection = FirebaseFirestore.instance.collection("users");
CollectionReference postsCollection = FirebaseFirestore.instance.collection("posts");
CollectionReference categoriesCollection = FirebaseFirestore.instance.collection("categories");