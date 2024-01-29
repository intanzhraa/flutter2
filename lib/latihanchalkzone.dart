import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ArticleItem {
  final Color color;
  final String image;
  final String text;

  ArticleItem(this.color, this.image, this.text);
}

class LatihanChalkzone extends StatelessWidget {
  final List<ArticleItem> itemArticle = [
    ArticleItem(
        Colors.white,
        "https://paltv.disway.id/upload/c5f08da735e37a6ecfff3b54270615d2.jpeg",
        "ChalkZone adalah serial televisi animasi Amerika. Animasi ini ditayangkan di Global TV pada tahun 2006-2012"),
    ArticleItem(
        Colors.white,
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/95b01bb4-a434-45be-af57-9a7353edf73a/df1we7p-ecce8ffe-0ae8-416c-9e5e-a2b1b68416e3.png/v1/fill/w_1121,h_713,q_70,strp/chalk_zone_by_rubtox_df1we7p-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODE0IiwicGF0aCI6IlwvZlwvOTViMDFiYjQtYTQzNC00NWJlLWFmNTctOWE3MzUzZWRmNzNhXC9kZjF3ZTdwLWVjY2U4ZmZlLTBhZTgtNDE2Yy05ZTVlLWEyYjFiNjg0MTZlMy5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.zPfmnOhXeDfJ7K0ey7BjYgQhbKI5VL70QmpPL5D8ksI",
        "Serial kartun atau animasi ini sangat mirip dengan sebuah kartun dari tahun 1974 yang berjudul Simon in the Land of Chalk Drawings"),
    ArticleItem(
        Colors.white,
        "https://lh3.googleusercontent.com/amPIEzJFWivrg-zjMWXRyVxC5G_08V2NQ-LPutd9eBNCtQFsCicAdaC8EiqBBuzh-blAZsSOEq8=w1440-ns-nd-rj",
        "Serial ini berkisah pada petualangan Rudy bersama Snap kawannya dan teman sekelasnya Penny Sanchez.")
  ];

  final List<String> urlImage = [
    "https://m.media-amazon.com/images/S/pv-target-images/3f7d1f16cc87e8e6217d1c3d9a6d87fe4ac08b0eb927b821b214a4975cb95f6f.jpg",
    "https://m.media-amazon.com/images/M/MV5BMjMwNzg2MzYxMV5BMl5BanBnXkFtZTgwMzA1NzU1MjE@._V1_.jpg",
    "https://static.tvtropes.org/pmwiki/pub/images/d19bedc52c4042e825cf796ac67b018b.PNG",
    "https://i1.sndcdn.com/artworks-gv7umLpr9DK1wT23-VN0efA-t500x500.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://iahhm.com/wp-content/uploads/2020/02/maxresdefault-1.jpg"),
                        fit: BoxFit.fitWidth),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.separated(
                        itemCount: itemArticle.length,
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.white,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 300,
                            child: Row(
                              children: [
                                Container(
                                  width: 200,
                                  height: 600,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        NetworkImage(itemArticle[index].image),
                                  )),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 250,
                                      child: Text(itemArticle[index].text),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "GALLERY",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: urlImage.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                width: 200,
                                child: Image.network(urlImage[index],
                                    width: 100, height: 200),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}