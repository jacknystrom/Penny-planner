import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecurringTransactionsRecord extends FirestoreRecord {
  RecurringTransactionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "amounts" field.
  List<double>? _amounts;
  List<double> get amounts => _amounts ?? const [];
  bool hasAmounts() => _amounts != null;

  // "frequencies" field.
  List<String>? _frequencies;
  List<String> get frequencies => _frequencies ?? const [];
  bool hasFrequencies() => _frequencies != null;

  // "categories" field.
  List<String>? _categories;
  List<String> get categories => _categories ?? const [];
  bool hasCategories() => _categories != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _amounts = getDataList(snapshotData['amounts']);
    _frequencies = getDataList(snapshotData['frequencies']);
    _categories = getDataList(snapshotData['categories']);
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recurringTransactions');

  static Stream<RecurringTransactionsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => RecurringTransactionsRecord.fromSnapshot(s));

  static Future<RecurringTransactionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecurringTransactionsRecord.fromSnapshot(s));

  static RecurringTransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecurringTransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecurringTransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecurringTransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecurringTransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecurringTransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecurringTransactionsRecordData({
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecurringTransactionsRecordDocumentEquality
    implements Equality<RecurringTransactionsRecord> {
  const RecurringTransactionsRecordDocumentEquality();

  @override
  bool equals(
      RecurringTransactionsRecord? e1, RecurringTransactionsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.amounts, e2?.amounts) &&
        listEquality.equals(e1?.frequencies, e2?.frequencies) &&
        listEquality.equals(e1?.categories, e2?.categories) &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(RecurringTransactionsRecord? e) => const ListEquality()
      .hash([e?.amounts, e?.frequencies, e?.categories, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is RecurringTransactionsRecord;
}
