import 'dart:math'; // Import the dart:math library

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Ball(), // Using the Ball Stateful Widget here
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: InkWell(
          onTap: () {
            // Use Random() generator and nextInt() to generate a new ballNumber between 1 - 5
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });

            // Print the ballNumber to the console when the button is pressed
            print('Ball Number: $ballNumber');
          },
          child: Image.asset(
              'images/ball$ballNumber.png'), // Displaying the ball image based on ballNumber
        ),
      ),
    );
  }
}

//
// ----------------------- other Version -----------------------
// import 'dart:math';
// import 'package:flutter/material.dart';
//
// void main() => runApp(
//   MaterialApp(
//     home: BallPage(),
//   ),
// );
//
// class BallPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Ask Me Anything',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Ball(), // Using the Ball Stateful Widget here
//     );
//   }
// }
//
// class Ball extends StatefulWidget {
//   @override
//   _BallState createState() => _BallState();
// }
//
// class _BallState extends State<Ball> with SingleTickerProviderStateMixin {
//   int ballNumber = 1;
//   late AnimationController _animationController;
//   late Animation<double> _fadeInAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 500),
//     );
//
//     _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Curves.easeIn,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.lightBlueAccent,
//       child: Center(
//         child: InkWell(
//           onTap: () {
//             setState(() {
//               ballNumber = Random().nextInt(5) + 1;
//               _animationController.reset();
//               _animationController.forward();
//             });
//
//             // Print the ballNumber to the console when the button is pressed
//             print('Ball Number: $ballNumber');
//           },
//           child: FadeTransition(
//             opacity: _fadeInAnimation,
//             child: Image.asset(
//               'images/ball$ballNumber.png',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
// }
//
