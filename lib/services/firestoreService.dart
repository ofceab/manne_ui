import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore firebaseFirestore;
  FirestoreService({this.firebaseFirestore});

  final List<String> categoriesList = [
    'legumes',
    'poissons',
    'viandes',
    'fruits',
    'oil'
  ];

  /// Fetch Products by categories
  /// Get a stream of products
  Stream<QuerySnapshot> getProductByCateogory(String category) {
    return firebaseFirestore.collection(category).snapshots();
  }

  /// Save an Orders products
  Future<bool> ordersProducts(Map<String, dynamic> data) async {
    try {
      DocumentReference docRef =
          await firebaseFirestore.collection('orders').add(data);
      if (docRef != null) {
        return true;
      }
      return null;
    } on FirebaseException catch (e) {
      print(e.message);
      return false;
    } catch (e) {
      return false;
    }
  }

  /// Add product by categories
  Future<String> addProductByCategorie(
      String category, Map<String, dynamic> data) async {
    try {
      if (categoriesList.contains(category)) {
        firebaseFirestore.collection(category).add(data);
        return 'Produit ajouté avec sucess';
      }
      return null;
    } on FirebaseException catch (e) {
      return 'Une error le produit n\'a pas pu etre ajouté \n ${e.message}';
    } catch (e) {
      return e.toString();
    }
  }

  ///Update a product from his cateogry
  Future<String> updateProduct(
      Map<String, dynamic> data, String category, String documentID) async {
    try {
      if (categoriesList.contains(category)) {
        firebaseFirestore.collection(category).doc(documentID).update(data);
      }
      return 'success';
    } on FirebaseException catch (e) {
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  ///Update a delete from his cateogry
  Future<bool> deleteAProductByCategory(
      String documentID, String category) async {
    try {
      if (categoriesList.contains(category)) {
        firebaseFirestore.collection(category).doc(documentID).delete();
        return true;
      }
      return null;
    } on FirebaseException catch (e) {
      print(e.message);
      return false;
    }
  }
}
