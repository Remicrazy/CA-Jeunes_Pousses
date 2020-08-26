class Parent {
  final String firstname;
  final String lastname;
  final String phonenumber;
  final String banknumber;

  Parent({this.firstname, this.lastname, this.banknumber, this.phonenumber});

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastnaame': lastname,
      'phonenumber': phonenumber,
      'banknumber': banknumber,
    };
  }

  @override
  String toString() {
    return 'Parent{ firstname: $firstname, lastnaame: $lastname, phonenumber: $phonenumber, banknumber: $banknumber}';
  }

  factory Parent.fromJson(Map<String, dynamic> json) {
    return Parent(
        firstname: json['firstname'],
        lastname: json['lastname'],
        phonenumber: json['phonenumber'],
        banknumber: json['banknumber'].toString());
  }
}
