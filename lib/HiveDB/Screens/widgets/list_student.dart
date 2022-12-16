import 'package:flutter/material.dart';

class ListStudentWidhet extends StatelessWidget {
  const ListStudentWidhet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text('Name $index'),
          subtitle: Text('Age $index'),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 50,
    );
  }
}