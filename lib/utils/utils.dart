import 'package:archemlab/utils/assets.dart';
import 'package:flutter/material.dart';

class Utils {
  final BuildContext? context;

  Utils({this.context});

  final List<Map<String, String>> categories = [
    {
      'title': 'Beaker',
      'thumbnail': beakerSnapshot,
      'model': beakerImage,
    },
    {
      'title': 'Boiling Liquid Stand',
      'thumbnail': boilingLiquidStandSnapshot,
      'model': boilingLiquidStandImage,
    },
    {
      'title': 'Chair',
      'thumbnail': chairSnapshot,
      'model': chairImage,
    },
    {
      'title': 'China Dish',
      'thumbnail': chinaDishSnapshot,
      'model': chinaDishImage,
    },
    {
      'title': 'Crucible and Cover',
      'thumbnail': crucibleAndCoverSnapshot,
      'model': crucibleAndCoverImage,
    },
    {
      'title': 'Crucible Tongs',
      'thumbnail': crucibleTongsSnapshot,
      'model': crucibleTongsImage,
    },
    {
      'title': 'Erlenmeyer Flask',
      'thumbnail': erlenmayerFlaskSnapshot,
      'model': erlenmeyerFlaskImage,
    },
    {
      'title': 'Florence Flask',
      'thumbnail': florenceFlaskSnapshot,
      'model': florenceFlaskImage,
    },
    {
      'title': 'Forceps',
      'thumbnail': forcepsSnapshot,
      'model': forcepsImage,
    },
    {
      'title': 'Glass Funnel',
      'thumbnail': glassFunnelSnapshot,
      'model': glassFunnelImage,
    },
    {
      'title': 'Glass Lab Test Tube',
      'thumbnail': testTubeSnapshot,
      'model': glassLabTestTubeImage,
    },
    {
      'title': 'Glass Medical Dropper',
      'thumbnail': medicalDropperSnapshot,
      'model': glassMedicalDropperImage,
    },
    {
      'title': 'Graduated Cylinder',
      'thumbnail': graduatedCylinderSnapshot,
      'model': graduatedCylinderImage,
    },
    {
      'title': 'Rack',
      'thumbnail': rackSnapshot,
      'model': rackImage,
    },
    {
      'title': 'Showcase',
      'thumbnail': showcaseSnapshot,
      'model': showcaseImage,
    },
    {
      'title': 'Spirit Lamp',
      'thumbnail': spiritLampSnapshot,
      'model': spiritLampImage,
    },
    {
      'title': 'Table With Drawers',
      'thumbnail': tableWithDrawersSnapshot,
      'model': tableWithDrawersImage,
    },
    {
      'title': 'Test Tube Rack',
      'thumbnail': testTubeRackSnapshot,
      'model': testTubeRackImage,
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
    String cleanedPath = localPath.startsWith('/') ? localPath.substring(1) : localPath;
    return '$_githubRawBase$cleanedPath';
  }
}
