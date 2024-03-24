import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

// App 클래스가 root  Widget 이기 때문에, 두개의 옵션 중 하나를 리턴해야 한다,
// 1. MaterialApp (구글 디자인 시스템)
// 2. CupertinoApp (애플)

class App extends StatelessWidget {
  const App({super.key});

  @override // stateless widget 클래스가 갖고있는 Widget 클래스의 메소드를 오버라이딩
  Widget build(BuildContext context) {
    // build 메소드를 사용하는데, 우리가 원하는 UI 를 출력하기 위해 쓴다.
    return MaterialApp(
        home: Scaffold(
            // scaffold 는 구글 디자인 시스템에서 사용하는 레이아웃
            backgroundColor: const Color(0xFF181818), // 배경색을 검정색으로 설정
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ), // edgeInsets 는 padding 을 설정하는데 사용한다. all, symmetric(vertical, horizontal),
              // only(top, bottom, left , right ) 처럼 한쪽만 줄 수도 있다.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'nice to meet you.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '\$5 194 486',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 44,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: 'Transfer',
                          bgColor: Colors.amber,
                          textColor: Colors.black),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1F2123),
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
                              const Text('Euro',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '6 148',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'EUR',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
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
                                child: const Icon(
                                  Icons.euro_rounded,
                                  color: Colors.white,
                                  size: 88,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -30),
                    child: const CurrencyCard(
                      currency: 'Bitcoin',
                      amount: '1,234,567',
                      currencySymbolText: 'BTC',
                      currencySymbol: Icons.currency_bitcoin,
                      isInverted: true,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -60),
                    child: const CurrencyCard(
                      currency: 'Ethereum',
                      amount: '1,234,567',
                      currencySymbolText: 'ETH',
                      currencySymbol: Icons.monetization_on,
                      isInverted: false,
                    ),
                  ),
                ],
              ),
            )));
  }
}
