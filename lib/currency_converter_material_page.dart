import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 1. create a variable that store the currency converter value
// 2. create a function that multiply the value given by the textfield
// 2. Store the value in the variable that we created
// 4. Display variable

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {

    print("rebuild againt");
    //  double result = 0;

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: Text(
            "Currency converter",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                      hintText: "Pldsfease enter the amount in usd",
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.monetization_on),
                      prefixStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.red,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(80))),
                      enabledBorder: UnderlineInputBorder()),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize:
                            MaterialStatePropertyAll(Size(double.infinity, 50)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
                    onPressed: () {
                      setState(() {
                        result = double.parse(textEditingController.text) * 81;
                      });
                    },
                    child: const Text(
                      "Convert",
                      // style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ));
  }
}
