import '../../../business/dtos/category_dto.dart';
import '../category_uio.dart';
import '../transaction_uio.dart';
import '../../../business/dtos/transaction_dto.dart';

// Months display on add transaction page
List<String> _months = [
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec"
];

/// DTO to UIO

extension TransactionDtoMappers on TransactionDTO {
  TransactionUIO toTransactionUIO() {
    return TransactionUIO(
      type: type.toStringType(),
      amount: amount,
      category: category.toCategoryUIO(),
      date: date.toStringDate(),
      accountType: accountType,
      repeatingType: repeatingType.toStringRepeating(),
      notes: notes,
    );
  }
}

extension TransactionTypeMappers on TransactionType {
  String toStringType() {
    switch (this) {
      case TransactionType.expenses:
        return "Expenses";
      case TransactionType.income:
        return "Income";
      default:
        return "Unkown value";
    }
  }
}

extension CategoryDtoMappers on CategoryDTO {
  CategoryUIO toCategoryUIO() {
    return CategoryUIO(
      id: id,
      name: name,
      icon: icon,
    );
  }
}

extension DateTimeMappers on DateTime {
  String toStringDate() {
    List<String> months = _months;
    try {
      // Ex (Date to return) : 23 Jan 2023
      return "${day > 0 ? '$day' : '0$day'} ${months[month - 1]} $year";
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}

extension RepeatingTypeMappers on RepeatingType {
  String toStringRepeating() {
    switch (this) {
      case RepeatingType.never:
        return "No";
      case RepeatingType.daily:
        return "Daily";
      case RepeatingType.weekly:
        return "Weekly";
      case RepeatingType.monthly:
        return "Monthly";
      case RepeatingType.yearly:
        return "Yearly";
      default:
        return "Unkown Value";
    }
  }
}

/// UIO to DTO

extension TransactionUIOMappers on TransactionUIO {
  TransactionDTO toTransctionDTO() {
    return TransactionDTO(
      type: type.toTransactionType(),
      amount: amount,
      category: category.toCategoryDto(),
      date: date.toDateTime(),
      accountType: accountType,
      repeatingType: repeatingType.toRepeatingType(),
      notes: notes,
    );
  }
}

extension TransactionStringsMappers on String {
  TransactionType toTransactionType() {
    switch (toUpperCase()) {
      case "EXPENSES":
        return TransactionType.expenses;
      case "INCOME":
        return TransactionType.income;
      default:
        return TransactionType.unkownValue;
    }
  }

  RepeatingType toRepeatingType() {
    switch (toUpperCase()) {
      case "NN":
        return RepeatingType.never;
      case "DAILY":
        return RepeatingType.daily;
      case "WEEKLY":
        return RepeatingType.weekly;
      case "MONTHLY":
        return RepeatingType.monthly;
      case "YEARLY":
        return RepeatingType.yearly;
      default:
        return RepeatingType.unkownValue;
    }
  }

  DateTime toDateTime() {
    int monthIndex = _months.indexOf(substring(3, 6));
    if (monthIndex != -1) {
      monthIndex++;
    }
    try {
      // Ex (Date to parse) : '23 Jan 2023'
      return DateTime(
        int.parse(substring(7)),
        monthIndex,
        int.parse(substring(0, 3)),
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}

extension CategoryUIOMappers on CategoryUIO {
  CategoryDTO toCategoryDto() {
    return CategoryDTO(
      id: id,
      name: name,
      icon: icon,
    );
  }
}
