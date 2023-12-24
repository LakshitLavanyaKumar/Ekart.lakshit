import 'package:app_dev_cc_course/eKart/properties.dart';
import 'package:flutter/material.dart';

import 'ContactModel.dart';




class Vegetables extends StatefulWidget {

  //   'carrot,20',
  //   'broccoli,30',
  //   'spinach,40',
  //   'onion,50',
  //   'potatoes,50',
  //   'cauliflower,30',
  //   'peas,40',
  //   'cabbage,20',
  // ];

   Vegetables({super.key,
});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
   List<ContactModel> contacts = [
     ContactModel  ('carrot','20',false),
     ContactModel ('broccoli','30',false),
     ContactModel  ('spinach','40',false),
     ContactModel ('onion','50',false),
     ContactModel ('potatoes','50',false),
     ContactModel  ('cauliflower','30',false),
     ContactModel  ('peas','40',false),
     ContactModel  ('cabbage','20',false),
   ];

   List<ContactModel> selectedContacts = List.empty();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Vegetables',
            style: TextStyle(

              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),











      body: SafeArea(
        child: Container(
          child: ListView.builder(itemBuilder:(BuildContext context,int index){
          //return item
            return ContactItem(contacts[index].name, contacts[index].price, contacts[index].isSelected)
          }),
        ),

      ),


























      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {}),

    );



  }

  Widget ContactItem(String name,String price,bool isSelected){
    return ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.green[700],
               child: Icon(Icons.person_outline_outlined, color: Colors.white),
             ),

    );
  }
}