class AppState {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Versat, Let's Shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people to connect with stores nearby.",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "It's the best way you can shop. \nSupport Small businesses around you",
      "image": "assets/images/splash_3.png"
    },
  ];
  UserC user;

}

class UserC{
  String userName;
  String userPhotoUrl;
  String userId;
  String userMail;
  List<Map<String, String>> userAdresses;

}
class ProductC{
  String productName;
  String productPhotoUrl;
  String productId;
  int productPrice;
  int productOldPrice;
  String productDetails;
  bool inWishlist(userId){
    
  }
}