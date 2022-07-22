import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loono/Blocs/rest_api_bloc.dart';
import 'package:loono/Blocs/rest_api_event.dart';
import 'package:loono/Blocs/rest_api_state.dart';
import 'package:loono/constants.dart';
import 'package:loono/models/cms/article.dart';
import 'package:loono/models/cms/category.dart';
import 'package:loono/ui/widgets/avatar_bubble_notifier.dart';

class AboutHealthOverlay extends StatefulWidget {
  const AboutHealthOverlay({Key? key, required this.convertExtent}) : super(key: key);
  final Function(double?) convertExtent;

  @override
  State<AboutHealthOverlay> createState() => _AboutHealthOverlayState();
}

class _AboutHealthOverlayState extends State<AboutHealthOverlay> {
  final RestApiBloc _cmsBloc = RestApiBloc();
  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    _cmsBloc.add(const RestApiEvent.fetchAboutHealthCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: NotificationListener<DraggableScrollableNotification>(
        onNotification: (notification) {
          widget.convertExtent(notification.extent);
          return false;
        },
        child: DraggableScrollableSheet(
          initialChildSize: 0.50,
          maxChildSize: 0.75,
          minChildSize: 0.50,
          builder: (context, scrollController) => BlocProvider.value(
            value: _cmsBloc,
            child: BlocListener<RestApiBloc, RestApiState>(
              listener: (context, state) {
                if (state is RestApiError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text((state.message!))),
                  );
                }
              },
              child: AvatarBubbleNotifier(
                convertExtent: widget.convertExtent,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: BlocBuilder<RestApiBloc, RestApiState>(
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return _buildLoading();
                        } else if (state is AboutHeathCategories) {
                          return Column(
                            children: [
                              _buildHandle(context),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  top: 8.0,
                                  bottom: 8.0,
                                ),
                                child: _buildTitle('Prevence zdravi'),
                              ),
                              _buildCategoriesSection(state, scrollController)
                            ],
                          );
                        }

                        return Container();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  Widget _buildCategoriesSection(AboutHeathCategories state, ScrollController controller) =>
      ListView.builder(
        shrinkWrap: true,
        controller: _verticalScrollController,
        itemBuilder: (context, index) {
          final category = state.categories?[index];
          // return const SizedBox(height: 150, child: Text('Ahoj'));
          return _buildCategory(category);
        },
        itemCount: state.categories?.length,
      );

  Widget _buildCategory(Category? category) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                category?.categoryTitle ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                ),
              ),

              //TODO: Arrows
            ],
          ),
          _buildArticle(category?.articles)
        ],
      );

  List<String> testMoc = List<String>.generate(10000, (i) => 'Item $i');

  Widget _buildArticle(List<Article>? articles) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        controller: _horizontalScrollController,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (contetxt, index) {
          final article = articles?[index];
          //return Container();
          return _buildArticleCard(article);
        },
        itemCount: articles?.length,
        scrollDirection: Axis.horizontal,
      ),
    );

    // return SingleChildScrollView(
    //   controller: _horizontalScrollController,
    //   child: Row(children: testMoc.map<Widget>((e) => Text(e)).toList()),

    //   //child: Row(children: articles?.map(_buildArticleCard).toList() ?? []),
    // );

    /*
    ListView.builder(
        itemCount: articles?.length,
        itemBuilder: ((context, index) {
        return _buildArticleCard(articles?[index]);
      })*/
    // ListView.builder(
    //   itemCount: articles?.length,
    //   controller: _horizontalScrollController,
    //   scrollDirection: Axis.horizontal,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     final article = articles?[index];
    //     return const Text('Jsem clanek');
    //     //return _buildArticleCard(article);
    //   },
    // );
  }

  Widget _buildArticleCard(Article? article) {
    final title = article?.articleTitle ?? '';
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
      height: 100,
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TODO Card with image
          Text(title),
        ],
      ),
    );
  }

  Widget _buildTitle(String title) => Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 32,
          ),
        ),
      );

  Widget _buildHandle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          height: 10,
          width: 100,
          decoration: const BoxDecoration(
            color: LoonoColors.primary,
            borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
          ),
        ),
      );

  void _scrollRight() {
    _horizontalScrollController.animateTo(
      _horizontalScrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _scrollLeft() {
    _horizontalScrollController.animateTo(
      0,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
