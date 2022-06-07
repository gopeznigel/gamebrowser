import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/screenshot/screenshot_bloc.dart';

class ScreenshotViewerPage extends StatelessWidget {
  static const String route = '/screenshotViewerPage';

  const ScreenshotViewerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:
          (ModalRoute.of(context)!.settings.arguments as ScreenshotViewerArgs)
              .screenshotBloc,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: BlocBuilder<ScreenshotBloc, ScreenshotState>(
          builder: (context, state) {
            ExtendedPageController _controller =
                ExtendedPageController(initialPage: state.initialPage);

            return ExtendedImageGesturePageView.builder(
              controller: _controller,
              itemCount: state.screenshots!.length,
              itemBuilder: (context, i) {
                return ExtendedImage.network(
                  state.screenshots![i].image,
                  mode: ExtendedImageMode.gesture,
                  initGestureConfigHandler: (ExtendedImageState state) {
                    return GestureConfig(
                      minScale: 1,
                      animationMinScale: 0.7,
                      maxScale: 3.0,
                      animationMaxScale: 3.5,
                      speed: 1.0,
                      inertialSpeed: 100.0,
                      initialScale: 1.0,
                      inPageView: true,
                      initialAlignment: InitialAlignment.center,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ScreenshotViewerArgs {
  final ScreenshotBloc screenshotBloc;

  ScreenshotViewerArgs(this.screenshotBloc);
}
