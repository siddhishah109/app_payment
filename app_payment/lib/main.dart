import 'package:app_payment/plan_payment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Payment',
    routes: {'Payment': (context) => const MyPayment()},
  ));
}
