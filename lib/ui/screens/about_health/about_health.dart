import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loono/constants.dart';
import 'package:loono/l10n/ext.dart';
import 'package:loono/ui/widgets/about_heath/AboutHealthOverlay.dart';

class AboutHealthScreen extends StatelessWidget {
  AboutHealthScreen({Key? key}) : super(key: key);

  final ValueNotifier<double?> extentFromTop = ValueNotifier<double?>(null);

  void convertExtent(double? extent) {
    Future.delayed(Duration.zero, () async {
      extentFromTop.value = extent;
    });
  }

  final initialUri = Uri.parse('https://www.loono.cz/objevuj-prevenci');

  final allowedUrlsWhitelist = ['www.loono.cz', 'www.youtube.com'];

  final openInBrowserWhitelist = ['spotify.link', 'open.spotify.com', 'www.youtube.com'];

  final _showBackArrow = ValueNotifier<bool>(false);

  final _loadingProgress = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final texts = context.l10n;

    return Scaffold(
      backgroundColor: LoonoColors.aboutHealthBgColor,
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 0),
              child: SvgPicture.asset(
                'assets/icons/about_health_bg.svg',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 60),
                  child: SvgPicture.asset(
                    'assets/icons/about_health_hero.svg',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Text(
                      texts.learn_how_to_care_about_health,
                      style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            IgnorePointer(
              child: ValueListenableBuilder(
                valueListenable: extentFromTop,
                builder: (context, double? value, child) {
                  return const SizedBox();
                },
              ),
            ),
            AboutHealthOverlay(convertExtent: convertExtent)
          ],
        ),
      ),
    );
  }
}

/*
   InAppWebView(
              onWebViewCreated: (controller) {
                context.read<WebViewProvider>().setController(controller);
                controller.addJavaScriptHandler(
                  handlerName: 'openShareSheet',
                  callback: (args) async {
                    final url = await controller.getUrl();
                    await Share.share(
                      args.isNotEmpty ? args.first.toString() : url.toString(),
                    );
                    return;
                  },
                );
              },
              initialUrlRequest: URLRequest(
                url: initialUri,
              ),
              onUpdateVisitedHistory: (webViewController, uri, androidIsReload) async {
                _showBackArrow.value = uri != initialUri;
              },
              onProgressChanged: (webViewController, progress) {
                _loadingProgress.value = progress;
              },
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  useShouldOverrideUrlLoading: true,
                  mediaPlaybackRequiresUserGesture: false,
                  userAgent: 'ma-preventivka',
                ),
                android: AndroidInAppWebViewOptions(
                  useHybridComposition: useHybridComposition(),
                ),
                ios: IOSInAppWebViewOptions(
                  allowsInlineMediaPlayback: true,
                ),
              ),
              shouldOverrideUrlLoading: (controller, navigationAction) async {
                final uri = navigationAction.request.url!;
    
                if (openInBrowserWhitelist.contains(uri.host) && !uri.path.contains('/embed')) {
                  if (await canLaunchUrlString(uri.toString())) {
                    await launchUrlString(uri.toString());
                  }
                }
    
                /// prevent clicks outside of allowed urls
                if ((allowedUrlsWhitelist.contains(uri.host) && !uri.path.contains('/watch') ||
                    uri.toString().contains('https://open.spotify.com/embed'))) {
                  return NavigationActionPolicy.ALLOW;
                }
                return NavigationActionPolicy.CANCEL;
              },
            ),
            ValueListenableBuilder<bool>(
              valueListenable: _showBackArrow,
              builder: (context, value, _) {
                if (value) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: IconButton(
                      onPressed: () async {
                        final webViewController = context.read<WebViewProvider>().webViewController;
                        await webViewController?.goBack();
                      },
                      icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 8.0, right: 18),
                child: FeedbackButton(),
              ),
            ),
            ValueListenableBuilder<int>(
              valueListenable: _loadingProgress,
              builder: (context, value, _) {
                if (value == 0 || value == 100) {
                  return const SizedBox.shrink();
                }
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: LinearProgressIndicator(
                      value: value / 100,
                      backgroundColor: LoonoColors.beigeLight,
                      valueColor: const AlwaysStoppedAnimation<Color>(LoonoColors.primary),
                    ),
                  ),
                );
              },
            ),
       
*/
