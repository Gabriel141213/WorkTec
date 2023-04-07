import 'package:flutter/material.dart';

class TextButtomClass extends StatefulWidget {
  TextButtomClass(this.label, this.altura, this.largura, this.controller);
  String label = '';
  double largura = 0;
  double altura = 0;
  var controller = TextEditingController();
  //Icon varIcon;

  @override
  State<TextButtomClass> createState() => _TextButtomClassState();
}

class _TextButtomClassState extends State<TextButtomClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.largura,
      height: widget.altura,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label, 
        ),
      )
      
    );
  }
}
/*
class TextFormat extends StatefulWidget {
  String label = '';
  var controller = TextEditingController();

  TextFormat(this.label, this.controller, {super.key});

  @override
  State<TextFormat> createState() => _TextFormatState();
}

class _TextFormatState extends State<TextFormat> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
              labelText: widget.label,
              isDense: true,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              
              ),
              ),
    );
  }
}
*/