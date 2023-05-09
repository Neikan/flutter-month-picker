part of '../screen_home.dart';

class _CmpHomeFab extends StatelessWidget {
  final DateTime date;
  final void Function(DateTime) onSelect;

  const _CmpHomeFab({
    required this.date,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _handleShowPicket(context),
      child: const Icon(Icons.calendar_today),
    );
  }

  _handleShowPicket(BuildContext context) async {
    final newDate = await showMonthPicker(
      dateInitial: date,
      context: context,
      dateFirst: DateTime(DateTime.now().year - 10),
      dateLast: DateTime(DateTime.now().year + 10),
      locale: const Locale('en'),
      predicateMonthSelectable: (DateTime value) => value.month.isOdd,
      predicateMonthStyle: _handlePredicateStyleMonth,
      predicateYearStyle: _handlePredicateStyleYear,
      headerBackgroundColor: Colors.green,
      headerTextColor: Colors.white,
      selectedMonthBackgroundColor: Colors.green,
      selectedMonthTextColor: Colors.white,
      unselectedMonthTextColor: Colors.black,
      actionsWidgetConfirm: _buildConfirm(),
      actionsWidgetCancel: _buildCancel(),
      roundedCornersRadius: 24,
      dismissible: true,
      headerPadding:
          const EdgeInsets.symmetric(horizontal: 23.0, vertical: 30.0),
      headerDateFormat: DateFormat.MMMM,
      isActionConfirmFirst: true,
    );

    dynamic ssss = '';
    ssss = 1;
    print(ssss.runtimeType);

    if (newDate != null) onSelect(newDate);
  }

  ButtonStyle? _handlePredicateStyleMonth(DateTime value) {
    if (value.month == 1) {
      return TextButton.styleFrom(
        backgroundColor: Colors.green[400],
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      );
    }

    return null;
  }

  ButtonStyle? _handlePredicateStyleYear(int year) {
    final predicatedYear = DateTime(DateTime.now().year - 1).year;

    if (year == predicatedYear) {
      return ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(
          Colors.green[400],
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(color: Colors.white),
        ),
      );
    }

    return null;
  }

  _buildConfirm() {
    return const Text(
      'Ok',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    );
  }

  _buildCancel() {
    return const Text(
      'Cancel',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    );
  }
}
