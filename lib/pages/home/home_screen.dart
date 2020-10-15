import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Minhas Turmas'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MaterialButton(
              //padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              elevation: 7.0,
              highlightElevation: 1.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              height: 100,
              onPressed: (){},
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Colors.deepOrangeAccent,
                    height: 100,
                    width: 100,
                    child: Column(
                        children: <Widget>[
                          Text(
                            'T 1',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Icon(Icons.bookmark_border),
                        ],
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    //mainAxisAlignment: MainAxisAlignment.center,
                    child:
                      Text(
                        'Polícia Civil da Bahia',
                        style: TextStyle(

                        ),
                        //style: Theme.of(context).textTheme.headline4,
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
