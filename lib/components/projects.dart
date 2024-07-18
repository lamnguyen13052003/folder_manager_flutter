import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Projects extends StatefulWidget {
  const Projects({
    super.key,
  });

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<String> _directories = [];
  final MethodChannel chanel = const MethodChannel("com.lamnguyen.template1");

  @override
  void initState() {
    super.initState();
    loadDir();
  }

  void loadDir() async {
    List<String>? result = await chanel.invokeListMethod<String>("getListDir");
    if(result != null) {
      setState(() {
        _directories = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          child: Row(
            children: [
              const Expanded(
                child: Text('Projects',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    )),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text("Create now",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w800)))
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: _directories.length,
              itemBuilder: (context, index) {
                final value = _directories[index];
                return ProjectItem(name: value);
              },
            ),
          ),
        )
      ],
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String name;

  const ProjectItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.07),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                const Icon(
                  Icons.folder,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                Text(name)
              ],
            )),
            IconButton(
              iconSize: 15,
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
              ),
            )
          ],
        ),
      ),
    );
  }
}
