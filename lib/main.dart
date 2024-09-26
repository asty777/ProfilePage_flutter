import 'package:flutter/material.dart';
import 'package:projectapp/DetailPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asty',
      home: const HelloWorld(),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asty',
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg_img4.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white, Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Card(
                      color: Colors.transparent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/pp_img.jpg",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Ni Kadek Belinda Asty',
                              style: TextStyle(
                                color: Color(0xFF37474F),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'hi! my name is Asty, I am a final year student at Wikrama Vocational School, Bogor, majoring in software and game development.',
                              style: TextStyle(
                                color: Color(0xFF37474F),
                                fontSize: 16,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      content: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Asty',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            'Hello, my name is Asty, I am a final year student at Wikrama Vocational School, Bogor, majoring in software and game development.',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'Close',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                'See More',
                                style: TextStyle(
                                  color: Color(0xFF37474F),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                              )
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.pink.shade200,
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                ),
                                onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailPage()),
                              );
                            },
                                child: const Text(
                                  'More information',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

