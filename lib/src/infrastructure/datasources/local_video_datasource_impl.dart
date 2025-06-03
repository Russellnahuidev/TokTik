import 'package:toktik/src/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/src/domain/entities/video_post.dart';
import 'package:toktik/src/infrastructure/models/local_video_model.dart';
import 'package:toktik/src/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
