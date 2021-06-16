import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class Classified {
  final String id;
  final String title;
  final String subTitle;
  final String description;
  final String price;
  final String condition;
  // final User owner;

  Classified(
    this.id,
    this.title,
    this.subTitle,
    this.description,
    this.price,
    this.condition,
    // this.owner,
  );
}

class ClassifiedsProvider with ChangeNotifier {
  List<Classified> _classifieds = [];

  final DatabaseReference dbRef = FirebaseDatabase.instance.reference();

  List<Classified> get classifieds {
    return [..._classifieds];
  }

  Future<void> fetchAndSetClassifieds() async {
    try {
      final result = await dbRef.child("3classifieds").get();
      final LinkedHashMap bodyMap = result.value;

      final List<Classified> classifieds = [];

      bodyMap.forEach((key, value) {
        final classified = Classified(
          key,
          value['title'],
          value['subTitle'],
          value['description'],
          value['price'],
          value['condition'],
        );

        classifieds.add(classified);
      });

      _classifieds = classifieds;

      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> addClassified(Classified classified) async {
    try {
      final obj = {
        "title": classified.title,
        "subTitle": classified.subTitle,
        "descrption": classified.description,
        "price": classified.price,
        "condition": classified.condition,
      };

      final result = dbRef.child("3classifieds").push();

      await result.set(obj);

      final newClassified = Classified(
        result.key,
        classified.title,
        classified.subTitle,
        classified.description,
        classified.price,
        classified.condition,
      );

      _classifieds.insert(0, newClassified);

      notifyListeners();
    } on Exception catch (e) {
      print(e);
    }
  }
}
