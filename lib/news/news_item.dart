import 'package:flutter/material.dart';
import 'package:news/home/model/NewsResponse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news/home/myTheme.dart';

class NewsItem extends StatelessWidget {
  News news;

  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: CachedNetworkImage(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.fill,
              imageUrl: "http://via.placeholder.com/350x150",
              placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                color: MyTheme.primaryColor,
              )),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(news.author ?? "",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: MyTheme.greyColor)),
          Text(news.title ?? "", style: Theme.of(context).textTheme.titleSmall),
          SizedBox(
            height: 15,
          ),
          Text(news.publishedAt ?? "",
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: MyTheme.greyColor)),
        ],
      ),
    );
  }
}