import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPayment extends StatefulWidget {
  const MyPayment({super.key});

  @override
  State<MyPayment> createState() => _MyPaymentState();
}

class _MyPaymentState extends State<MyPayment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(left: 20, top: 50),
                  child: const Text('Your Plan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold))),
              Container(
                padding: const EdgeInsets.only(left: 122, top: 55),
                child: const Text(
                  'Change',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 0.25, top: 55),
                child: IconButton(
                  color: Color.fromARGB(255, 196, 195, 195),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
          const Divider(
              height: 20,
              thickness: 1,
              color: Color.fromARGB(255, 206, 206, 206),
              indent: 25,
              endIndent: 25),
          Container(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [Text('Premium'), Text('9.99')],
              )),
        ]),
      ),
    );
  }
}
