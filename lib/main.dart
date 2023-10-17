import 'package:flutter/material.dart';
import 'package:interview/widgets/clickable_card.dart';
import 'package:interview/widgets/dash_line_border_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guru Interview',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Guru Interview'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 重写该函数，并返回一个渐变的Text
  // text: 文本内容
  // gradient: 渐变
  // style: 文本样式
  Widget buildGradientText(String text, Gradient gradient, TextStyle style) {
    return Text(text, style: style);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 24),
          Center(
              child: buildGradientText(
                  "Gradient Text",
                  const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.yellow]),
                  const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue))),
          const Padding(
              padding: EdgeInsets.all(24),
              child: ClickableCard(
                height: 128,
                child: Center(
                  child: Text(
                    "Clickable Card",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: DashLineBorderWidget(
                        strokeWidth: 2,
                        dashSpace: 4,
                        dashWidth: 4,
                        color: Colors.red,
                        child: Container(
                          height: 128,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey),
                          child: const Center(
                              child: Text(
                            "Card1",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          )),
                        ))),
                const SizedBox(width: 24),
                Expanded(
                    flex: 5,
                    child: DashLineBorderWidget(
                      child: Container(
                          height: 128,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey),
                          child: const Center(
                              child: Text(
                            "Card2",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ))),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
