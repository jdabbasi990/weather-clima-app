import 'package:flutter/material.dart';
import 'package:weather_clima_app/services/weather.dart';
import 'loaction_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationweather: weatherData,
      );
    }));
  }

  // http.Response response = await http.get("api.openweathermap.org/data/2.5/weather?lat=39&lon=139&appid=dd42e88a402933e8d3b2174fa84716c4");

  // this works 'http://api.openweathermap.org/data/2.5/weather?q=london&appid=fbeff81741221174a7e61bbd05a64807'
  //angela key default b6907d289e10d714a6e88b30761fae22

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white70,
          size: 100,
        ),
      ),
    );
  }
}
