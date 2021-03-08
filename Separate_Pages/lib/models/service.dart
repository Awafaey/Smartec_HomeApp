import 'package:flutter/material.dart';

class Service {
  Service({
    @required this.name,
    @required this.icon,
    this.status = false,
  });
  String name;
  IconData icon;
  bool status;

  static List<Service> getHomeService() {
    List<Service> services = [
//      Service(name: 'Smart TV', icon: Icons.live_tv),
      Service(name: 'Lighting', icon: Icons.lightbulb),
//      Service(name: 'Wifi', icon: Icons.wifi, status: true),
      Service(name: 'AC', icon: Icons.ac_unit),
      Service(name: 'Add More', icon: Icons.add_circle),
    ];
    return services;
  }
}
