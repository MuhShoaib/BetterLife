import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTextInputFieldView extends StatefulWidget {
  final sendIcon;
  final hintText;
  final onChanged;
  final hintColor;
  final Color backColor;
  final onSendPressed;
  final controler;

  const ChatTextInputFieldView({
    Key? key,
    this.sendIcon,
    required this.hintText,
    required this.onChanged,
    this.hintColor,
    this.controler,
    this.backColor = Colors.white,
    this.onSendPressed,
  }) : super(key: key);

  @override
  State<ChatTextInputFieldView> createState() => _ChatTextInputFieldViewState();
}

class _ChatTextInputFieldViewState extends State<ChatTextInputFieldView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              // minWidth: size.width,
              // maxWidth: size.width,
              minHeight: 25.0,
              maxHeight: 135.0,
            ),
            child: Scrollbar(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
                child: TextFormField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: widget.controler,
                  onChanged: widget.onChanged,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withAlpha(100),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey,width: 1),
                      borderRadius: new BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey,width: 1),
                      borderRadius: new BorderRadius.circular(100),
                    ),
                    // border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        top: 2.0, left: 13.0, right: 13.0, bottom: 2.0),
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.white,
          onTap: widget.onSendPressed,
          child: Container(
            height: 45,
            width: 45,
            // padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              widget.sendIcon,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    //   Container(
    //   height: 75,
    //   width: Dimensions(context).screenWidth,
    //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    //   padding: EdgeInsets.all(5),
    //   decoration: BoxDecoration(
    //     color: widget.backColor,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Flexible(
    //         child: ConstrainedBox(
    //           constraints: BoxConstraints(
    //             // minWidth: size.width,
    //             // maxWidth: size.width,
    //             minHeight: 25.0,
    //             maxHeight: 135.0,
    //           ),
    //           child: Scrollbar(
    //             child: TextFormField(
    //               cursorColor: AppColors.mainColor,
    //               keyboardType: TextInputType.multiline,
    //               maxLines: null,
    //               controller: widget.controler,
    //               onChanged: widget.onChanged,
    //               decoration: InputDecoration(
    //                 border: InputBorder.none,
    //                 contentPadding: EdgeInsets.only(
    //                     top: 2.0, left: 13.0, right: 13.0, bottom: 2.0),
    //                 hintText: widget.hintText,
    //                 hintStyle: TextStyle(
    //                   color: AppColors.grey,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       InkWell(
    //         splashColor: AppColors.white,
    //         onTap: widget.onSendPressed,
    //         child: Container(
    //           height: 40,
    //           width: 40,
    //           padding: EdgeInsets.all(5),
    //           decoration: BoxDecoration(
    //               color: AppColors.mainColor,
    //               borderRadius: BorderRadius.circular(10)),
    //           child: Icon(
    //             widget.sendIcon,
    //             color: AppColors.white,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
