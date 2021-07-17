import 'package:flutter/material.dart';
import './widgets/student_transaction.dart';

void main() => runApp(BudgetTrackerApp());

class BudgetTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BUDGET TRACKER',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Tracker'),
      ),
      
      body:SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              StudentTransaction(),
              Card(
                color: Colors.orange[200],
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    width: double.infinity,
                    child: Text('Total Expenses: '),
                    ),
                elevation: 10,
              ),
              
              // Card(
              //   color: Colors.lightBlueAccent,
              //   child: Text('List of Expenses'),
              // )
            ],
          ),
      ),   
    );
  }
}
