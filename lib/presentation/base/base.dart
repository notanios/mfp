
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  final WidgetBuilder builder;
  final PreferredSizeWidget? appBar;
  bool resizeToAvoidBottomInset;

  BasePage({Key? key, required this.builder, this.appBar, this.resizeToAvoidBottomInset = false}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: widget.appBar ?? PreferredSize(child: Container(), preferredSize: const Size(0, 0)),
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                widget.builder(context),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

void hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

