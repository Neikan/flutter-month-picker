// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:customizable_month_picker/customizable_month_picker.dart';
import 'package:intl/intl.dart';

part 'components/cmp_home_body.dart';
part 'components/cmp_home_fab.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({
    super.key,
  });

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();

    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customizable month picker'),
      ),
      body: _CMPHomeBody(date: _selectedDate),
      floatingActionButton: _CmpHomeFab(
        date: _selectedDate,
        onSelect: _handleSelect,
      ),
    );
  }

  void _handleSelect(DateTime date) {
    setState(() => _selectedDate = date);
  }
}

