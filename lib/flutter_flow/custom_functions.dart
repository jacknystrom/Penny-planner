import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double progressBarConverter(
  double saved,
  double goal,
) {
  try {
    double progress = (saved / goal);
    //progress = progress.roundToDouble();
    if (progress <= 1) {
      return progress;
    } else {
      return 1;
    }
  } catch (err) {
    return 0.0;
  }
}

String progressBarPercent(
  double goal,
  double saved,
) {
  try {
    double progress = (saved / goal) * 100;
    progress.floor();
    if (progress.floor() >= 100) {
      return '100%';
    } else {
      return '${progress.round()}%';
    }
  } catch (err) {
    return '0%';
  }
}

DateTime add52Weeks(DateTime currentTime) {
  return currentTime.add(const Duration(days: 52 * 7));
}

DateTime add1Year(DateTime currentTime) {
  return currentTime.add(const Duration(days: 365));
}

DateTime add100Weeks(DateTime currentTime) {
  return currentTime.add(const Duration(days: 100 * 7));
}

DateTime add200Weeks(DateTime currentTime) {
  return currentTime.add(const Duration(days: 200 * 7));
}

DateTime? add1Week(DateTime? date) {
  // add 1 week to the given date
  if (date == null) {
    return null;
  }

  DateTime newDate = date.add(const Duration(days: 7));
  return newDate;
}

DateTime? add1Day(DateTime? date) {
  // add 1 day to the date
  // add 1 day to the given date
  if (date == null) {
    return null;
  }

  DateTime newDate = date.add(const Duration(days: 1));
  return newDate;
}

DateTime? add2Weeks(DateTime? date) {
  // add 2 weeks to the date
  // add 2 weeks to the given date
  if (date == null) {
    return null;
  }

  DateTime newDate = date.add(const Duration(days: 14));
  return newDate;
}

double? findNewIndex(
  int? index,
  double amountSaved,
  List<double>? saveingsGoals,
) {
  // find the next index if the sum of the previous savings goals is equal to the amount saved
  if (index == null || saveingsGoals == null) {
    return null;
  }

  if (amountSaved == 0) {
    return 0;
  }

  double sum = 0;
  for (int i = 0; i < index; i++) {
    sum += saveingsGoals[i];
  }

  return sum;
}

String? generateLinkTokenUrl(String linkToken) {
  return "https://sandbox.plaid.com/link?token=" + linkToken;
}

List<String> getCategoryNames(List<String> categories) {
  Set<String> seen = <String>{}; // A set to track already seen strings
  List<String> result = [];

  for (String str in categories) {
    if (!seen.contains(str)) {
      result.add(str); // Add to the result list if not seen before
      seen.add(str); // Mark the string as seen
    }
  }

  return result;
}

List<int> getCategoryNums(
  List<String> names,
  List<String> numNames,
) {
  List<int> nums = [];
  for (int i = 0; i < names.length; i++) {
    int num = 0;
    for (int j = 0; j < numNames.length; j++) {
      if (numNames[j] == names[i]) {
        num++;
      }
    }
    nums.add(num);
  }

  return nums;
}

List<DateTime> stringToDate(List<String> datestrings) {
  // takes a list of string representing dates in year moth day format and returns a list of date/time values
  List<DateTime> dateTimes = [];

  for (String dateString in datestrings) {
    List<String> dateParts = dateString.split('-');
    int year = int.parse(dateParts[0]);
    int month = int.parse(dateParts[1]);
    int day = int.parse(dateParts[2]);
    dateTimes.add(DateTime(year, month, day));
  }

  return dateTimes;
}

String? spent(
  List<double> nums,
  List<DateTime> dates,
  int numDays,
) {
  double totalSpent = 0.0;
  DateTime currentDate = DateTime.now();
  DateTime weekAgo = currentDate.subtract(Duration(days: numDays));

  for (int i = 0; i < dates.length; i++) {
    if (dates[i].isAfter(weekAgo) && dates[i].isBefore(currentDate)) {
      totalSpent += nums[i];
    }
  }

  return totalSpent.toStringAsFixed(2);
}
