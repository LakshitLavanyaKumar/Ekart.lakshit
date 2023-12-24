import 'package:flutter/material.dart';
import 'veg.dart';





class HomePage extends StatelessWidget {
  const HomePage({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Home',
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  color: Colors.white,
          ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [


          //nfs
              SizedBox(height: 15),
              Row(

                children: [
                  Text(
                    '  Hello!',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                  ),
                ],
              ),

              //nfs
              SizedBox(height: 30),

           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Text(
               'lets order something fresh for you....!',
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),



          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return Vegetables();
              },
            )),//grid of items
              child: Container(
                child: Center(
                  child :Image.asset('lib/eKart/veg.jpeg'),


                ),
              ),
          ),

             //nfs
              SizedBox(height: 20),

              //grid of items
              Container(
                child: Center(
                  child :Image.asset('lib/eKart/fruits.jpeg'),


                ),
              ),

              //nfs
              SizedBox(height: 20),



              //nfs


              const Spacer(),
            ],
          ),
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
}