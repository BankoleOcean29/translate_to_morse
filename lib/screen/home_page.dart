import 'package:flutter/material.dart';
import 'package:translate_to_morse/logic/english_dart.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var morseTextController = TextEditingController();
  String userInput = '';

  void displayTranslatedText() {
    setState(() {
      userInput = englishToMorse(morseTextController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff0D47A1),
        title: const Text('Morsey'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded)),
        ],
      ),
      body: SafeArea(child: Column(
        children: [
          Container(
            color: const Color(0xffeeeeee),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('English'),
                ElevatedButton(
                    onPressed: displayTranslatedText,
                    child: const Icon(Icons.autorenew),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0D47A1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    )),
                Text('Morse'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 170, right: 170),
            child: SizedBox(
              height: 5,
              child: Container(
                color: Color((0xffeeeeee)),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right:  10.0),
            child: Container(
              color: const Color(0xffeeeeee),
              height: 200,
              child: TextField(
                controller: morseTextController,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration.collapsed(
                    hintText: 'Type text to translate',
                    hintStyle: TextStyle(color: Color(0xffBDBDBD))),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(userInput)
        ],
      )),
    );
  }
}
