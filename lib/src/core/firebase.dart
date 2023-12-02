import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

/// Firebase helper class
///
/// This class is used to interact with Firebase
class AppFirebase {
  final Uuid uuid = const Uuid();
  final db = FirebaseFirestore.instance;

  /// Get a document from a collection
  ///
  /// [collection] is the name of the collection
  /// [orderBy] is the field to order by
  /// [descending] is whether to order descending or not
  ///
  /// Returns a [Future] of [QuerySnapshot]
  ///
  /// Example:
  /// ```dart
  /// await AppFirebase().get(collection: 'users', orderBy: 'createdAt', descending: true);
  /// ```
  Future<QuerySnapshot<Map<String, dynamic>>> get({
    required String collection,
    String? orderBy,
    bool descending = false,
  }) async {
    return await db
        .collection(collection)
        .orderBy(orderBy ?? 'createdAt', descending: descending)
        .get();
  }

  /// Get a document from a collection
  ///
  /// [collection] is the name of the collection
  /// [field] is the field to query
  /// [isEqualTo] is the value to query
  /// [orderBy] is the field to order by
  /// [descending] is whether to order descending or not
  ///
  /// Returns a [Future] of [QuerySnapshot]
  ///
  /// Example:
  /// ```dart
  /// await AppFirebase().getWhere(collection: 'users', field: 'email', isEqualTo: 'test@test');
  /// ```
  Future<QuerySnapshot<Map<String, dynamic>>> getWhere({
    required String collection,
    required String field,
    required dynamic isEqualTo,
    String? orderBy,
    bool descending = false,
  }) async {
    return await db
        .collection(collection)
        .where(field, isEqualTo: isEqualTo)
        .orderBy(orderBy ?? 'createdAt', descending: descending)
        .get();
  }

  /// Get a document from a collection
  ///
  /// [collection] is the name of the collection
  /// [data] is the data to add
  ///
  /// Returns a [Future] of [DocumentReference]
  ///
  /// Example:
  /// ```dart
  /// await AppFirebase().add(collection: 'users', data: {'label': 'value'});
  /// ```
  Future<DocumentReference<Map<String, dynamic>>> add({
    required String collection,
    required Map<String, dynamic> data,
  }) async {
    final String id = uuid.v4();
    await db.collection(collection).doc(id).set({
      'id': id,
      ...data,
    });

    return db.collection(collection).doc(id);
  }

  /// Update a document from a collection
  ///
  /// [collection] is the name of the collection
  /// [id] is the id of the document
  /// [data] is the data to update
  ///
  /// Returns a [Future] of [DocumentReference]
  ///
  /// Example:
  /// ```dart
  /// await AppFirebase().update(collection: 'users', id: 'id', data: {'label': 'value'});
  /// ```
  Future<DocumentReference<Map<String, dynamic>>> update({
    required String collection,
    required String id,
    required Map<String, dynamic> data,
  }) async {
    await db.collection(collection).doc(id).update(data);

    return db.collection(collection).doc(id);
  }

  /// Delete a document from a collection
  ///
  /// [collection] is the name of the collection
  /// [id] is the id of the document
  ///
  /// Returns a [Future] of [void]
  ///
  /// Example:
  /// ```dart
  /// await AppFirebase().delete(collection: 'users', id: 'id');
  /// ```
  Future<void> delete({
    required String collection,
    required String id,
  }) async {
    await db.collection(collection).doc(id).delete();
  }
}
