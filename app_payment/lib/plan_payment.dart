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
  final List<bool> _selections = List.generate(2, (_) => true);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                    color: const Color.fromARGB(255, 196, 195, 195),
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward),
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
                padding: const EdgeInsets.only(top: 2, right: 175),
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
                            padding: const EdgeInsets.all(6),
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
                        fillColor: const Color.fromARGB(211, 206, 206, 206),
                      ),
                    ])),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(top: 15, right: 230, bottom: 10),
                  child: const Text(
                    'Card number',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 65, 64, 64)),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 340,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter card number',
                          hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(197, 185, 183, 183))),
                    )),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding:
                          const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                      child: const Text(
                        'Expiry date',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 65, 64, 64)),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.only(left: 7),
                      child: const Text(
                        'Security code',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 65, 64, 64)),
                      ),
                    ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 25, right: 5),
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'MM/YY',
                                hintStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(197, 185, 183, 183))),
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.only(left: 5, right: 25),
                          alignment: Alignment.center,
                          width: 340,
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'CVV',
                                hintStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(197, 185, 183, 183))),
                          )),
                    )
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.only(top: 15, right: 265, bottom: 10),
                  child: const Text(
                    'Zip code',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 65, 64, 64)),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 340,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter zip code',
                          hintStyle: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(197, 185, 183, 183))),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                      height: 45,
                      width: 340,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Subscribe',
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
