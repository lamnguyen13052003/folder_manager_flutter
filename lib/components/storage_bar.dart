import 'package:flutter/material.dart';

class StorageBar extends StatelessWidget {
  final double sourses, docs, images, videos;

  const StorageBar(
      {super.key,
      this.sourses = 0.4,
      this.docs = 0.2,
      this.images = 0.1,
      this.videos = 0.1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Storage ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextSpan(
                    text: '9.1/15',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text("Upgrade",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.w800)))
          ],
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;
            return SizedBox(
              width: constraints.maxWidth,
              child: Row(
                children: <Widget>[
                  Container(
                    width: maxWidth * sourses,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Container(
                    width: maxWidth * docs,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Container(
                    width: maxWidth * images,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Container(
                    width: maxWidth * videos,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Container(
                    width: maxWidth * (1 - sourses - docs - images - videos),
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
