import 'package:flutter/material.dart';

import 'payment_card_model.dart';

class PaymentCard extends StatefulWidget {
  final PaymentCardModel cardModel;

  const PaymentCard({Key? key, required this.cardModel}) : super(key: key);

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {

  @override
  Widget build(BuildContext context) {
    const itemWidth = 150.0;

    return Container(
      width: itemWidth,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo.shade900,
      ),
      height: 250,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.cardModel.image,
              height: 100,
            ),
          ),
          Text(
            widget.cardModel.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            onPressed: () {
              debugPrint(widget.cardModel.redirectLink);
            },
            child: const Text(
              'Pay Now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentCardScreen extends StatelessWidget {
  const PaymentCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 10.0,
              runSpacing: 10.0,
              children: List.generate(
                paymentCardDataList.length,
                (index) => PaymentCard(
                  cardModel: paymentCardDataList[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
