import 'dart:ui' as ui;

class ScreenUtils {
  factory ScreenUtils() {
    return _instance;
  }
  ScreenUtils._internal();
  static final ScreenUtils _instance = ScreenUtils._internal();

  static double designWidth = 402.0;
  static double designHeight = 896.0;

  void init({
    double customDesignWidth = 402.0,
    double customDesignHeight = 896.0,
  }) {
    designWidth = customDesignWidth;
    designHeight = customDesignHeight;
  }

  static ui.FlutterView get _view {
    final implicitView = ui.PlatformDispatcher.instance.implicitView;
    if (implicitView != null) {
      return implicitView;
    }
    return ui.PlatformDispatcher.instance.views.first;
  }

  static double get physicalWidth => _view.physicalSize.width;
  static double get physicalHeight => _view.physicalSize.height;
  static double get pixelRatio => _view.devicePixelRatio;

  static double get screenWidth {
    final pr = pixelRatio;
    return pr > 0 ? physicalWidth / pr : 0.0;
  }

  static double get screenHeight {
    final pr = pixelRatio;
    return pr > 0 ? physicalHeight / pr : 0.0;
  }

  static double get topSafeHeight {
    final pr = pixelRatio;
    return pr > 0 ? _view.padding.top / pr : 0.0;
  }

  static double get bottomSafeHeight {
    final pr = pixelRatio;
    return pr > 0 ? _view.padding.bottom / pr : 0.0;
  }

  double setWidth(num width) {
    if (screenWidth == 0 || designWidth == 0) return width.toDouble();
    return width * (screenWidth / designWidth);
  }

  double setHeight(num height) {
    if (screenHeight == 0 || designHeight == 0) return height.toDouble();
    return height * (screenHeight / designHeight);
  }

  double setSp(num fontSize) {
    return setWidth(fontSize);
  }

  double screenWidthFraction(double fraction) {
    return screenWidth * fraction;
  }

  double screenHeightFraction(double fraction) {
    return screenHeight * fraction;
  }

  double setRadius(num radius) {
    if (screenWidth == 0 || designWidth == 0) return radius.toDouble();
    return radius * (screenWidth / designWidth);
  }

  double setSq(num size) {
    if (screenWidth == 0 ||
        designWidth == 0 ||
        screenHeight == 0 ||
        designHeight == 0) {
      return size.toDouble();
    }
    final double scaleW = screenWidth / designWidth;
    final double scaleH = screenHeight / designHeight;
    return size * (scaleW < scaleH ? scaleW : scaleH);
  }

  static double w(num width) => _instance.setWidth(width);
  static double h(num height) => _instance.setHeight(height);
  static double sp(num fontSize) => _instance.setSp(fontSize);
  static double sw(double fraction) => _instance.screenWidthFraction(fraction);
  static double sh(double fraction) => _instance.screenHeightFraction(fraction);
  static double r(num radius) => _instance.setRadius(radius);
  static double sq(num size) => _instance.setSq(size);
}

extension ScreenUtilsNumExtension on num {
  double get w => ScreenUtils.w(this);
  double get h => ScreenUtils.h(this);
  double get sp => ScreenUtils.sp(this);
  double get r => ScreenUtils.r(this);
  double get sq => ScreenUtils.sq(this);
}

extension ScreenUtilsDoubleExtension on double {
  double get sw => ScreenUtils.sw(this);
  double get sh => ScreenUtils.sh(this);
}
