import 'package:flutter/material.dart';

class NameUpdated {
  final String typeDevices, note;

  const NameUpdated({required this.typeDevices, required this.note});
}

class RecentlyUpdated extends StatelessWidget {
  final List<NameUpdated> nameUpdated;

  const RecentlyUpdated(
      {super.key,
      this.nameUpdated = const [
        NameUpdated(typeDevices: "Desktop", note: "sketch"),
        NameUpdated(typeDevices: "Mobile", note: "sketch"),
        NameUpdated(typeDevices: "interaction", note: "prd"),
        NameUpdated(typeDevices: "interaction", note: "prd"),
      ]});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Recently Updated',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: nameUpdated.map((element) {
                return Row(
                  children: [
                    ItemUpdated(
                      typeDevices: element.typeDevices,
                      note: element.note,
                    ),
                    const SizedBox(width: 10),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemUpdated extends StatelessWidget {
  final String typeDevices, note;

  const ItemUpdated({super.key, required this.typeDevices, required this.note});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: const BorderRadius.all(Radius.circular(13))),
            child: Image.asset(
              "assets/images/icons/daimond_icon.png",
              width: 50,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "$typeDevices ",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextSpan(
                text: note,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black.withOpacity(0.9),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
