import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "last_edited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "goal_savings" field.
  double? _goalSavings;
  double get goalSavings => _goalSavings ?? 0.0;
  bool hasGoalSavings() => _goalSavings != null;

  // "savings_goals" field.
  List<double>? _savingsGoals;
  List<double> get savingsGoals => _savingsGoals ?? const [];
  bool hasSavingsGoals() => _savingsGoals != null;

  // "amount_saved" field.
  double? _amountSaved;
  double get amountSaved => _amountSaved ?? 0.0;
  bool hasAmountSaved() => _amountSaved != null;

  // "complete" field.
  bool? _complete;
  bool get complete => _complete ?? false;
  bool hasComplete() => _complete != null;

  // "next_goal_date" field.
  DateTime? _nextGoalDate;
  DateTime? get nextGoalDate => _nextGoalDate;
  bool hasNextGoalDate() => _nextGoalDate != null;

  // "goal_increment" field.
  String? _goalIncrement;
  String get goalIncrement => _goalIncrement ?? '';
  bool hasGoalIncrement() => _goalIncrement != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "pointsadded" field.
  bool? _pointsadded;
  bool get pointsadded => _pointsadded ?? false;
  bool hasPointsadded() => _pointsadded != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _projectName = snapshotData['project_name'] as String?;
    _description = snapshotData['description'] as String?;
    _lastEdited = snapshotData['last_edited'] as DateTime?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _goalSavings = castToType<double>(snapshotData['goal_savings']);
    _savingsGoals = getDataList(snapshotData['savings_goals']);
    _amountSaved = castToType<double>(snapshotData['amount_saved']);
    _complete = snapshotData['complete'] as bool?;
    _nextGoalDate = snapshotData['next_goal_date'] as DateTime?;
    _goalIncrement = snapshotData['goal_increment'] as String?;
    _index = castToType<int>(snapshotData['index']);
    _pointsadded = snapshotData['pointsadded'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  DocumentReference? owner,
  String? projectName,
  String? description,
  DateTime? lastEdited,
  DateTime? timeCreated,
  DateTime? dueDate,
  double? goalSavings,
  double? amountSaved,
  bool? complete,
  DateTime? nextGoalDate,
  String? goalIncrement,
  int? index,
  bool? pointsadded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'project_name': projectName,
      'description': description,
      'last_edited': lastEdited,
      'time_created': timeCreated,
      'due_date': dueDate,
      'goal_savings': goalSavings,
      'amount_saved': amountSaved,
      'complete': complete,
      'next_goal_date': nextGoalDate,
      'goal_increment': goalIncrement,
      'index': index,
      'pointsadded': pointsadded,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        e1?.projectName == e2?.projectName &&
        e1?.description == e2?.description &&
        e1?.lastEdited == e2?.lastEdited &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.dueDate == e2?.dueDate &&
        e1?.goalSavings == e2?.goalSavings &&
        listEquality.equals(e1?.savingsGoals, e2?.savingsGoals) &&
        e1?.amountSaved == e2?.amountSaved &&
        e1?.complete == e2?.complete &&
        e1?.nextGoalDate == e2?.nextGoalDate &&
        e1?.goalIncrement == e2?.goalIncrement &&
        e1?.index == e2?.index &&
        e1?.pointsadded == e2?.pointsadded;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.projectName,
        e?.description,
        e?.lastEdited,
        e?.timeCreated,
        e?.dueDate,
        e?.goalSavings,
        e?.savingsGoals,
        e?.amountSaved,
        e?.complete,
        e?.nextGoalDate,
        e?.goalIncrement,
        e?.index,
        e?.pointsadded
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
