import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  final List<String> _cities = [
    'Kathmandu',
    'Pokhara',
    'Bhaktapur',
    'Lalitpur',
    'Biratnagar',
    'Nepalgunj',
    'Butwal',
    'Dharan',
    'Janakpur',
  ];
  final List<String> _areas = [
    'Thamel',
    'Patan',
    'Bhaktapur Durbar Square',
    'Swayambhunath',
    'Boudhanath',
    'Pashupatinath',
    'Nagarkot',
    'Chandragiri',
  ];
  String? _selectedCity;
  String? _selectedArea;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(Images.number, fit: BoxFit.cover)),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: InkWell(
              child: Icon(Icons.arrow_back_ios_new),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Images.googleMap, width: 250),
                  Text(
                    'Select your location',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Swithch on your location to Stay in tune with \n what\'s happening in your area',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 100),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Your City'),
                  ),
                  DropdownButton<String>(
                    value: _selectedCity,
                    hint: Text('Select your city'),
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    isExpanded: true,
                    underline: Container(height: 1, color: Colors.black),
                    items:
                        _cities.map((city) {
                          return DropdownMenuItem<String>(
                            child: Text(city),
                            value: city,
                          );
                        }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Your Area'),
                  ),
                  DropdownButton<String>(
                    value: _selectedArea,
                    hint: Text('Select your area'),
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    isExpanded: true,
                    underline: Container(height: 1, color: Colors.black),
                    items:
                        _areas.map((city) {
                          return DropdownMenuItem<String>(
                            child: Text(city),
                            value: city,
                          );
                        }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedArea = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  WideButton(name: 'Submit', onPressed: () {
                    Navigator.pushNamed(context, RoutesNames.login);
                  }),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
