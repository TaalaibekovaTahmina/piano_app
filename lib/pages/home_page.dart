import 'package:flutter/material.dart';
import 'package:tirkeme8/components/piano_black_btn.dart';
import 'package:tirkeme8/components/piano_white_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Piano'),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Row(
                children: const [
                  PianoWhiteBtn(notaName: 'do'),
                  PianoWhiteBtn(notaName: 're'),
                  PianoWhiteBtn(notaName: 'mi'),
                  PianoWhiteBtn(notaName: 'fa'),
                  PianoWhiteBtn(notaName: 'sol'),
                  PianoWhiteBtn(notaName: 'lya'),
                  PianoWhiteBtn(notaName: 'si'),
                ],
              ),
              Positioned(
                left: 40,
                right: 0,
                top: 0,
                child: Row(
                  children: const [
                    PianoBlackBtn(notaName: 'do'),
                    PianoBlackBtn(notaName: 'si'),
                    PianoBlackBtn(visible: false, notaName: 'fa'),
                    PianoBlackBtn(notaName: 'mi'),
                    PianoBlackBtn(notaName: 'sol'),
                    PianoBlackBtn(notaName: 're'),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
