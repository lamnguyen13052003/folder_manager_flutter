import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:folder_manager/components/projects.dart';
import 'package:folder_manager/components/recently_updated.dart';
import 'package:folder_manager/components/storage_bar.dart';

import '../components/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Header(),
            ),
            Expanded(
              child: SizedBox(
                child: BodyHome(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.lightBlue,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: Colors.black54,
            ),
            label: "time",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () async {
                  print("open folder");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.folder,
                  semanticLabel: "box",
                )),
            label: "folder",
          ),
        ],
      ),
    );
  }
}

class BodyHome extends StatelessWidget {
  const BodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: StorageBar(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: RecentlyUpdated(),
          ),
          Expanded(
            child: SizedBox(
              child: Projects(),
            ),
          ),
        ],
      ),
    );
  }
}
