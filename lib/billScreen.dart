import 'package:flutter/material.dart';
import 'package:untitled5/pdf.dart';

class BillUi extends StatefulWidget {
  const BillUi({Key? key}) : super(key: key);

  @override
  State<BillUi> createState() => _BillUiState();
}

class _BillUiState extends State<BillUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Bill Amount"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              pdfGen();
            },
            icon: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 350,
          padding: EdgeInsets.all(10),
          height: 400,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Text("Invoice"),
              Text("09/05/2016"),
              SizedBox(
                height: 20,
              ),
              Text(
                "-------------------------------------------------------------------------------------",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Product"),
                      Text("Qty"),
                      Text("Price"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Iphone 13 pro"),
                      Text("1"),
                      Text("119000"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Iphone 13 pro"),
                      Text("1"),
                      Text("119000"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Iphone 13 pro"),
                      Text("1"),
                      Text("119000"),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "-------------------------------------------------------------------------------------",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Amount"),
                      Text("119000"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
