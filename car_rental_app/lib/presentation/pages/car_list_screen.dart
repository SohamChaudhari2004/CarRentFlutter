import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarlistScreen extends StatefulWidget {
  @override
  _CarlistScreenState createState() => _CarlistScreenState();
}

class _CarlistScreenState extends State<CarlistScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<Car> cars = [
    Car(model: "Fortuner", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Toyota", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Mercedes", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "BMW", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Audi", distance: 870, fuelCapacity: 50, pricePerHour: 45),
  ];

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Your Car"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        controller: _scrollController,
        physics: BouncingScrollPhysics(), // Adds smooth bouncing effect
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 500), // Animation duration
            curve: Curves.easeInOut, // Smooth animation effect
            child: CarCard(car: cars[index]),
          );
        },
      ),
    );
  }
}
