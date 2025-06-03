import 'package:toktik/src/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {
  Future<List<VideoPost>> getTrendingVideosByUser(String userId);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
