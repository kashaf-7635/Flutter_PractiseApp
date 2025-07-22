import 'package:flutter/material.dart';

class RippleEffectAnimation extends StatefulWidget {
  @override
  State<RippleEffectAnimation> createState() => _RippleEffectAnimationState();
}

class _RippleEffectAnimationState extends State<RippleEffectAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
      lowerBound: 0.5,
    );

    _animationController.addListener(() {
      setState(() {});
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ripple Effect Animation',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildMyContainer(listRadius[0]),
            buildMyContainer(listRadius[1]),
            buildMyContainer(listRadius[2]),
            buildMyContainer(listRadius[3]),
            buildMyContainer(listRadius[4]),
            Icon(Icons.add_call, color: Colors.white, size: 34),
          ],
        ),
      ),
    );
  }

  Widget buildMyContainer(radius) {
    return Container(
      width: radius * _animationController.value,
      height: radius * _animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(33, 150, 243, 1.0 - _animationController.value),
      ),
    );
  }
}
