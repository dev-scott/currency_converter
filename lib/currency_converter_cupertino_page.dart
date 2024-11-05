import "package:flutter/cupertino.dart";

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild againt");
    //  double result = 0;

    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey3,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle: const Text(
            "Currency converter",
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'INR ${result.toStringAsFixed(2)} USD',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 2355)),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: TextStyle(color: CupertinoColors.black),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.white,
                  ),
                  placeholder: "Please enter amount",
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CupertinoButton(
                    color: CupertinoColors.black,
                    onPressed: () {
                      convert();
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
