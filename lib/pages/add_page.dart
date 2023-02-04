import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon/functions.dart';
import 'package:imtihon/models/cotact_model.dart';
import 'package:imtihon/states.dart';

class AddPage extends StatefulWidget {
   AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  TextEditingController nameControler = TextEditingController();
  TextEditingController surnameControler  = TextEditingController();
  TextEditingController numberControler  = TextEditingController();

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: Text('Add', style: TextStyle(fontSize: 20, color: Colors.black),),
        actions: [
          IconButton(
              onPressed: (){
                var contact = ContactModel( nameControler.text, surnameControler.text, numberControler.text);
                  contactList.add(contact);
                  Navigator.pop(context);
              },
              icon: Icon(Icons.check,color: Colors.black,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Text('Name', style: TextStyle(fontSize: 16, color: Colors.black),),
            SizedBox(height: 5,),
            TextFormField(
              controller: nameControler,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: 'Enter name'
              ),
              onChanged: (val){
                if(val != ''){
                  searcheContact(val);
                } else {
                  searchedList.clear();
                }
                setState(() { });
                ;                        },
            ),
            SizedBox(height: 25,),
            Text('Surname', style: TextStyle(fontSize: 16, color: Colors.black),),
            SizedBox(height: 5,),
            TextFormField(
              controller: surnameControler,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  hintText: 'Enter surname'
              ),
              onChanged: (val){
                if(val != ''){
                  searcheContact(val);
                } else {
                  searchedList.clear();
                }
                setState(() { });
                ;                        },
            ),
            SizedBox(height: 25,),
            Text('Phone number', style: TextStyle(fontSize: 16, color: Colors.black),),
            SizedBox(height: 5,),
            TextFormField(
              controller: numberControler,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '+998 _ _  _ _ _  _ _  _ _',
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
              ),
              onChanged: (val){
                if(val != ''){
                  searcheContact(val);
                } else {
                  searchedList.clear();
                }
                setState(() { });
                ;                        },
            ),
          ],
        ),
      ),
    );
  }
}
