import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarlistScreen extends StatelessWidget {
  final List<Car> cars= [
    Car(model: "Fortuner", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Toyota", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Mercedes", distance: 870, fuelCapacity: 50, pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context , index){
          return CarCard(car: cars[index]);
        }
      ),
    );
  }
}