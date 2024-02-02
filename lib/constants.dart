import 'package:flutter/material.dart';

import 'model/property_model.dart';

List<Property> properties = [
  Property(
    propertyId: 1,
    propertyName: 'Cozy Apartment',
    image:
        'https://images.pexels.com/photos/4258279/pexels-photo-4258279.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    numberOfBedrooms: 2,
    numberOfBathrooms: 1,
    sqft: 1200,
    shortDescription: 'A cozy apartment in the heart of the city',
    description:
        'Enjoy city living in this comfortable apartment.Experience the convenience of city living in this stylish and compact urban studio..',
    price: 120000,
  ),
  Property(
    propertyId: 2,
    propertyName: 'Luxurious Penthouse',
    image:
        'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    numberOfBedrooms: 4,
    numberOfBathrooms: 3,
    sqft: 3500,
    shortDescription: 'Experience luxury in this stunning penthouse',
    description:
        'Indulge in the opulence of this high-end penthouse with breathtaking views.Experience the convenience of city living in this stylish and compact urban studio..',
    price: 750000,
  ),
  Property(
    propertyId: 3,
    propertyName: 'Charming Cottage',
    image:
        'https://images.pexels.com/photos/4469133/pexels-photo-4469133.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    numberOfBedrooms: 3,
    numberOfBathrooms: 2,
    sqft: 1800,
    shortDescription: 'A charming cottage surrounded by nature',
    description:
        'Escape to the countryside in this delightful cottage with a peaceful setting.Experience the convenience of city living in this stylish and compact urban studio..',
    price: 200000,
  ),
  Property(
    propertyId: 4,
    propertyName: 'Modern Townhouse',
    image:
        'https://images.pexels.com/photos/3958958/pexels-photo-3958958.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    numberOfBedrooms: 3,
    numberOfBathrooms: 2,
    sqft: 2200,
    shortDescription: 'A modern townhouse with sleek design',
    description:
        'Live in style with this contemporary townhouse featuring modern amenities.Experience the convenience of city living in this stylish and compact urban studio..',
    price: 280000,
  ),
  Property(
    propertyId: 5,
    propertyName: 'Lakefront Retreat',
    image:
        'https://images.pexels.com/photos/5997996/pexels-photo-5997996.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    numberOfBedrooms: 5,
    numberOfBathrooms: 4,
    sqft: 4000,
    shortDescription: 'A stunning lakefront property for relaxation',
    description:
        'Unwind in this peaceful retreat with panoramic views of the lake and surrounding nature.Experience the convenience of city living in this stylish and compact urban studio..',
    price: 500000,
  ),
  Property(
    propertyId: 6,
    propertyName: 'Urban Studio',
    image:
        'https://images.pexels.com/photos/5178034/pexels-photo-5178034.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    numberOfBedrooms: 1,
    numberOfBathrooms: 1,
    sqft: 800,
    shortDescription: 'An urban studio for modern city living',
    description:
        'Experience the convenience of city living in this stylish and compact urban studio.Unwind in this peaceful retreat with panoramic views of the lake and surrounding nature',
    price: 80000,
  ),
];

Widget icontext({required IconData iconData, required int numbers}) {
  return Row(
    children: [
      Icon(
        iconData,
        size: 15,
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        numbers.toString(),
        style: TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
      )
    ],
  );
}

Color purple = Color.fromRGBO(89, 33, 243, 1);
