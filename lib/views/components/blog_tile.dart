import 'package:flutter/material.dart';
import 'package:flutter_news/views/article_view.dart';

class BlogTile extends StatelessWidget {
  const BlogTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.desc,
      required this.url})
      : super(key: key);

  final String imageUrl, title, desc, url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      blogUrl: url,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            Text(desc)
          ],
        ),
      ),
    );
  }
}
