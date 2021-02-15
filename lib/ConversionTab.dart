import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:morse/morse.dart';

class ConversionTab extends StatefulWidget {
  final bool isConvertToMorse;

  ConversionTab({Key key, this.isConvertToMorse}) : super(key: key);

  @override
  _DeckViewState createState() => _DeckViewState();
}

class _DeckViewState extends State<ConversionTab> {
  // DECLARE VARIABLES HERE
  TextEditingController textFieldController = new TextEditingController();
  final Morse morse = new Morse();

  _DeckViewState() {
    // PLACEHOLDER
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: <Widget>[
        SizedBox(
          height: 10,
        ),
        TextField(
          minLines: 10,
          maxLines: 10,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: (widget.isConvertToMorse
                  ? 'Enter the text you would like to translate into Morse Code....'
                  : 'Enter the Morse Code you would like to translate into text....'),
              suffixIcon: IconButton(
                icon: Icon(Icons.copy),
                padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
                onPressed: () => {
                  Clipboard.setData(
                      ClipboardData(text: textFieldController.text))
                },
              )),
          controller: textFieldController,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () => {
                  textFieldController.value = TextEditingValue(
                    text: (widget.isConvertToMorse
                        ? morse.encode(textFieldController.text)
                        : morse.decode(textFieldController.text)),
                    selection: TextSelection.fromPosition(
                      TextPosition(
                        offset: (widget.isConvertToMorse
                                ? morse.encode(textFieldController.text)
                                : morse.decode(textFieldController.text))
                            .length,
                      ),
                    ),
                  ),
                },
                child: Text('Convert'),
              ),
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () => {textFieldController.text = ""},
                child: Text('Clear'),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
