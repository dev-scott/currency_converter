import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "0",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          TextField(
            style: TextStyle(color: Colors.blue),
            decoration: InputDecoration(
              hintText: "Please enter the amount in usd",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(Icons.monetization_on),
              prefixStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Colors.black,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.all(Radius.circular(80))
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
