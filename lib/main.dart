import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/src/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik/src/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:toktik/src/presentation/providers/discover_provider.dart';
import 'package:toktik/src/presentation/screens/discover/discover_screen.dart';
import 'package:toktik/src/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl(
      videoPostDataSource: LocalVideoDatasourceImpl(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videoPostsRepository: videoPostRepository)
                ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTeme(),
        home: DiscoverScreen(),
      ),
    );
  }
}
