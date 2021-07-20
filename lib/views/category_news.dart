import 'package:flutter/material.dart';
import 'package:flutter_news/helper/news.dart';
import 'package:flutter_news/models/article_model.dart';
import 'package:flutter_news/models/category_model.dart';
import 'package:flutter_news/views/components/blog_tile.dart';

class CategoryNews extends StatefulWidget {

  final String category;

  const CategoryNews({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  bool _loading = true;
  List<ArticleModel> articles = new List.empty();

  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Flutter", style: TextStyle(color: Colors.black)),
          Text(
            "News",
            style: TextStyle(color: Colors.blue),
          )
        ]),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save),
            ),
          )
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      )
      : SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              ///blogs
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BlogTile(
                          imageUrl: articles[index].urlToImage,
                          title: articles[index].title,
                          desc: articles[index].description,
                          url: articles[index].url);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
