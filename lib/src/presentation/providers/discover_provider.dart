import 'package:flutter/material.dart';
import 'package:toktik/src/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //Todo: cargar videos

    notifyListeners();
  }
}
