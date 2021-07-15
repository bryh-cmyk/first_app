import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Meowcard()
  ));
}
class Meowcard extends StatefulWidget {
  const Meowcard({Key? key}) : super(key: key);

  @override
  _MeowcardState createState() => _MeowcardState();
}

class _MeowcardState extends State<Meowcard> {

  int meowLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text('Who are we describing here?'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[400],
        onPressed: () {
        setState(() {
          meowLevel+=1;
        });
      },
        child: Icon(Icons.add),
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/newvamp.jpg'),
              radius:50.0,
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Text('A wannabe coder',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                letterSpacing:2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            height:20.0,
              color:Colors.orange[400],
          ),

          SizedBox(height: 10),
          Text('Name: Dobi waadi/ Sanyasi',
                style: TextStyle(
        color: Colors.black,
        fontSize: 13,
        letterSpacing:2.0,
      ),
          ),
          SizedBox(height: 10),
          Text(
            'Breed: Human for now',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Age: 20yrs old',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Hobby: None, he boring :P',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Humour level: $meowLevel',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),

          Text(
            'Habits: Um, i heard he likes to bite a lot!',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Random fact: knows how to ride a scooty, but dislikes cycling',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.mail,
                color: Colors.orange[500],),
                Text(':',
                style: TextStyle(fontSize: 13),),
                SizedBox(width: 10),
                Text('0706',
                style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 2,
                ),
                ),
              ],
            ),
          SizedBox(width: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset('assets/b2.JPG'),
            Image.asset('assets/b3.JPG'),
            ],
            ),
        ],
      ),
      ),
    );
  }
}


