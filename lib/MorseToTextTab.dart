import 'package:flutter/material.dart';

class MorseToTextTab extends StatefulWidget {
  @override
  _DeckViewState createState() => _DeckViewState();
}

class _DeckViewState extends State<MorseToTextTab> {
  // DECLARE VARIABLES HERE
  final nameHolder = TextEditingController();

  clearTextInput(){
    nameHolder.clear();
  }//end clearTextInput

  @override
  Widget build(BuildContext context) {
    // Basic material design visual layout structure
    return Scaffold(
      // Centers content horizontally and vertically
        body: Center(
            child: Container(
              // Offsets in each of the two horizontal directions
                margin: new EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  // Displays children in a vertical array
                    child: Column(
                      // Place the children as close to the middle of the main axis as possible
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Input Morse Code Here',
                            contentPadding: const EdgeInsets.all(20.0),
                          ),
                          controller: nameHolder,
                          style: new TextStyle(
                              fontSize: 34.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            RaisedButton(
                              child: Text("Submit"),
                              onPressed: () => {},
                              color: Colors.indigo,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(2.0),
                              splashColor: Colors.orange,
                            ),
                            RaisedButton(
                              child: Text("Clear"),
                              color: Colors.indigo,
                              onPressed: clearTextInput,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(2.0),
                              splashColor: Colors.orange,
                            ),
                            RaisedButton(
                              child: Text("View Legend"),
                              onPressed: () => {
                                setState(() {
                                  return Image(image: AssetImage('assets/images/morse_legend.png'));
                                })
                              },
                              color: Colors.indigo,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(2.0),
                              splashColor: Colors.orange,
                            ),
                          ],
                        )
                      ],
                    )))));
  }
}
