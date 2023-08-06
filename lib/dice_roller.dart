import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override

  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-2.png' ;

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png' ;
    //print("changing image");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 30,), //مسافة بين الزر والمربع
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                //طريقة ثانية للمسافة
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}