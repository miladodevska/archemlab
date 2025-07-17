enum SCREEN { home, splash }

extension AppPageExtension on SCREEN {
  String get path {
    switch (this) {
      case SCREEN.splash:
        return "/splash";
      case SCREEN.home:
        return "/home";
    }
  }

  String get screenName {
    switch (this) {
      case SCREEN.splash:
        return "SPLASH";
      case SCREEN.home:
        return "HOME";
    }
  }

  String get screenTitle {
    switch (this) {
      case SCREEN.splash:
        return "Splash";
      case SCREEN.home:
        return "Home";
    }
  }
}
