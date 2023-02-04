import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon/models/cotact_model.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {

  late void Function() delete;

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height:84,
                  width: 84,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/images/Vector (1).png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 60,),
                IconButton(
                    onPressed: (){
                      delete;
                    },
                    icon: Icon(Icons.delete,color: Colors.black,)),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.edit,color: Colors.black,))
              ],
            ),
            SizedBox(height: 29,),
            Center(
              child: Text(
                'Abdujabbor Primqulov',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(height: 29,),
            Row(
              children: [
                Text(
                  '+998 33 459 17 08',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(width: 125,),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: Icon(Icons.call, color: Colors.white, size: 20,),
                ),
                SizedBox(width: 17,),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 20,
                  child: Icon(Icons.message,color: Colors.white, size: 20,),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Text(
              'Call history',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Apr 27, 14:16',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          '+998901234567',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Icon(Icons.call_made, size: 12,)
                      ],
                    ),
                  ],
                ),
                Text(
                  'Didn’t connect',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Apr 20, 10:35',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        color: Colors.red
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          '+998901234567',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Icon(Icons.call_made, size: 12,color: Colors.red,)
                      ],
                    ),
                  ],
                ),
                Text(
                  'Didn’t connect',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Apr 27, 14:16',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          '+998901234567',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Icon(Icons.call_made, size: 12,)
                      ],
                    ),
                  ],
                ),
                Text(
                  'Didn’t connect',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Apr 27, 14:16',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          '+998901234567',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Icon(Icons.call_made, size: 12,)
                      ],
                    ),
                  ],
                ),
                Text(
                  'Didn’t connect',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
