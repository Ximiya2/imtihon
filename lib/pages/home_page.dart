
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon/items/contacts_item.dart';
import 'package:imtihon/pages/add_page.dart';
import 'package:imtihon/states.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Contacts', style: TextStyle(fontSize: 20, color: Colors.black),),
        actions: [
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.search,color: Colors.black,)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: Colors.black,)),
        ],
      ),
      body: Center(
        child:
        //contactList == null ?
        // Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Image(image: AssetImage('assets/images/Vector.png')),
        //       Text(
        //         'You have no contacts yet',
        //         style: TextStyle(
        //           fontSize: 16
        //         ),
        //       )
        //     ],
        //   )
        //     :
        Column(
            children: [
              SizedBox(
                height: 710,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                  itemCount: contactList.length,
                    itemBuilder: (context, index) {
                    return ContactItem(
                        context : context,
                        contact: contactList[index]);

                    }),
              )
            ],
          ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  AddPage()),
          );
        },
        child: Icon(Icons.add, size: 30,),
      ),
    );
  }
}
