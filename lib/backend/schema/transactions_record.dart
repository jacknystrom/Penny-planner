import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "amounts" field.
  List<double>? _amounts;
  List<double> get amounts => _amounts ?? const [];
  bool hasAmounts() => _amounts != null;

  // "merchantNames" field.
  List<String>? _merchantNames;
  List<String> get merchantNames => _merchantNames ?? const [];
  bool hasMerchantNames() => _merchantNames != null;

  // "paymentChannels" field.
  List<String>? _paymentChannels;
  List<String> get paymentChannels => _paymentChannels ?? const [];
  bool hasPaymentChannels() => _paymentChannels != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "balances" field.
  List<double>? _balances;
  List<double> get balances => _balances ?? const [];
  bool hasBalances() => _balances != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "dates" field.
  List<DateTime>? _dates;
  List<DateTime> get dates => _dates ?? const [];
  bool hasDates() => _dates != null;

  void _initializeFields() {
    _amounts = getDataList(snapshotData['amounts']);
    _merchantNames = getDataList(snapshotData['merchantNames']);
    _paymentChannels = getDataList(snapshotData['paymentChannels']);
    _category = getDataList(snapshotData['category']);
    _balances = getDataList(snapshotData['balances']);
    _uid = snapshotData['uid'] as String?;
    _dates = getDataList(snapshotData['dates']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.amounts, e2?.amounts) &&
        listEquality.equals(e1?.merchantNames, e2?.merchantNames) &&
        listEquality.equals(e1?.paymentChannels, e2?.paymentChannels) &&
        listEquality.equals(e1?.category, e2?.category) &&
        listEquality.equals(e1?.balances, e2?.balances) &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.dates, e2?.dates);
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.amounts,
        e?.merchantNames,
        e?.paymentChannels,
        e?.category,
        e?.balances,
        e?.uid,
        e?.dates
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
