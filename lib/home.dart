import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
   TextEditingController _controllerEdit = TextEditingController();
   String _inputText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coba Fluter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Input:',style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8,
            ),
            TextField(
              controller: _controllerEdit ,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Masukan Text',
              ),
              obscureText: false,
              onChanged: (Text){
                setState(() {
                  _inputText = Text;
                });
              }
            ),
             SizedBox(height: 16),
            Text(
              'Label:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              _inputText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}