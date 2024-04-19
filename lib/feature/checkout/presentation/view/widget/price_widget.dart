import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderInfo(
          title: "Order Subtotal",
          price: 42.97,
        ),
        OrderInfo(
          title: "Discount",
          price: 0,
        ),
        OrderInfo(
          title: "Shipping",
          price: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Divider(),
        ),
        TotalPrice(
          title: "Total",
          price: 50.97,
        ),
      ],
    );
  }
}

class OrderInfo extends StatelessWidget {
  final String title;
  final num price;
  const OrderInfo({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Style.style18,
        ),
        Text(
          "\$$price",
          style: Style.style18,
        ),
      ],
    );
  }
}

class TotalPrice extends StatelessWidget {
  final String title;
  final num price;
  const TotalPrice({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Style.style20,
        ),
        Text(
          "\$$price",
          style: Style.style20,
        ),
      ],
    );
  }
}
