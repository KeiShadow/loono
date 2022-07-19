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
              child: BlocBuilder<RestApiBloc, RestApiState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return _buildLoading();
                  } else if (state is AboutHeathCategories) {
                    return AvatarBubbleNotifier(
                      convertExtent: widget.convertExtent,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                height: 15,
                                width: 150,
                                decoration: const BoxDecoration(
                                  color: LoonoColors.primary,
                                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                                child: Text(
                                  'Prevence zdraví',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 32,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                controller: scrollController,
                                itemBuilder: (context, index) {
                                  final category = state.categories?[index];

                                  return _buildCategory(category);
                                  // return Container();
                                },
                                itemCount: state.categories?.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  return Container();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  Widget _buildCategory(Category? category) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  category?.categoryTitle ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 19,
                  ),
                ),
              ),
              //TODO: Arrows
            ],
          ),
          // _buildArticle(category?.articles)
        ],
      );

  Widget _buildArticle(List<Article>? articles) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: articles?.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final article = articles?[index];
        return _buildArticleCard(article);
      },
    );
  }

  Widget _buildArticleCard(Article? article) {
    return SizedBox(
      height: 150,
      child: Container(),
    );
  }
}
