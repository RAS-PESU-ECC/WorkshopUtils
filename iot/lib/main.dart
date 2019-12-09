import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  var whatColor = [0xff011020, 0xffEE781B];
  var whatTime = false; //day

  @override
  Widget build(BuildContext context) {
    return Container(
        color: whatTime ? Color(0xff011020) : Color(0xffEE781B),
        child: Center(
          child: Container(
            height: 200.0,
            width: 200.0,
            child: FittedBox(
              child: FloatingActionButton(
                  backgroundColor: Colors.orange,
                  child: const Icon(Icons.wb_sunny),
                  elevation: 10.0,
                  onPressed: () {
                    whatTime = !whatTime;
                    print(whatTime);
                  }),
            ),
          ),
        ));
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var whatColor = 0xff011020;
  var whatTime = false; //day
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        color: whatTime ? Color(0xffE29910) : Color(0xff011020),
        duration: Duration(milliseconds: 400),
        child: Center(
          child: Container(
            height: 200.0,
            width: 200.0,
            child: FittedBox(
              child: FloatingActionButton(
                  backgroundColor:
                      whatTime ? Color(0xff011020) : Color(0xffE29910),
                  child: const Icon(Icons.wb_sunny),
                  elevation: 10.0,
                  onPressed: () {
                    setState(() {
                      whatTime = !whatTime;
                    });
                    print(whatTime);
                  }),
            ),
          ),
        ));
  }
}

class mainRender extends StatefulWidget {
  @override
  _mainRenderState createState() => _mainRenderState();
}

class _mainRenderState extends State<mainRender> {
  var On = "Light is on";
  var off = "Light is off";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeWidget(),
        // floatingActionButton: Container(
        //   margin: const EdgeInsets.only(bottom: 50),
        //   child:FloatingActionButton.extended(
        //     backgroundColor: Colors.amber,
        //   elevation: 4.0,
        //   label: const Text('Add a task'),
        //   onPressed: () {},
        // )),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      )
      );
  }
}
// nagarjuna2788

void main(List<String> args) {
  runApp(mainRender());
}
