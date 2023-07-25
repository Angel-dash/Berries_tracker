import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Meat",
      amount: 520,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Movie",
      amount: 350,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(
              child: ExpensesList(
            expenses: _registeredExpenses,
          ))
        ],
      ),
    );
  }
}
