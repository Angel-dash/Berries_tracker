import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                    'RS ${expense.amount.toStringAsFixed(2)}'), //it simply display 12.55556 to 12.55
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.date.toString())
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
