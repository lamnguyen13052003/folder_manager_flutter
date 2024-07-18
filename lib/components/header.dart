import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(15),
      height: 92,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Riotters',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                'Team folder',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(13))),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.white,
                  padding: const EdgeInsets.all(5),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(13))),
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                  color: Colors.white,
                  padding: const EdgeInsets.all(5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
