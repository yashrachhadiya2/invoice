import 'package:flutter/material.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtContact = TextEditingController();
  TextEditingController txtPayment = TextEditingController();
  TextEditingController txtAdress = TextEditingController();
  TextEditingController txtProduct = TextEditingController();
  TextEditingController txtQty = TextEditingController();
  TextEditingController txtPrice = TextEditingController();
  TextEditingController txtDiscount = TextEditingController();

  List<DataClass> Data = [];

  int billAmount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoice Details",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'Second');
            },
            icon: Icon(Icons.navigate_next_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: txtUserName,
            decoration: InputDecoration(
              hintText: "User Name",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: txtContact,
            decoration: InputDecoration(
              hintText: "Contact",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: txtPayment,
            decoration: InputDecoration(
              hintText: "Payment",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: txtAdress,
            decoration: InputDecoration(
              hintText: "Adress",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Product Details",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: txtProduct,
                  decoration: InputDecoration(
                    hintText: "Product",
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  controller: txtQty,
                  decoration: InputDecoration(
                    hintText: "Qty",
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  controller: txtPrice,
                  decoration: InputDecoration(
                    hintText: "Price",
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  controller: txtDiscount,
                  decoration: InputDecoration(
                    hintText: "Discount",
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              DataClass pro = DataClass(
                  Product: txtProduct.text,
                  Price: txtPrice.text,
                  Qty: txtQty.text,
                  Discount: txtDiscount.text);
              setState(() {
                Data.add(pro);
              });

              Bill();
            },
            child: Text("Add"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${Data[index].Product}"),
                    leading: Text("${Data[index].Qty}"),
                    subtitle: Text("${Data[index].Price}"),
                    trailing: Text("${Data[index].Discount}"),
                  );
                }),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey,
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: Text("Amount : ${billAmount}"),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  void Bill() {
    int totalAmount = 0;
    int totalDis = 0;
    for (int i = 0; i < Data.length; i++) {
      totalAmount = (int.parse(Data[i].Price!) * int.parse(Data[i].Qty!)) + totalAmount;
      totalDis = int.parse(Data[i].Discount!) -   totalDis;
    }
    setState(() {
      billAmount = totalAmount - totalDis;
    });
  }
}

class DataClass {
  String? Product, Price, Qty, Discount;

  DataClass({this.Product, this.Price, this.Qty, this.Discount});
}

class AllData{

}
