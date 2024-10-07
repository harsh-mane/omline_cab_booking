// lib/location_service.dart

import 'package:geolocator/geolocator.dart';

class LocationService {
  // Function to determine the current location of the user
  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, return null
      return null;
    }

    // Check location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Request permissions
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, return null
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied, return null
      return null;
    }

    // Get the current location
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }
}
