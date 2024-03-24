import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currency;
  final String amount;
  final String currencySymbolText;
  final IconData currencySymbol;
  final bool isInverted; //혹은 bool inverted 를 넣어서, 반전 카드를 만들 수 있다.

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.amount,
    required this.currencySymbolText,
    required this.currencySymbol,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(currency,
                    style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      currencySymbolText,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
                scale: 2.3,
                child: Transform.translate(
                  offset: const Offset(-5, 12),
                  child: Icon(
                    currencySymbol,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 88,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
