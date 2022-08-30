import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesList = ['Top Recommended', 'Pizza', 'Coca Cola', 'Beer'];
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 5,
                    top: 5,
                    bottom: 10,
                  ),
                  padding: EdgeInsets.only(right: 10, left: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: currentSelect == index
                          ? Color.fromARGB(255, 234, 206, 204)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Text(categoriesList[index],
                      style: TextStyle(
                          color: currentSelect == index
                              ? Colors.black
                              : Colors.grey,
                          fontSize: currentSelect == index ? 16 : 15,
                          fontWeight: currentSelect == index
                              ? FontWeight.bold
                              : FontWeight.normal)),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: categoriesList.length),
    );
  }
}
