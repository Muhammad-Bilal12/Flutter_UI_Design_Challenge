import 'dart:ui';

import 'package:flutter/material.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({Key? key}) : super(key: key);

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  PageController? _pageController;
  int totalPage = 4;

  @override
  void initState() {
    // TODO: implement initState

    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        children: [
          pageMaker(
            page: 1,
            img:
                "https://images.unsplash.com/photo-1612806527197-42af2b64884a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
            title: "Rotterdam, Pays-Bas",
            description:
                "Rotterdam is a major port city in the Dutch province of South Holland. The Maritime Museum's vintage ships and exhibits trace the city's seafaring history. The 17th-century Delfshaven neighborhood is home to canalside shopping and Pilgrim Fathers Church, where pilgrims worshiped before sailing to America. After being almost completely reconstructed following WWII, the city is now known for bold, modern architecture.",
          ),
          pageMaker(
            page: 2,
            img:
                "https://images.unsplash.com/photo-1572941949799-99eb48d9c2e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
            title: "Lal Qilla",
            description:
                "Lal Qila Karachi, A restaurant depicting the legendary grandeur of splendid and noble past. A vivid and conspicuous realization of the glory of our brilliant esthetical essence",
          ),
          pageMaker(
              page: 3,
              img:
                  "https://images.unsplash.com/photo-1602491453631-e2a5ad90a131?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
              title: "White Tiger",
              description:
                  "Today there are no white tigers in the wild. The last one was shot by a trophy hunter in 1958. There are 200 white tigers in captivity, the product of nine generations of inbreeding. The market value of a white tiger cub remains at previous levels—and the breeding continues."),
          pageMaker(
            page: 4,
            img:
                "https://images.unsplash.com/photo-1535223289827-42f1e9919769?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            title: "Augmented Reality",
            description:
                "Augmented reality (AR) is an interactive experience of a real-world environment where the objects that reside in the real world are enhanced by computer-generated perceptual information, sometimes across multiple sensory modalities, including visual, auditory, haptic, somatosensory and olfactory",
          )
        ],
      ),
    );
  }

  Container pageMaker({
    required page,
    required img,
    required title,
    required description,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            stops: const [
              0.3,
              0.9,
            ],
            colors: [
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.3),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '$page',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    '/$totalPage',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 24,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 24,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 24,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 24,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          size: 24,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4.0",
                          style: TextStyle(fontSize: 24, color: Colors.white70),
                        ),
                        Text(
                          "(2300)",
                          style: TextStyle(fontSize: 24, color: Colors.white54),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      description,
                      style: const TextStyle(
                          fontSize: 18, height: 1.3, color: Colors.white70),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Read More",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
