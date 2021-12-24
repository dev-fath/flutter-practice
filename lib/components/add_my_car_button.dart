import 'package:flutter/material.dart';


class AddMyCarButton extends StatefulWidget {
  const AddMyCarButton({Key? key}) : super(key: key);

  @override
  _AddMyCarButtonState createState() => _AddMyCarButtonState();
}

class _AddMyCarButtonState extends State<AddMyCarButton> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.indigo,
                backgroundColor: Colors.amberAccent,
              ),
                onPressed: () {},
                child: Center(
                  widthFactor: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("차량 등록하기"), Icon(Icons.car_rental)],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}