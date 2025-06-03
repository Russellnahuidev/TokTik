import 'package:toktik/src/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/src/domain/entities/video_post.dart';
import 'package:toktik/src/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videoPostDataSource;

  VideoPostsRepositoryImpl({required this.videoPostDataSource});
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDataSource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
