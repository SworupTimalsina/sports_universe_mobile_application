import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/category_model.dart';
import '../models/user_model.dart';
import '../services/firebase_service.dart';

class CategoryRepository {
  CollectionReference<CategoryModel> categoryRef =
  FirebaseService.db.collection("categories").withConverter<CategoryModel>(
    fromFirestore: (snapshot, _) {
      return CategoryModel.fromFirebaseSnapshot(snapshot);
    },
    toFirestore: (model, _) => model.toJson(),
  );
  Future<List<QueryDocumentSnapshot<CategoryModel>>> getCategories() async {
    try {
      var data = await categoryRef.get();
      bool hasData = data.docs.isNotEmpty;
      if (!hasData) {
        makeCategory().forEach((element) async {
          await categoryRef.add(element);
        });
      }
      final response = await categoryRef.get();
      var category = response.docs;
      return category;
    } catch (err) {
      print(err);
      rethrow;
    }
  }

  Future<DocumentSnapshot<CategoryModel>> getCategory(String categoryId) async {
    try {
      print(categoryId);
      final response = await categoryRef.doc(categoryId).get();
      return response;
    } catch (e) {
      rethrow;
    }
  }

  List<CategoryModel> makeCategory() {
    return [
      CategoryModel(
          categoryName: "Balls",
          status: "active",
          imageUrl:
          "fhttps://media.istockphoto.com/id/1195696200/vector/balls-for-soccer-rugby-baseball-and-other-sports.jpg"),
      CategoryModel(
          categoryName: "Gym",
          status: "active",
          imageUrl:
          "https://www.hussle.com/blog/wp-content/uploads/2020/12/Gym-structure-1080x675.png"),
      CategoryModel(
          categoryName: "Equipments",
          status: "active",
          imageUrl:
          "https://5.imimg.com/data5/SELLER/Default/2022/9/MS/NA/BT/13105903/axtaekwondo-6-c-g-r-h-s-a-500x500.jpg"),
      CategoryModel(
          categoryName: "Clothing",
          status: "active",
          imageUrl:
          "https://image.made-in-china.com/202f0j00mwAlaNIcGqus/New-Football-Uniforms-for-Adults-and-Children-s-Training-Uniforms-for-Casual-Games-Printed-Numbers.webp"),
    ];
  }
}