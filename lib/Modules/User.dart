class User {
  String name;
  String homeAddress;
  String number;
  double bill=0;

  User({this.name,this.homeAddress,this.number});
  void setBill(double bill)
  {
    this.bill=bill;
  }

}