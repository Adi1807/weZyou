import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomerMsg extends StatelessWidget {
  const CustomerMsg({Key? key}) : super(key: key);

  Widget chatUI({bool isLastChat = false}) {
    return Column(
      children: [
        Slidable(
          endActionPane: ActionPane(
            children: [
              SlidableAction(
                onPressed: (v) {},
                foregroundColor: Colors.pink,
                icon: Icons.delete,
              ),
              SlidableAction(
                onPressed: (c) {},
                foregroundColor: Colors.pink,
                icon: Icons.delete,
              ),
              SlidableAction(
                onPressed: (v) {},
                foregroundColor: Colors.pink,
                icon: Icons.delete,
              ),
              // DottedBorder(
              // borderType: BorderType.Circle,
              // dashPattern: [12, 6],
              //     child: Container(
              //       padding: EdgeInsets.all(20),
              //       child: Icon(
              //         Icons.delete,
              //         color: Colors.pink,
              //       ),
              //     )),
              // SizedBox(
              //   width: 5,
              // ),
              // VerticalDivider(),
              // DottedBorder(
              //     borderType: BorderType.Circle,
              //     dashPattern: [12, 6],
              //     child: Container(
              //       padding: EdgeInsets.all(20),
              //       child: Icon(
              //         Icons.delete,
              //         color: Colors.pink,
              //       ),
              //     )),
              // SizedBox(
              //   width: 5,
              // ),
              // VerticalDivider(),
              // DottedBorder(
              //     borderType: BorderType.Circle,
              //     dashPattern: [12, 6],
              //     child: Container(
              //       padding: EdgeInsets.all(20),
              //       child: Icon(
              //         Icons.delete,
              //         color: Colors.pink,
              //       ),
              //     )),
            ],
            motion: ScrollMotion(),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            // backgroundImage: NetworkImage(''),
                            backgroundColor: Colors.amber,
                            maxRadius: 35,
                          ),
                          Positioned(
                            child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                            ),
                            bottom: 0,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Pretty',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Wich character do you like in harrbhbrbfjrnnchbrhbv',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey.shade600,
                                        fontWeight: true
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: !isLastChat,
          child: Divider(
            thickness: 2,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        chatUI(),
        chatUI(),
        chatUI(isLastChat: true),
      ],
    );
  }
}
