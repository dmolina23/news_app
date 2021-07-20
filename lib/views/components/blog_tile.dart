import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  const BlogTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.desc})
      : super(key: key);

  final String imageUrl, title, desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(imageUrl)),
          Text(
            title,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          Text(
            desc,
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
