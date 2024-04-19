import 'package:flutter/material.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/feature/checkout/presentation/view/thank_you_view.dart';
import 'package:payment/feature/checkout/presentation/view/widget/credit_card.dart';
import 'package:payment/feature/checkout/presentation/view/widget/payment_listview.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              AppBar(
                centerTitle: true,
                title: const Text(
                  "Payment Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const PaymentMethodListView(),
              const SizedBox(
                height: 20,
              ),
              const CustomCreditCard(),
              CustomButton(
                title: "Pay",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThankYouView(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
