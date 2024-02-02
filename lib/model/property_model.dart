// ignore_for_file: public_member_api_docs, sort_constructors_first
class Property {
  final int propertyId;
  final String propertyName;
  final String image;
  final int numberOfBedrooms;
  final int numberOfBathrooms;
  final int sqft;
  final String shortDescription;
  final String description;
  final double price;

  Property({
    required this.propertyId,
    required this.propertyName,
    required this.image,
    required this.numberOfBedrooms,
    required this.numberOfBathrooms,
    required this.sqft,
    required this.shortDescription,
    required this.description,
    required this.price,
  });
}
