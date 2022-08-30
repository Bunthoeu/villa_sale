class Recomandfoods {
  final name;
  final subtitle;
  final imageUrl;
  final dic;
  final double price;
  final int qty;

  Recomandfoods(
      this.name, this.subtitle, this.imageUrl, this.dic, this.price, this.qty);
  static List<Recomandfoods> generateRecommend() {
    return [
      Recomandfoods(
        'Burger and a Coke',
        'Cambodai,Phnom Penh',
        'images/buger.png',
        'To be fair and clear, this is not to say that the beef in your McFeast isnt fresh in terms of sell-by dates (though who knows how long your cheeseburgers been sitting on that shiny shelf waiting for a customer). The change is that the beef will be fresh as in “not frozen',
        12,
        0,
      ),
      Recomandfoods(
          'Villa Tol',
          'Cambodai',
          'images/food.png',
          'To be fair and clear, this is not to say that the beef in your McFeast isnt fresh in terms of sell-by dates (though who knows how long your cheeseburgers been sitting on that shiny shelf waiting for a customer). The change is that the beef will be fresh as in “not frozen',
          12,
          0),
      Recomandfoods(
          'Villa Tol',
          'Cambodai',
          'images/buger.png',
          'To be fair and clear, this is not to say that the beef in your McFeast isnt fresh in terms of sell-by dates (though who knows how long your cheeseburgers been sitting on that shiny shelf waiting for a customer). The change is that the beef will be fresh as in “not frozen',
          12,
          0),
    ];
  }

  static List<Recomandfoods> generateBestOffer() {
    return [
      Recomandfoods('Burger and a Coke', 'Cambodai,Phnom Penh',
          'images/food1.png', '', 12, 0),
      Recomandfoods('Villa Tol', 'Cambodai', 'images/food.png', '', 12, 0),
      Recomandfoods('Villa Tol', 'Cambodai', 'images/buger.png', '', 12, 0),
    ];
  }
}
