import 'package:flutter/material.dart';

class SelectWidget extends StatelessWidget {
  final bool select;
  final String title;
  final Function onTap;

  SelectWidget({
    @required this.select,
    @required this.title,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: select
                    ? AssetImage('assets/checkmark.png')
                    : AssetImage('assets/notcheckmark.png'),
              )),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              )),
        ],
      ),
    );
  }
}
