part of '../screen_home.dart';

class _CMPHomeBody extends StatelessWidget {
  final DateTime date;

  const _CMPHomeBody({
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Year: ${date.year}\nMonth: ${date.month}',
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
