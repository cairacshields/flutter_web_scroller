import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LandingPageState();
  }
}

class _LandingPageState extends State<LandingPage> {
  ScrollController _controller;
  double _offset = 0;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          //Scroll bar
          Container(
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height,
              width: 20.0,
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width - 20.0),
              decoration: BoxDecoration(color: Colors.black12),
              child: Container(
                alignment: Alignment.topCenter,
                  child: GestureDetector(
                      child: Container(
                      height: 40.0,
                      width: 15.0,
                      margin:
                          EdgeInsets.only(left: 5.0, right: 5.0, top: _offset),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    ),
                      onVerticalDragUpdate: (dragUpdate) {
                        _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);

                        setState(() {
                           if(dragUpdate.globalPosition.dy >= 0) {
                             _offset = dragUpdate.globalPosition.dy;
                           }
                          print("View offset ${_controller.offset} scroll-bar offset ${_offset}");
                        });
                      },
                ),
              )
          ),
        ],
      ),
    );
  }
}
