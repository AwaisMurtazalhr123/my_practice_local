import 'package:flutter/material.dart';

class Contacts {
  String? name;
  String? number;
  String? image;
  Contacts({required this.name, required this.number, required this.image});
}

class MyListView extends StatefulWidget {
  MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final List<Contacts> names = [
    Contacts(name: 'Ali', number: '+92333094030', image: '1'),
    Contacts(name: 'Ali malang', number: '+645333094030', image: '1'),
    Contacts(name: 'Ali jutt', number: '+92333654030', image: '1'),
    Contacts(name: 'Ali butt', number: '+923378694030', image: '1'),
    Contacts(name: 'Ali goraya', number: '+923876794030', image: '1'),
    Contacts(name: 'Ali mehar', number: '+923330998030', image: '1'),
    Contacts(name: 'Ali gondal', number: '+92333046030', image: '1'),
  ];

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 24);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contacts"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TextField(
            //   controller: inputController,
            //   onEditingComplete: () {
            //     print(inputController.text);
            //     setState(() {
            //       names.add(inputController.text);
            //       inputController.clear();
            //     });
            //   },
            // ),
            // ...List.generate(
            //     names.length,
            //     (index) => Dismissible(
            //           key: UniqueKey(),
            //           onDismissed: (v) {
            //             ScaffoldMessenger.of(context)
            //                 .showSnackBar(SnackBar(content: Text('Deleted')));
            //           },
            //           child: Card(
            //             shadowColor: Colors.deepPurple,
            //             color: Colors.amber,
            //             child: Padding(
            //               padding: const EdgeInsets.all(12.0),
            //               child: Text(
            //                 names[index],
            //                 style: style,
            //               ),
            //             ),
            //           ),
            //         )),
            Expanded(
              child: ListView.builder(
                  itemCount: names.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (c, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shadowColor: Colors.grey.withOpacity(0.4),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Row(
                              children: [
                                CircleAvatar(),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${names[i].name}",
                                      textAlign: TextAlign.center,
                                      style: style,
                                    ),
                                    Text(
                                      "${names[i].number}",
                                      textAlign: TextAlign.center,
                                      style: style,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
          // Card(
          //
          //     child: Padding(
          //       padding: const EdgeInsets.all(12.0),
          //       child: Text(
          //         "Okkkkkkk",
          //
          //       ),
          //     )),
        ),
      ),
    );
  }
}
