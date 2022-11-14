import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPayment extends StatefulWidget {
  const MyPayment({super.key});

  @override
  State<MyPayment> createState() => _MyPaymentState();
}

class _MyPaymentState extends State<MyPayment> {
  var padding;
  List<bool> _selections = List.generate(2, (_) => false);

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
              indent: 20,
              endIndent: 20),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Premium',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Row(
              children: [
                const Text(
                  '\$9.99',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 15, top: 12),
                    child: const Text(
                      '/month',
                      style: TextStyle(
                          color: Color.fromARGB(255, 138, 137, 137),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 13, left: 20),
            child: Row(
              children: const [
                Text(
                  'Cancle anytime.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 187, 184, 184),
                    fontSize: 14,
                  ),
                ),
                Text(
                  ' Offer terms',
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 180, 216),
                    fontSize: 14,
                  ),
                ),
                Text(
                  ' apply.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 187, 184, 184),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
              height: 60,
              thickness: 1,
              color: Color.fromARGB(255, 206, 206, 206),
              indent: 20,
              endIndent: 20),
          Container(
              padding: EdgeInsets.only(top: 2, right: 175),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ToggleButtons(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: const Text(
                            'Credit card',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          child: const Text(
                            'paytm',
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                      isSelected: _selections,
                      onPressed: (int index) {
                        setState(() {
                          _selections[index] = !_selections[index];
                        });
                      },
                      borderRadius: BorderRadius.circular(5),
                      borderColor: Colors.grey,
                      color: Colors.black,
                      selectedColor: Colors.black,
                      fillColor: Color.fromARGB(211, 206, 206, 206),
                    ),
                  ])),
          Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: 'Enter Card number',
                ),
                style: const TextStyle(fontSize: 20),
              )),
        ]),
      ),
    );
  }
}
