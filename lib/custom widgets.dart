
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[900],
      centerTitle: true,
      elevation: 0,
      title:const  Text("Manage Store",style: TextStyle(),),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue[900],
      currentIndex: 3,
      selectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label:  "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.backpack_outlined),label: "Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.crop_square_sharp),label: "Products"),
        BottomNavigationBarItem(icon: Icon(Icons.layers),label: "Manage"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "Account"),
      ],
    );
  }
}

class GridCard extends StatelessWidget {
  final IconData icondata;
  final Color? containerColor;
 final  String content;
 bool? newstack = false;
   GridCard({Key? key, required this.icondata,this.newstack, required this.containerColor, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Stack(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: containerColor),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Icon(icondata,color: Colors.white,),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(content,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 1)),
                ],
              ),
            if(newstack==true)Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(color: Colors.greenAccent[700]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Text("NEW",style: TextStyle(fontSize:10.5,color: Colors.white),),
                ),
              ),
            ),
          ]
        ),
            // Column(
            //   children: [
            //     Align(
            //       alignment: Alignment.topRight,
            //       child: Container(
            //         decoration: BoxDecoration(color: Colors.green),
            //         child: Text("NEW",style: TextStyle(color: Colors.white),),
            //       ),
            //     )
            //   ],
            // ),
      ),
    ),);
  }
}
