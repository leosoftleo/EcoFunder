
import 'package:eco_funder/module/profile/view/VProfileSkeleton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:eco_funder/module/profile/model/MProfile.dart';
import 'VProfileView.dart';

class VProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dynamic profileModel = Provider.of<MProfile>(context);
    return VProfileView();//: VProfileSkeleton();
  }

}