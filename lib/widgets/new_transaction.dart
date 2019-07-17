import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
    NewTransaction({Key key, this.addnewTransaction}) : super(key: key);
  final Function addnewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
            ),
            FlatButton(
              child: Text("Add Transaction"),
              onPressed: ()=>addnewTransaction(
                  titleController.text, double.parse(amountController.text)),
            )
          ],
        ),
      ),
    );
  }
}
