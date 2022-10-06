import 'package:flutter/material.dart';


import '../../Model/chat_model.dart';
import 'chat_text_view.dart';

class ChatItemView extends StatefulWidget {
  final ChatModel chatModel;

  const ChatItemView({Key? key, required this.chatModel}) : super(key: key);

  @override
  State<ChatItemView> createState() => _ChatItemViewState();
}

class _ChatItemViewState extends State<ChatItemView> {
  @override
  Widget build(BuildContext context) {
    MainAxisAlignment mainAxisAlignment =
        widget.chatModel.isme ? MainAxisAlignment.end : MainAxisAlignment.start;
    return widget.chatModel.isme
        ? Container(
            margin: EdgeInsets.only(left:  MediaQuery.of(context).size.width / 4),
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // ChatTextView(
                //   // text: widget.chatModel.time,
                //   text: "12:00",
                //   fontSize: 12,
                // ),
                // AddHorizontalSpace(2),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            // topLeft: Radius.circular(20),
                          ),
                          color: Colors.grey.withAlpha(100),
                        ),
                        child: ChatTextView(
                          text: widget.chatModel.message,
                          color: Colors.white,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                )

          //       SizedBox(height: 5),
          //       Container(
          //         padding: EdgeInsets.all(2),
          //         decoration: BoxDecoration(
          //           color: Colors.black12,
          //           borderRadius: BorderRadius.only(
          //             bottomLeft: Radius.circular(20),
          //             topLeft: Radius.circular(20),
          //           ),
          //         ),
          //         child: CircleAvatar(
          //           backgroundColor: Colors.white,
          //           backgroundImage: AssetImage("assets/images/man.png"),
          //         ),
          //       ),
              ],
            ),
          )
        : Container(
            margin:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 4),
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   padding: EdgeInsets.all(2),
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //     borderRadius: BorderRadius.only(
                //       bottomRight: Radius.circular(20),
                //       topRight: Radius.circular(20),
                //     ),
                //   ),
                //   child: CircleAvatar(
                //     backgroundColor: Colors.white,
                //     backgroundImage: AssetImage("assets/images/engineer.png"),
                //   ),
                // ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.grey.withAlpha(100),
                        ),
                        child: ChatTextView(
                          text: widget.chatModel.message,
                          color: Colors.white,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                // AddHorizontalSpace(2),
                // ChatTextView(
                //   // text: widget.chatModel.time.toString(),
                //   text: "12:00",
                //   fontSize: 12,
                // ),
              ],
            ),
          );
  }
}
