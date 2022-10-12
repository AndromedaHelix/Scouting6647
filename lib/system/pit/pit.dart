class Pit {
  String? number;
  String? name;
  String? chassis;
  String? wheelType;

  Pit({required this.number, required this.name, required this.chassis, required this.wheelType});

  @override
  String toString() =>
      'Pit{number: $number, name: $name, chassis: $chassis, wheelType: $wheelType}';
  
  factory Pit.fromGsheets(dynamic json) {
    return Pit(
      number : json["Number"],
      name : json['Name'],
      chassis :  json['Chassis type'],
      wheelType:  json['Wheel type'],
    );
  }

  Map<String, dynamic> toGsheets() {
    return {
      'Number': number,
      'Name': name,
      'Chassis type': chassis,
      'Wheel type': wheelType,
    };
  }

  Map<String, dynamic> toList(){
    return {
      'Number' : number,
      'Name' : name,
      'Image' : "https://4.bp.blogspot.com/-3uyUTVhvMuo/WjAGEF31DhI/AAAAAAAAAEU/6EurwWD_ebc8o5bFfWoclQuhjSm1Aj5sQCK4BGAYYCw/s1600/FRC_Logo.svgS.jpg",
    };
  }
}
