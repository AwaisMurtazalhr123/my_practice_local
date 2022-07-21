import 'package:flutter/material.dart';

class ImageSecondPage extends StatelessWidget {
  // String? accept;
  // ImageSecondPage({required this.accept});
  //final String url =
  //    "https://images.unsplash.com/photo-1594954825820-e9ebfd9d0e21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80";
  @override
  Widget build(BuildContext context) {
    // String? v = accept == null ? "NO DATA" : accept;
    return Scaffold(
        appBar: AppBar(
            //     title: Text('$v'),
            ),
        body: Center(
            child: Column(
          children: [
            Container(
              child: Image.asset(
                'assests/pic_1.jpg',
                height: 150,
              ),
            ),
            // Container(
            //   child: Image.network(
            //     "$url",
            //     fit: BoxFit.fitHeight,
            //   ),
            //   width: double.infinity,
            //   height: 300,
            // ),
            // InkWell(
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            //   child: Container(
            //     width: 290,
            //     height: 70,
            //     color: Colors.amber,
            //     child: Center(
            //       child: Text(
            //         'Go to First page',
            //       ),
            //     ),
            //   ),
            // ),
          ],
        )));
  }
}
