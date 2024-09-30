import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Stripe with the publishable key
  Stripe.publishableKey =
      'pk_test_51OGTmIGjgzcSMmV68cJRldooHnoMEouYV33KsLax1uM4ts3IwzZPYNBM6GP6HY79FvBgRewxJnAs1PBB5YLXGk8U005bF9hSjN';

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StripeCardInput(),
    );
  }
}

class StripeCardInput extends StatefulWidget {
  @override
  _StripeCardInputState createState() => _StripeCardInputState();
}

class _StripeCardInputState extends State<StripeCardInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stripe Card Input")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Stripe CardField widget
            CardField(
              onCardChanged: (card) {
                print('Card changed: ${card?.complete}');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add code to confirm payment or save payment method
              },
              child: Text('Confirm Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
