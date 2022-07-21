import 'package:flutter/material.dart';
import 'package:flutter_application_script/images/image_secondpage.dart';

class ImageFirstPage extends StatelessWidget {
  const ImageFirstPage({Key? key}) : super(key: key);
  //final String text = "Oops!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image First page'),
      ),
      body: Container(
        height: 440,
        child: Column(
          children: [
            // Text('$text'),
            GestureDetector(
              onTap: () {
                print('Single tap Pressed');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImageSecondPage(
                      //  accept: text,
                      );
                }));
              },
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        'assests/pic_1.jpg',
                      ),
                      // width: double.infinity,
                      // height: 300,
                    ),
                    Container(
                      child: Image.asset(
                        'assests/pic_2.jpg',
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assests/pic_3.jpg',
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assests/pic_4.jpg',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assests/pic_5.jpg',
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assests/pic_6.jpg',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assests/pic_7.jpg',
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assests/pic_8.jpg',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assests/pic_9.jpg',
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assests/pic_10.jpg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Container(
              //   width: 290,
              //   height: 70,
              //   color: Colors.amber,
              //   child: Center(
              //     child: Text(
              //       'Go to Second page',
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
