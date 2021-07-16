import 'package:flutter/material.dart';
import '../models/transaction.dart';

class CategoryList extends StatelessWidget {
  final List<Transaction> transactions;

  CategoryList(this.transactions);

  @override
  Widget build(BuildContext context) {
    // double totalAmount = 0;
    return Container(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: transactions.map((trnx) {
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(
                      trnx.expense,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 17.5),
                    ),
                  ),
                  Container(
                    child: Text('\$${trnx.amount}', 
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 17.5)),

                  ),     
                ],
              ),   
              // Row: widget(child: Container(child: Text('Total Amount: 1000'),))  
            );
          }).toList(),

          
        ),
        
      ),
    );
  }
}
