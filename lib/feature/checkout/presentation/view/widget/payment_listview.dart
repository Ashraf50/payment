import 'package:flutter/material.dart';
import 'package:payment/feature/checkout/presentation/view/widget/payment_method_widget.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  List<String> images = [
    "assets/img/credit_card.svg",
    "assets/img/paypal.svg",
  ];
  int activeInd = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                activeInd = index;
                setState(() {});
              },
              child: PaymentMethodWidget(
                image: images[index],
                isActive: activeInd == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
