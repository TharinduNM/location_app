import 'locationFact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location(
      {this.id,
      this.name,
      this.imagePath,
      this.userItinerarySummary,
      this.tourPackageName,
      this.facts});

  static Location fetchById(int locationID) {
    List<Location> locationList = fetchAll();
    for (var i = 0; i < locationList.length; i++) {
      if (locationID == locationList[i].id) {
        return locationList[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: "Sigiriya",
          imagePath: "assets/images/IMG_8695.JPG",
          userItinerarySummary: 'Day 1: 4pm - 5pm',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact("Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "How to get there", "by foot will be insanely hard and easy"),
            LocationFact("Not Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "Not How to get there", "by foot will be insanely hard and easy"),
          ]),
      Location(
          id: 2,
          name: "Colombo",
          imagePath: "assets/images/shoe.png",
          userItinerarySummary: 'Day 1: 4pm - 5pm',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact("Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "How to get there", "by foot will be insanely hard and easy"),
            LocationFact("Not Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "Not How to get there", "by foot will be insanely hard and easy"),          ]),
      Location(
          id: 3,
          name: "Matara",
          imagePath: "assets/images/hotel.jpg",
          userItinerarySummary: 'Day 1: 4pm - 5pm',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact("Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "How to get there", "by foot will be insanely hard and easy"),
          ]),
      Location(
          id: 4,
          name: "Kandy",
          imagePath: "assets/images/00.jpg",
          userItinerarySummary: 'Day 1: 4pm - 5pm',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact("Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "How to get there", "by foot will be insanely hard and easy"),
          ]),
      Location(
          id: 5,
          name: "Galle",
          imagePath: "assets/images/IMG_8695.JPG",
          userItinerarySummary: 'Day 1: 4pm - 5pm',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact("Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "How to get there", "by foot will be insanely hard and easy"),
          ]),
      Location(
          id: 6,
          name: "Gampaha",
          imagePath: "assets/images/IMG_8695.JPG",
          userItinerarySummary: 'Day 1: 4pm - 5pm',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact("Summary",
                "this is the largest rock in the world. this rock was cut in half by king Kashyapa"),
            LocationFact(
                "How to get there", "by foot will be insanely hard and easy"),
          ]),
    ];
  }
}
