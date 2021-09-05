import "package:flutter/material.dart";

class Buletbulet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenwidth = screenSize.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: screenwidth,
      height: 15,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Color.fromRGBO(193, 191, 233, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Color.fromRGBO(193, 191, 233, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Color.fromRGBO(193, 191, 233, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Color.fromRGBO(193, 191, 233, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Color.fromRGBO(193, 191, 233, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
