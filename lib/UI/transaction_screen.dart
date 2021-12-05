import 'package:flutter/material.dart';

class Transaction_screen extends StatelessWidget {
  const Transaction_screen({Key? key}) : super(key: key);

  Widget transactionListTile({bool isReceived = false}) {
    return ListTile(
      leading: Icon(
        Icons.circle,
        color: isReceived ? Colors.green : Colors.pink,
        size: 16,
      ),
      horizontalTitleGap: 0,
      title: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          isReceived ? 'Receieved' : 'Pending',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      subtitle: Text(
        'Sep 25,2017',
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
      ),
      trailing: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '0.00034BTC',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: isReceived ? Colors.green : Colors.pink,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '\$1233.45',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Material(
            elevation: 20,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.orange.shade200,
              ])),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Your Current Balance',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Transform.translate(
                            offset: const Offset(2, -10),
                            child: const Text(
                              '\$    ',
                              //superscript is usually smaller in size
                              textScaleFactor: 0.7,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          )),
                          const TextSpan(
                              text: '9054.32', style: TextStyle(fontSize: 24)),
                        ])),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Transform.translate(
                            offset: const Offset(2, -10),
                            child: const Text(
                              '       ',
                              //superscript is usually smaller in size
                              textScaleFactor: 0.7,
                              style: TextStyle(fontSize: 18),
                            ),
                          )),
                          const TextSpan(
                              text: '0.09BTC', style: TextStyle(fontSize: 10)),
                        ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Material(
            elevation: 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      'Last Transaction',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    trailing: Text(
                      'See All',
                      style: TextStyle(fontSize: 14, color: Colors.purple),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  transactionListTile(),
                  Divider(),
                  transactionListTile(isReceived: true),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
