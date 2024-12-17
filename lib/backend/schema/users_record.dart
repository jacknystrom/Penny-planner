import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "preferred_progress_bar" field.
  String? _preferredProgressBar;
  String get preferredProgressBar => _preferredProgressBar ?? '';
  bool hasPreferredProgressBar() => _preferredProgressBar != null;

  // "type_of_income" field.
  String? _typeOfIncome;
  String get typeOfIncome => _typeOfIncome ?? '';
  bool hasTypeOfIncome() => _typeOfIncome != null;

  // "nps_text_response" field.
  String? _npsTextResponse;
  String get npsTextResponse => _npsTextResponse ?? '';
  bool hasNpsTextResponse() => _npsTextResponse != null;

  // "nps_score" field.
  double? _npsScore;
  double get npsScore => _npsScore ?? 0.0;
  bool hasNpsScore() => _npsScore != null;

  // "nps" field.
  bool? _nps;
  bool get nps => _nps ?? false;
  bool hasNps() => _nps != null;

  // "accesToken" field.
  String? _accesToken;
  String get accesToken => _accesToken ?? '';
  bool hasAccesToken() => _accesToken != null;

  // "userPoints" field.
  double? _userPoints;
  double get userPoints => _userPoints ?? 0.0;
  bool hasUserPoints() => _userPoints != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _preferredProgressBar = snapshotData['preferred_progress_bar'] as String?;
    _typeOfIncome = snapshotData['type_of_income'] as String?;
    _npsTextResponse = snapshotData['nps_text_response'] as String?;
    _npsScore = castToType<double>(snapshotData['nps_score']);
    _nps = snapshotData['nps'] as bool?;
    _accesToken = snapshotData['accesToken'] as String?;
    _userPoints = castToType<double>(snapshotData['userPoints']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? age,
  String? preferredProgressBar,
  String? typeOfIncome,
  String? npsTextResponse,
  double? npsScore,
  bool? nps,
  String? accesToken,
  double? userPoints,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'age': age,
      'preferred_progress_bar': preferredProgressBar,
      'type_of_income': typeOfIncome,
      'nps_text_response': npsTextResponse,
      'nps_score': npsScore,
      'nps': nps,
      'accesToken': accesToken,
      'userPoints': userPoints,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.preferredProgressBar == e2?.preferredProgressBar &&
        e1?.typeOfIncome == e2?.typeOfIncome &&
        e1?.npsTextResponse == e2?.npsTextResponse &&
        e1?.npsScore == e2?.npsScore &&
        e1?.nps == e2?.nps &&
        e1?.accesToken == e2?.accesToken &&
        e1?.userPoints == e2?.userPoints;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.age,
        e?.preferredProgressBar,
        e?.typeOfIncome,
        e?.npsTextResponse,
        e?.npsScore,
        e?.nps,
        e?.accesToken,
        e?.userPoints
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
