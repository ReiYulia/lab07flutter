import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  double _width = 50.0;
  double _height = 50.0;
  double _topRightRadius = 0.0;

  _onChangeWidth(double value) {
    setState(() {
      _width = value;
    });
  }

  _onChangeHeight(double value) {
    setState(() {
      _height = value;
    });
  }

  _onChangeTopRightRadius(double value) {
    setState(() {
      _topRightRadius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              const Text("Width: "),
              Text(
                _width.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: _width,
            min: 50,
            max: 300,
            onChanged: _onChangeWidth,
          ),


          Row(
            children: [
              const Text("Height: "),
              Text(
                _height.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: _height,
            min: 50,
            max: 300,
            onChanged: _onChangeHeight,
          ),


          Row(
            children: [
              const Text("Top Right Radius: "),
              Text(
                _topRightRadius.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: _topRightRadius,
            min: 0,
            max: 100,
            onChanged: _onChangeTopRightRadius,
          ),


          SizedBox(height: 20),
          Center(
            child: Container(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_topRightRadius),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
