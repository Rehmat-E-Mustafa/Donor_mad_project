import 'package:flutter/material.dart';
import 'package:get_started/modules/ngo_box.dart';
import 'package:get_started/modules/search_bar.dart';
import 'package:get_started/modules/category_row.dart';

class DonorPage extends StatefulWidget {
  const DonorPage({Key? key,}) : super(key: key);

  final String name = 'Rehmat';
  @override
  _DonorPageState createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width,70),
        child: AppBar(
          backgroundColor: Colors.teal,
            title:  Padding(
              padding: const EdgeInsets.only(top: 18),
              child: SizedBox(
                height: 80,
                child: ListTile(
                    title: Text('Hey, '+widget.name,style: const TextStyle(
                      fontSize: 30,color: Colors.white,
                    ),),
                    subtitle: const Text("let's spread some goodness",style: TextStyle(
                      fontSize: 18,color: Colors.black38,
                    ),),
                  ),
              ),
            ),
            ),
          ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: const Icon(Icons.arrow_back),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title:  Text('Home Page'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title:  Text('Profile'),
            ),
            const ListTile(
              leading:  Icon(Icons.subdirectory_arrow_left),
              title:  Text('Logout'),
            ),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Center(
            child: SearchBar(),
          ),


          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20),
            child: const Text('Categories',textAlign: TextAlign.left,style: TextStyle(
              fontSize: 30,color: Colors.white
            ),),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const[
                SizedBox(width: 25,),
                CategoryRow(imageUrl: 'child.png',category: 'Orphans'),
                SizedBox(width: 25,),
                CategoryRow(imageUrl: 'animal.png',category: 'Animals'),
                SizedBox(width: 25,),
                CategoryRow(imageUrl: 'health.png',category: 'Health'),
                SizedBox(width: 25,),
                CategoryRow(imageUrl: 'education.png',category: 'Education'),
                SizedBox(width: 25,),
                CategoryRow(imageUrl: 'food.png',category: 'Food'),
                SizedBox(width: 25,),
                CategoryRow(imageUrl: 'forest.png',category: 'Forest'),

              ],
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height*.5,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Trending',style: TextStyle(
                        fontSize: 20,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text('More',style: TextStyle(
                            fontSize: 20
                          ),),
                          Icon(Icons.arrow_drop_down,size: 30,)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: MediaQuery.of(context).size.height*.43,
                  child: SingleChildScrollView(
                    child: Column(
                      children: const[
                         SizedBox(height: 10,),
                        NgoBox(Ngoimage: 'jungle.png', daysLeft: 2, NeedLeft: 50, compaingTitle: 'Donate for Animals', percentage: .9),
                        SizedBox(height: 15,),
                        NgoBox(Ngoimage: 'jungle.png', daysLeft: 2, NeedLeft: 50, compaingTitle: 'Donate for Animals', percentage: .9),
                        SizedBox(height: 15,),
                        NgoBox(Ngoimage: 'jungle.png', daysLeft: 2, NeedLeft: 50, compaingTitle: 'Donate for Animals', percentage: .9),
                        SizedBox(height: 15,),
                        NgoBox(Ngoimage: 'jungle.png', daysLeft: 2, NeedLeft: 50, compaingTitle: 'Donate for Animals', percentage: .9),
                        SizedBox(height: 15,),
                        NgoBox(Ngoimage: 'jungle.png', daysLeft: 2, NeedLeft: 50, compaingTitle: 'Donate for Animals', percentage: .9),
                      ],
                    ),

                  ),

                ),
              ],
            ),
          )
        ],
      )

    );
  }
}
