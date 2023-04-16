import 'package:flutter/material.dart';

class ResultPageList extends StatelessWidget {
  final String everydayLife;
  final String character;
  final String rhythmOfDailyLife;
  final String food;
  final String breedingSeason;
  final String bodyLength;
  final String origin;
  final String bodyColor;
  final String residence;
  final String habitatDepth;
  const ResultPageList({
    super.key,
    required this.everydayLife,
    required this.character,
    required this.rhythmOfDailyLife,
    required this.food,
    required this.breedingSeason,
    required this.bodyLength,
    required this.origin,
    required this.bodyColor,
    required this.residence,
    required this.habitatDepth,
  });
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(children: [
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "日常",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              everydayLife,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "性格",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              character,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "生活リズム",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              rhythmOfDailyLife,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "食べ物",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              food,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "繁殖時期",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              breedingSeason,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "体長",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              bodyLength,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "原産",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              origin,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "体の色",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              bodyColor,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "在住",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              residence,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
        const SizedBox(height: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        )
      ]),
      Column(children: [
        const SizedBox(height: 8),
        Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 23,
            child: const Text(
              "生息水深",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 23,
            child: Text(
              habitatDepth,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
      ]),
    ]);
  }
}
