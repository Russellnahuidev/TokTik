import 'package:toktik/src/domain/entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getTrendingVideosByUser(String userId);
  
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
