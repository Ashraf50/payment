import 'package:flutter/material.dart';
import 'package:payment/core/widget/custom_button.dart';
import 'package:payment/feature/checkout/presentation/view/payment_details_view.dart';
import 'package:payment/feature/checkout/presentation/view/widget/price_widget.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              AppBar(
                centerTitle: true,
                title: const Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Image.asset(
                  "assets/img/product.png",
                  height: 400,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const PriceWidget(),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: "Complete Payment",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentDetailsView(),
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
