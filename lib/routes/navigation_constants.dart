enum SCREEN { home, splash, details }

extension AppPageExtension on SCREEN {
  String get path {
    switch (this) {
      case SCREEN.splash:
        return "/splash";
      case SCREEN.home:
        return "/home";
      case SCREEN.details:
        return "/details";
    }
  }

  String get screenName {
    switch (this) {
      case SCREEN.splash:
        return "SPLASH";
      case SCREEN.home:
        return "HOME";
      case SCREEN.details:
        return "DETAILS";
    }
  }

  String get screenTitle {
    switch (this) {
      case SCREEN.splash:
        return "Splash";
      case SCREEN.home:
        return "Home";
      case SCREEN.details:
        return "Details";
    }
  }
}
