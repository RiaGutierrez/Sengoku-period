import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;


class sengoku extends StatefulWidget {
  @override
  State<sengoku> createState() => _sengokuState();
}

class _sengokuState extends State<sengoku> {
  String seng = '';
  fetchFileData() async {
    String  responceText;
    responceText = await rootBundle.loadString('assets/text/Ordeal.txt');

    setState(() {
      seng = responceText;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text ('The Sengoku Ordeal',
          style:TextStyle(
            fontSize: 20,
            color: Colors.yellow,
            fontFamily: 'Source4',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
      ),
      body:Column(
        children: [
          Container(child: Image.asset('assets/images/ordeal.jpg'),
              height: 150,
              width: double.infinity,
              color: Color.fromRGBO(117, 11, 15, 1)
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(117, 11, 15, 1),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 25, right: 25),
                scrollDirection: Axis.vertical,
                child: Text(
                  seng,
                  softWrap:  true,
                  style: TextStyle (
                    fontFamily: 'Source4',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color : Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
