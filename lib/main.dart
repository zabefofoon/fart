import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AudioPlayer player = AudioPlayer();

    //AudioCache cache = AudioCache();
    //cache.load('fart.mp3');
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffF2ECBE),
        body: SizedBox(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => player.play(AssetSource('fart.mp3')),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return 0; // 비활성화된 상태에서 그림자 높이 0으로 설정
                        }
                        return 8; // 활성화된 상태에서 그림자 높이 8으로 설정
                      },
                    ),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(280, 280)),
                    maximumSize:
                        MaterialStateProperty.all<Size>(const Size(280, 280)),
                    // 너비와 높이를 조정
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) => const Color(0xffC08261),
                    ),
                  ),
                  child: SizedBox(
                    width: 280,
                    child: Image.asset('assets/fart.png'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 28, 0, 0),
                  child: Text(
                    'Click Me!',
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xff9A3B3B),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
