import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart'; -> no longer valid
// The code below is no longer valid from audioplayers v1.0.1
// final player = AudioCache();
// player.play('note1.wave');

// Instead U can do this :
// final player = AudioPlayer();
// player.play(UrlSource('note1.wave')); -> url file
// (or)
// player.play(AssetSource('note1.wave')); -> asset file
void playsound(int num) // function to play sounds
{
  final player = AudioPlayer();
  player.play(AssetSource('assets_note$num.wav'));
}
Expanded buildkey (Color color,int value)
{
  return Expanded(
    child: TextButton(
        onPressed: ()
        {
          playsound(value);
        },
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.red) -> this can be also be done but the problem here is that we can't modify Colour.red to Colours.color
        // ),
        child:
        Container(
          color: color,
        )
    ),
  );
  // Imp notes :
  // You might notice that there are small strips of gaps between each expanded text button.
  // This is because of the use of the container.
  // We might not use the 'buildkey' function and simply resort to using creating 7 different buttons to fix this issue.
  // We'll have to use the style -> Buttonstyle route in that case
}
// flutter packages - open source libraries of code that you can incorporate in your own program
void main() {
  runApp(xylophone()
  );
}
class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildkey(Colors.red,1),
                  buildkey(Colors.orange,2),
                  buildkey(Colors.yellow,3),
                  buildkey(Colors.green,4),
                  buildkey(Colors.teal,5),
                  buildkey(Colors.blue,6),
                  buildkey(Colors.purple,7),
                ],
              ),
            ),
        ),
      );
  }
}

