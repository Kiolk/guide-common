import 'package:common/model/articles/news_article_summary.dart';
import 'package:common/model/banner/banner_model.dart';
import 'package:common/model/base_item_model.dart';
import 'package:common/model/route/route_details_model.dart';
import 'package:flutter/material.dart';

class HomePageInfo extends ChangeNotifier {
  List<BannerModel> banners = [];
  List<NewsArticleSummary> newsArticleSummaries = [];
  List<RouteDetailsModel> routes = [];
  List<EventsItemModel> events = [];

  HomePageInfo(this.banners, this.newsArticleSummaries, this.routes, {this.events = const []});

  HomePageInfo copyWith({List<BannerModel>? banners, List<NewsArticleSummary>? newsArticleSummaries, List<RouteDetailsModel>? routes, List<EventsItemModel>? events}) {
    return HomePageInfo(banners ?? this.banners, newsArticleSummaries ?? this.newsArticleSummaries, routes ?? this.routes, events: events ?? this.events);
  }
}
