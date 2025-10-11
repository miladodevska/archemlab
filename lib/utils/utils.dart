import 'package:flutter/material.dart';

class Utils {
  final BuildContext? context;

  Utils({this.context});

  final List<Map<String, String>> categories = [
    // {
    //   'title': 'Категорија 1',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/analyctical_lab_instruments.glb',
    // },
    {
      'title': 'Категорија 2',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/beaker.glb',
    },
    // {
    //   'title': 'Категорија 3',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/boiling_liquid_stand.glb',
    // },
    // {
    //   'title': 'Категорија 4',
    //   'icon': 'assets/icons/RightArrow.json',
    //   'model': 'assets/3dmodels/box.glb',
    // },
    {
      'title': 'Категорија 5',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/chair.glb',
    },
    // {
    //   'title': 'Категорија 6',
    //   'icon': 'assets/icons/RightArrow.json',
    //   'model': 'assets/3dmodels/box02.glb',
    // },
    {
      'title': 'Категорија 7',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/china_dish.glb',
    },
    // {
    //   'title': 'Категорија 8',
    //   'icon': 'assets/icons/RightArrow.json',
    //   'model': 'assets/3dmodels/crubicle_and_cover.glb',
    // },
    // {
    //   'title': 'Категорија 9',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/crubicle_tongs.glb',
    // },
    {
      'title': 'Категорија 10',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/drawer_handle.glb',
    },
    // {
    //   'title': 'Категорија 11',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/erlenmeyer_flask.glb',
    // },
    {
      'title': 'Категорија 12',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/floor.glb',
    },
    {
      'title': 'Категорија 13',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/florence_flask.glb',
    },
    {
      'title': 'Категорија 14',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/forceps.glb',
    },
    {
      'title': 'Категорија 15',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/glass_support.glb',
    },
    {
      'title': 'Категорија 16',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/glass_frame.glb',
    },
    {
      'title': 'Категорија 17',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/glass_funnel.glb',
    },
    // {
    //   'title': 'Категорија 18',
    //   'icon': 'assets/icons/RightArrow.json',
    //   'model': 'assets/3dmodels/glass_lab_test_tube.glb',
    // },
    // {
    //   'title': 'Категорија 19',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/glass_medical_dropper.glb',
    // },
    {
      'title': 'Категорија 20',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/glass.glb',
    },
    // {
    //   'title': 'Категорија 21',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/graduated_cylinder.glb',
    // },
    {
      'title': 'Категорија 22',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/lab_glass.glb',
    },
    {
      'title': 'Категорија 23',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/lab_shelf.glb',
    },
    {
      'title': 'Категорија 24',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/liquids.glb',
    },
    {
      'title': 'Категорија 25',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/pillar.glb',
    },
    {
      'title': 'Категорија 26',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/rack.glb',
    },
    {
      'title': 'Категорија 27',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/roof_light.glb',
    },
    {
      'title': 'Категорија 28',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/roof.glb',
    },
    {
      'title': 'Категорија 29',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/shelf_showcase.glb',
    },
    {
      'title': 'Категорија 30',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/shelf_showcase1.glb',
    },
    {
      'title': 'Категорија 31',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/shelf.glb',
    },
    {
      'title': 'Категорија 32',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/showcase.glb',
    },
    // {
    //   'title': 'Категорија 33',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/spirit_lamp.glb',
    // },
    {
      'title': 'Категорија 34',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/stand_glass.glb',
    },
    {
      'title': 'Категорија 35',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/table_drawer01.glb',
    },
    {
      'title': 'Категорија 36',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/table_with_drawers.glb',
    },
    {
      'title': 'Категорија 37',
      'icon': 'assets/icons/ThreeDots.json',
      'model': 'assets/3dmodels/table_drawer.glb',
    },
    {
      'title': 'Категорија 38',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/tap.glb',
    },
    // {
    //   'title': 'Категорија 39',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/test_tube_rack.glb',
    // },
    {
      'title': 'Категорија 40',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/wall01.glb',
    },
    // {
    //   'title': 'Категорија 41',
    //   'icon': 'assets/icons/ThreeDots.json',
    //   'model': 'assets/3dmodels/water_shelf.glb',
    // },
    {
      'title': 'Категорија 42',
      'icon': 'assets/icons/RightArrow.json',
      'model': 'assets/3dmodels/wood.glb',
    },
  ];
}

class ModelUrlUtils {
  static const String _githubRawBase = 'https://raw.githubusercontent.com/miladodevska/archemlab/main/';

  /// Converts a local asset model path into a public GitHub-hosted GLB URL.
  /// Example:
  /// input:  assets/3dmodels/beaker.glb
  /// output: https://raw.githubusercontent.com/miladodevska/archemlab/main/assets/3dmodels/beaker.glb
  static String getGithubModelUrl(String localPath) {
    // Just make sure there's no leading slash
    String cleanedPath = localPath.startsWith('/') ? localPath.substring(1) : localPath;
    return '$_githubRawBase$cleanedPath';
  }
}
