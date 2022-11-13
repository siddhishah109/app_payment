import 'package:app_payment/plan_payment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'Payment',
    routes: {'Payment': (context) => const MyPayment()},
  ));
}
