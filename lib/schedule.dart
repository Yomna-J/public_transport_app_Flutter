class Schedule {
  String fromTime;
  String toTime;
  String location;
  String destination;
  double price;
  Schedule({
    required this.fromTime,
    required this.toTime,
    required this.location,
    required this.destination,
    required this.price,
  });

  factory Schedule.fromJson(Map<String, dynamic> parsedJson) {
    return Schedule(
      fromTime: parsedJson['fromTime'].toString(),
      toTime: parsedJson['toTime'].toString(),
      location: parsedJson['location'].toString(),
      destination: parsedJson['destination'].toString(),
      price: parsedJson['price'].toDouble(),
    );
  }
}
