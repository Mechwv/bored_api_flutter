// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late WeatherLocationBloc bloc;
//
//   @override
//   void initState() {
//     super.initState();
//     bloc = context.read<WeatherLocationBloc>();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Weather"),
//           leading: const Icon(Icons.home),
//           actions: [
//             IconButton(onPressed: () => bloc.add(const GetWeatherLocationEvent()), icon: const Icon(Icons.refresh)),
//             IconButton(onPressed: () => Navigator.pushNamed(context, "/settings"), icon: const Icon(Icons.settings))
//           ],
//         ),
//         body: _buildBody());
//   }
//
//   Widget _buildBody() {
//     final appTheme = Theme.of(context);
//
//     return BlocBuilder<WeatherLocationBloc, WeatherLocationState>(
//       builder: (context, state) {
//         if (state is WeatherLocationLoadingState) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         if (state is WeatherLocationErrorState) {
//           return Center(
//               child: Text(
//                   state.message,
//                   style: appTheme.textTheme.titleLarge?.copyWith(color: appTheme.colorScheme.primary)
//               )
//           );
//         }
//         if (state is WeatherLocationSuccessState) {
//           return _buildWeatherScreen(state.weatherLocationDto);
//         }
//         return Center(
//           child: ElevatedButton(
//             child: const Text("Fetch Data"),
//             onPressed: () {
//               bloc.add(const GetWeatherLocationEvent());
//             },
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _buildWeatherScreen(WeatherLocationDto weatherInfo) {
//     return SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             MainComponent(
//                 temperature: weatherInfo.currentWeather,
//                 minTemperature: weatherInfo.lowestTemperature,
//                 maxTemperature: weatherInfo.maxTemperature,
//                 weatherDescription: weatherInfo.currentWeatherDescription),
//             HourlyCard(hourlyListInfo: weatherInfo.hours),
//             DailyCard(daysInfo: weatherInfo.days)
//           ],
//         ));
//   }
// }
//
// class BottomNavigation extends StatelessWidget {
//   const BottomNavigation({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }