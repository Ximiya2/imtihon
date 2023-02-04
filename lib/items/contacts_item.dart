import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/cotact_model.dart';
import '../pages/profil_page.dart';

Widget ContactItem({
  required BuildContext context,
  required ContactModel contact,

}) {
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilPage()),
      );
    },
    child: Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height:42,
            width: 42,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/Vector (1).png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      contact.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      contact.surname,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
                Text(
                  contact.number,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.call, color: Colors.green,size: 27,)
          )
        ],
      ),
    ),
  );
}