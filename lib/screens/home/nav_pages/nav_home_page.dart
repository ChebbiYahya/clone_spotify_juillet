import 'package:flutter/material.dart';

import '../../../models/music_model.dart';
import '../components/nouveatue_widget.dart';
import '../components/trending_widget.dart';

class NavHomePage extends StatelessWidget {
  const NavHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Made for you",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_rounded),
                ),
                // SizedBox(width: 5),
                IconButton(onPressed: () {}, icon: Icon(Icons.replay_rounded)),
                // SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings_rounded),
                ),
              ],
            ),

            Container(
              height: 150,

              child: ListView.builder(
                itemCount: musicList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    ((context, index) =>
                        NouveauteWidget(musicModel: musicList[index])),
              ),
            ),

            Container(
              height: 150,

              child: ListView.builder(
                itemCount: trendingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    ((context, index) =>
                        NouveauteWidget(musicModel: trendingList[index])),
              ),
            ),

            Text(
              "Trending now",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ListView.builder(
              itemCount: musicList.length,
              scrollDirection: Axis.vertical,
              shrinkWrap:
                  true, //La ListView s’ajuste à la taille totale de ses enfants
              physics:
                  NeverScrollableScrollPhysics(), //Désactive le scroll de la ListView
              itemBuilder:
                  ((context, index) =>
                      TrendingWidget(musicModel: musicList[index])),
            ),
          ],
        ),
      ),
    );
  }
}
