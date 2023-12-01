import 'package:flutter/material.dart ';
import 'dice_roller.dart';
// import 'package:my_app/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,
      {super.key}); //(also can use this)
  // const GradientContainer(this.colors, {super.key});
  // final List<Color> colors;
  const GradientContainer.green({super.key})
      : color1 = Colors.green,
        color2 = Colors.blue;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        // child: Column(
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   //const GradientContainer({super.key, required this.colors});(also can use this)
//   const GradientContainer(this.colors, {super.key});
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//    return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Welcome to Flutter!'),
//       ),
//     );
//   }
// }

// Git Change Username