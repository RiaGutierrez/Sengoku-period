import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;


class conclusion extends StatefulWidget {
  @override
  State<conclusion> createState() => _conclusionState();
}

class _conclusionState extends State<conclusion> {
  String con = '';
  fetchFileData() async {
    String  responceText;
    responceText = await rootBundle.loadString('assets/text/Conclusion.txt');

    setState(() {
      con = responceText;
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
        title : Text ('Conclusion',
          style:TextStyle(
            fontSize: 20.0,
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
          Container(child: Image.asset('assets/images/conclu.jpg'),
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
                  con,
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
