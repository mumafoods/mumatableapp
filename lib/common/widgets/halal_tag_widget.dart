import 'package:efood_table_booking/util/dimensions.dart';
import 'package:efood_table_booking/util/images.dart';
import 'package:efood_table_booking/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'custom_asset_image_widget.dart';

class HalalTagWidget extends StatelessWidget {
  const HalalTagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(visible: true, child: Container(
      decoration: BoxDecoration(
        color: Theme.of(context).hintColor.withValues(alpha:0.15),
        borderRadius: BorderRadius.circular(Dimensions.radiusExtraLarge),
      ),
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall, vertical: Dimensions.paddingSizeExtraSmall),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min,children: [

        const CustomAssetImageWidget(
          Images.halalTag, fit: BoxFit.fitHeight, height: 18, width: 18,
        ),
        SizedBox(width: Dimensions.paddingSizeExtraSmall),

        Text('halal'.tr,
          style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).hintColor),
        ),
        SizedBox(width: Dimensions.paddingSizeExtraSmall),
      ]),
    ));
  }
}