import 'package:flutter/material.dart';

class ChatTextView extends StatefulWidget {
  final text;
  final color;
  final double? fontSize;
  final fontFamily;
  final fontWeight;
  final textAlign;

  const ChatTextView({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
  }) : super(key: key);

  @override
  State<ChatTextView> createState() => _ChatTextViewState();
}

class _ChatTextViewState extends State<ChatTextView> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.fontSize,
        fontFamily: widget.fontFamily,
        fontWeight: widget.fontWeight,
      ),
      textAlign: widget.textAlign,
    );
  }
}
