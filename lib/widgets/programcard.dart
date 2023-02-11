import 'package:flutter/material.dart';

List<ProgramCard> programCards = const [
  ProgramCard(
    programImage: 'peace.png',
    firstText: 'Diabetes',
    secondText: 'Test & Trea...',
  ),
  ProgramCard(
    programImage: 'petal.png',
    firstText: '10,000',
    secondText: 'Women Ini...',
  ),
  ProgramCard(
      programImage: 'mansui.jpeg',
      firstText: 'Nicholas',
      secondText: 'Walker Chi...'),
  ProgramCard(
      programImage: 'mansui.jpeg',
      firstText: 'Nicholas',
      secondText: 'Walker Chi...'),
];

class ProgramCard extends StatelessWidget {
  final String programImage;
  final String firstText;
  final String secondText;
  const ProgramCard({
    required this.programImage,
    required this.firstText,
    required this.secondText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 140.0,
        width: 100.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/$programImage',
              height: 70.0,
              width: 70.0,
            ),
            const SizedBox(height: 5.0),
            Text(
              firstText,
              style: const TextStyle(fontSize: 12.0, color: Colors.black54),
            ),
            Text(
              secondText,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.black54,
              ),
            )
          ],
        ),
      ),
    );
  }
}
