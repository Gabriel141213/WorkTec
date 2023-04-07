import 'package:flutter/material.dart';

class ConfirmRemove extends StatefulWidget {
  ConfirmRemove({super.key, this.wantRem = false});
  bool wantRem;
  @override
  State<ConfirmRemove> createState() => _ConfirmRemoveState();
}

class _ConfirmRemoveState extends State<ConfirmRemove> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.9,
      width: size.width * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Sim'),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Não'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
