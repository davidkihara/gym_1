import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_1/graph.dart';
import 'package:gym_1/screens/welcome/activity_record/activity_record.dart';
import 'package:gym_1/screens/welcome/resources/app_dimens.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0:
        // Navigate to HomeScreen
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        // Navigate to SearchScreen
        // Navigator.pushReplacementNamed(context, '/search');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const ActivityRecord(),
          ),
        );
        break;
      case 2:
        // Navigate to NotificationsScreen
        // Navigator.pushReplacementNamed(context, '/notifications');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello David Kihara",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          _showBottomSheet(context);
                        },
                        child: const Text(
                          "Welcome Back",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          // color: Colors.lightBlueAccent,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_photo.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                          // border: Border.all(
                          //   width: .5,
                          //   color: Colors.green,
                          // ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.amber[400],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                50.0,
                              ),
                            ),
                            border: Border.all(
                              width: .5,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        height: 100,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ruaka",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "12:00 PM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "12 March 2024",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          5,
                                        ),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/clouds.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 10,
                                    bottom: 5,
                                    child: Text(
                                      "18°C",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                    flex: 1,
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Goals Today",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "1221 Kcal",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "kilocalories Burnt",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "My Weight Progress",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Weekly",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            size: 18,
                                            color: Colors.black54,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 200,
                          child: SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            series: <ChartSeries>[
                              // Initialize line series
                              LineSeries<ChartData, String>(
                                  dataSource: [
                                    // Bind data source
                                    const ChartData('Sat', 70),
                                    const ChartData('Sun', 71),
                                    const ChartData('Mon', 71),
                                    const ChartData('Tue', 72),
                                    const ChartData('Wed', 71),
                                    const ChartData('Thu', 70),
                                    const ChartData('Fri', 70)
                                  ],
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today Workouts",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: screenHeight(context) * 0.1,
                width: screenWidth(context),
                child: Card(
                  // color: listCardColor,
                  color: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            flex: 1,
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/images/47188.svg",
                                color: Colors.lightBlueAccent,
                              ),
                            )),
                        const Flexible(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Muscle Builder",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                "12 Videos | 1 hr 45 min",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircularProgressIndicator(
                                  value: 0.6,
                                  strokeWidth: 8.0,
                                  backgroundColor: Colors.lightBlueAccent[100],
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                    Colors.lightBlue,
                                  ),
                                ),
                                const Icon(
                                  Icons.play_arrow,
                                  size: 20,
                                  color: Colors.lightBlue,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: screenHeight(context) * 0.1,
                width: screenWidth(context),
                child: Card(
                  // color: listCardColor,
                  color: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            flex: 1,
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/images/1297690.svg",
                                color: Colors.lightBlueAccent,
                              ),
                            )),
                        const Flexible(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight Loss",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                "7 Videos | 1 hr 15 min",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircularProgressIndicator(
                                  value: 0.45,
                                  strokeWidth: 8.0,
                                  backgroundColor: Colors.lightBlueAccent[100],
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                    Colors.lightBlue,
                                  ),
                                ),
                                const Icon(
                                  Icons.play_arrow,
                                  size: 20,
                                  color: Colors.lightBlue,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Acccount',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: screenHeight(context) * .5,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: const Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Activity Record',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "March 11 2021",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    dateContainer(
                      letter: 'S',
                      number: '10',
                      dcolor: Colors.lightBlueAccent,
                    ),
                    dateContainer(
                      letter: 'M',
                      number: '11',
                      dcolor: Colors.blue,
                    ),
                    dateContainer(
                      letter: 'T',
                      number: '12',
                      dcolor: Colors.lightBlueAccent,
                    ),
                    dateContainer(
                      letter: 'W',
                      number: '13',
                      dcolor: Colors.lightBlueAccent,
                    ),
                    dateContainer(
                      letter: 'T',
                      number: '14',
                      dcolor: Colors.lightBlueAccent,
                    ),
                    dateContainer(
                      letter: 'F',
                      number: '15',
                      dcolor: Colors.lightBlueAccent,
                    ),
                    dateContainer(
                      letter: 'S',
                      number: '16',
                      dcolor: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Today\'s Report",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ReportContainer(
                        rcolor: Colors.lightBlueAccent,
                        title: 'Kcal Burnt',
                        text: '321 Kcal',
                        icon: Icon(
                          Icons.fireplace_outlined,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      child: ReportContainer(
                        rcolor: Colors.purpleAccent,
                        title: 'Heart Rate',
                        text: '80 Bpm',
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ReportContainer(
                        rcolor: Colors.redAccent,
                        title: 'Protein',
                        text: '20.5 g',
                        icon: Icon(
                          Icons.flash_on_outlined,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      child: ReportContainer(
                        rcolor: Colors.orangeAccent,
                        title: 'Steps',
                        text: '1237 Steps',
                        icon: Icon(
                          Icons.directions_walk_outlined,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class ReportContainer extends StatelessWidget {
  final Color rcolor;
  final String title;
  final String text;
  final Icon icon;
  const ReportContainer({
    super.key,
    required this.rcolor,
    required this.title,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: rcolor,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(child: Center(child: icon))
          ],
        ),
      ),
    );
  }
}

class dateContainer extends StatelessWidget {
  final String letter;
  final String number;
  final Color dcolor;
  const dateContainer({
    super.key,
    required this.letter,
    required this.number,
    required this.dcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 40,
        decoration: BoxDecoration(
          color: dcolor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              letter,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            Text(
              number,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ],
        ));
  }
}

class ChartData {
  const ChartData(this.x, this.y);
  final String x;
  final double? y;
}
