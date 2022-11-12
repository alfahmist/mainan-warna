import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Color color1 = Colors.amber;
    Color color2 = Colors.blue;
    Color color3 = Colors.brown;
    Color color4 = Colors.green;
    Color color5 = Colors.black12;
    bool isAccepted = false;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mainan Warna"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Dragable1
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color1,
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color1.withOpacity(0.5),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  // Draggable2
                  Draggable<Color>(
                    data: color2,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color2.withOpacity(0.5),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DragTarget<Color>(
                      onWillAccept: (value) => true,
                      onAccept: (value) {
                        isAccepted = true;
                        color5 = value;
                        print(value);
                      },
                      builder: (context, candidates, rejected) {
                        return (isAccepted)
                            ? SizedBox(
                                width: 200,
                                height: 100,
                                child: Material(
                                    color: color5,
                                    shape: StadiumBorder(),
                                    elevation: 3))
                            : SizedBox(
                                width: 200,
                                height: 100,
                                child: Material(
                                    color: Colors.grey,
                                    shape: StadiumBorder(),
                                    elevation: 3));
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Dragable3
                  Draggable<Color>(
                    data: color3,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color3,
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color3.withOpacity(0.5),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  // Draggable2
                  Draggable<Color>(
                    data: color4,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color4,
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: color4.withOpacity(0.5),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
