import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class IntermediateScreen extends StatefulWidget {
  const IntermediateScreen({Key? key}) : super(key: key);

  @override
  State<IntermediateScreen> createState() => _IntermediateScreenState();
}

class _IntermediateScreenState extends State<IntermediateScreen> {
  String msg1 = "A new tab has been opened to Authorize Youtube";
  String msg2 = "Head over there";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:5000/'));
    print('Got response');

    final decoded = jsonDecode(response.body);

    setState(() {
      msg1 = decoded['message'];
    });

    if (decoded['status'] == false) {
      Navigator.pushNamed(context, '/unauth');
    }
    Navigator.pushNamed(context, '/voyage');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(msg1),
            Text(
              msg2,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(
              height: 40,
            ),
            Text('If new browser failed to open, head back and try again.')
            // IconButton(
            //     onPressed: () async {
            //       print('Pressed');
            //       final response =
            //           await http.get(Uri.parse('http://127.0.0.1:5000/'));
            //       print('Got response');

            //       print(response.statusCode);

            //       final decoded = jsonDecode(response.body);

            //       setState(() {
            //         print(
            //             'Here-------------------------------------------------------');
            //         msg = decoded['message'];
            //       });
            //     },
            //     icon: Icon(Icons.add_circle_sharp))
          ],
        ),
      ),
    );
  }
}
