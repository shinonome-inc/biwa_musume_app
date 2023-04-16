import 'package:biwa_musume_app/models/biwamusume.dart';
import 'package:flutter/material.dart';

class ResultPageList extends StatelessWidget {
  final Biwamusume biwamusume;
  const ResultPageList({
    super.key,
    required this.biwamusume,
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
              "行動",
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
              biwamusume.herb,
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
              biwamusume.calm,
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
              biwamusume.nocturnalHabit,
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
              biwamusume.carnivorous,
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
              biwamusume.heightText,
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
    ]);
  }
}
