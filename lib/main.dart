import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

// ignore: must_be_immutable
class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Points Counter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 42,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$teamA",
                      style: const TextStyle(
                        fontSize: 150,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA = teamA + 1;
                        });
                      },
                      child: const Text(
                        "Add 1 points",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA = teamA + 2;
                        });
                      },
                      child: const Text(
                        "Add 2 points",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA = teamA + 3;
                        });
                      },
                      child: const Text(
                        "Add 3 points",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 42,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$teamB",
                      style: const TextStyle(
                        fontSize: 150,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB = teamB + 1;
                        });
                      },
                      child: const Text(
                        "Add 1 points",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB = teamB + 2;
                        });
                      },
                      child: const Text(
                        "Add 2 points",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 points",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(flex: 2),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 60),
              ),
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
