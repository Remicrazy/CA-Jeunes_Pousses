class Child {
  final String firstname;
  final String lastname;
  final String anniversary;
  final String banknumber;

  Child({this.firstname, this.lastname, this.anniversary, this.banknumber});

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastnaame': lastname,
      'anniversary': anniversary,
      'banknumber': banknumber,
    };
  }

  @override
  String toString() {
    return 'Child{ firstname: $firstname, lastnaame: $lastname, anniversary: $anniversary, banknumber: $banknumber}';
  }

  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
        firstname: json['firstname'],
        lastname: json['lastname'],
        anniversary: json['anniversary'].toString(),
        banknumber: json['banknumber'].toString());
  }
}
