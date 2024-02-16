import 'package:animation_learn/animation/fade.dart';
import 'package:animation_learn/animation/scaleRotate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pageOne(),
    );
  }

}


class pageOne extends StatelessWidget {
  const pageOne({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("screen I"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageThree(),));
                },
                child: const Hero(tag: "flutter logo",
                  child: FlutterLogo(size: 100,))
            )
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: ()=> Navigator.push(context ,ScaleRotate(const PageTwo())), child: const Text('ScaleRotate')),
              TextButton(onPressed: ()=> Navigator.push(context ,Fade(const PageTwo())), child: const Text('Fade')),
            ],
          ),
        ],
      )
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("screen II"),
          centerTitle: true,
        ),
        body: const Center(child: FlutterLogo(size: 150,))
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("screen III"),
          centerTitle: true,
        ),
        body: const Hero(
          tag: "flutter logo",
          child: FlutterLogo(size: 150,))
      ),
    );
  }
}
