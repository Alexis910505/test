import 'package:flutter/material.dart';

class RadioBottomWidget extends StatelessWidget {
  final int value;
  final int groupValue;
  final String title;
  final ValueChanged<int> onChanged;

  RadioBottomWidget({
    @required this.value,
    @required this.groupValue,
    @required this.onChanged,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => onChanged(value),
          child: value == groupValue
              ? Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/radiobottom.png'),
                  )),
                )
              : Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/notcheckmark.png'),
                  )),
                ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
