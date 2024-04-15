import 'package:flutter/material.dart';
import 'package:ghibli_movie4/screens/isDownload.dart';
import 'package:ghibli_movie4/screens/watchLater.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int iscurrentIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    const WatchLater(),
    const MyDownload(),
  ];

  final List<String> movies = [
    "images/ghibli1.jpg",
    "images/ghibli2.jpg",
    "images/ghibli3.jpg",
    "images/ghibli4.jpg",
    "images/ghibli5.jpg",
    "images/ghibli6.jpg",
    "images/ghibli7.jpg",
    "images/ghibli8.jpg",
    "images/ghibli9.jpg",
    "images/ghibli10.jpg",
  ];

  final List<String> movieList = [
    "images/movieList/ghibli11.jpg",
    "images/movieList/ghibli12.jpg",
    "images/movieList/ghibli13.jpg",
    "images/movieList/ghibli14.jpg",
    "images/movieList/ghibli15.jpg",
    "images/movieList/ghibli16.jpg",
    "images/movieList/ghibli17.jpg",
    "images/movieList/ghibli18.jpg",
    "images/movieList/ghibli19.jpg",
    "images/movieList/ghibli20.jpg",
    "images/movieList/ghibli21.jpg",
    "images/movieList/ghibli22.jpg",
  ];

  final List<String> movieName = [
    "Graves of the Fireflies",
    "Porco Rosso",
    "The Wind Rises",
    "Princess Mononoke",
    "Howl's Moving Castle",
    "When Marnie Was There",
    "Nausicaä of the Valley of the Wind",
    "My Neighbor Totoro",
    "Castle in the Sky",
    "Ponyo",
    "The Secret World of Arrietty",
    "Spirited Away",
  ];

  final List<String> movieRating = [
    "8.5",
    "7.7",
    "7.8",
    "8.3",
    "8.2",
    "7.6",
    "8.0",
    "8.1",
    "8.0",
    "7.6",
    "7.6",
    "8.6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 36, 39),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.sort,
          color: Color(0xFFDDD9D9),
        ),
        title: Image.asset(
          'images/Logos/studioGhibli_logo.png',
          color: Colors.white,
          width: 120,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.search,
              color: Color(0xFFDDD9D9),
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: iscurrentIndex,
        children: [
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
                    child: Text(
                      "Watch Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xFFDDD9D9),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movies.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              movies[index],
                              width: 110,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
                    child: Text(
                      "More Movies",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Color(0xFFDDD9D9),
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: movieList.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  movieList[index],
                                  fit: BoxFit.cover,
                                  width: 100,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    width: 250,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            movieName[index],
                                            style: const TextStyle(
                                              color: Color(0xFFDDD9D9),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 5),
                                          child: Container(
                                            child: const Text(
                                              "Studio Ghibli, Inc. (Japanese: 株式会社スタジオジブリ, Hepburn: Kabushiki-gaisha Sutajio Jiburi).",
                                              style: TextStyle(
                                                color: Color(0xFFDDD9D9),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 4),
                                              child: Container(
                                                child: Text(
                                                  movieRating[index],
                                                  style: const TextStyle(
                                                    color: Color(0xFFDDD9D9),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star_rate,
                                              color: Color.fromARGB(
                                                  255, 224, 212, 99),
                                              size: 16,
                                            ),
                                            const Icon(
                                              Icons.star_rate,
                                              color: Color.fromARGB(
                                                  255, 224, 212, 99),
                                              size: 16,
                                            ),
                                            const Icon(
                                              Icons.star_rate,
                                              color: Color.fromARGB(
                                                  255, 224, 212, 99),
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 13,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: iscurrentIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Iconsax.home,
              color: Color(0xFFEEEEEE),
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.note_favorite,
              color: Color(0xFFEEEEEE),
              size: 20,
            ),
            label: 'Watch Later',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download,
              color: Color(0xFFEEEEEE),
              size: 20,
            ),
            label: 'Download',
          ),
        ],
        onTap: (index) {
          setState(() {
            iscurrentIndex = index;
          });

          // if (index == 1) {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => WatchLater()),
          //   );
          // } else if (index == 2) {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => MyDownload()),
          //   );
          // }
        },
      ),
    );
  }
}
