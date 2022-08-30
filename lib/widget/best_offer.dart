import 'package:flutter/material.dart';
import 'package:sele_villa_emomerse/model/food_model.dart';

class BestOffer extends StatefulWidget {
  const BestOffer({Key? key}) : super(key: key);

  @override
  _BestOfferState createState() => _BestOfferState();
}

class _BestOfferState extends State<BestOffer> {
  final listBestOffer = Recomandfoods.generateBestOffer();
  Icon faveriIcon = Icon(Icons.favorite_border);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        // height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Offer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ...listBestOffer
                .map((e) => Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                    decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 3,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage('${e.imageUrl}'),
                                      fit: BoxFit.contain),
                                )),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text('${e.name}'),
                                  Text('${e.subtitle}')
                                ],
                              )
                            ],
                          ),
                          Positioned(
                              right: 0,
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (this.faveriIcon.icon ==
                                          Icons.favorite_border) {
                                        this.faveriIcon = new Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        );
                                      } else {
                                        this.faveriIcon = new Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                        );
                                      }
                                    });
                                  },
                                  icon: faveriIcon))
                        ],
                      ),
                    ))
                .toList()
          ],
        ));
  }
}
