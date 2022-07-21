import 'package:flutter/material.dart';

class BillHomePage extends StatefulWidget {
  BillHomePage({Key? key}) : super(key: key);

  @override
  State<BillHomePage> createState() => _BillHomePageState();
}

class _BillHomePageState extends State<BillHomePage> {
  TextEditingController mytext = TextEditingController();
  double price = 0;
  int totalPerson = 1;
  double tipPercentage = 0.0;
  @override
  Widget build(BuildContext context) {
    var myStyle = TextStyle(fontSize: 40);
    var textStyle = TextStyle(
      fontSize: 25,
      color: Colors.white,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Text(
                "Bill and Tip Calculator",
                style: myStyle,
                textAlign: TextAlign.center,
              ),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Per Person Bill',
                      style: textStyle,
                    ),
                    Text(
                      '${((price + ((price / 100) * tipPercentage)) / totalPerson).toStringAsFixed(1)} Rs only',
                      style: textStyle,
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: mytext,
                onChanged: (v) {
                  setState(() {
                    price = double.parse(v);
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Please Enter the Bill",
                  labelText: "Please Enter Bill Amount",
                  prefixIcon: Icon(Icons.price_check_rounded),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Divide in ",
                      style: myStyle,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (totalPerson > 1)
                              setState(() {
                                totalPerson--;
                              });
                          },
                          icon: Icon(Icons.exposure_minus_1_rounded),
                        ),
                        Text(
                          "$totalPerson",
                          style: myStyle,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              totalPerson++;
                            });
                          },
                          icon: Icon(Icons.exposure_plus_1_rounded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Tip Percentage",
                    style: myStyle,
                  ),
                  Text(
                    "$tipPercentage",
                    style: myStyle,
                  ),
                ],
              ),
              Slider(
                divisions: 20,
                value: tipPercentage,
                onChanged: (c) {
                  setState(() {
                    tipPercentage = c;
                  });
                },
                min: 0,
                max: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
