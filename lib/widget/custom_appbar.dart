import 'package:flutter/material.dart';
import 'package:sele_villa_emomerse/screen/profile_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'images/bunthoeun.jpg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
