import 'package:flutter/material.dart';
import 'package:sele_villa_emomerse/screen/detail_page.dart';
import 'package:sele_villa_emomerse/model/food_model.dart';

class RecommendListFoods extends StatelessWidget {
  final recommend = Recomandfoods.generateRecommend();
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 300,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detai(
                                house: recommend[index],
                              )));
                },
                child: Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    padding: EdgeInsets.only(top: 10),
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: Stack(
                      children: [
                        Column(children: [
                          Image.asset(
                            recommend[index].imageUrl,
                            width: 160,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            recommend[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${recommend[index].price}",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ],
                    )),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 30,
              ),
          itemCount: recommend.length),
    );
  }
}
