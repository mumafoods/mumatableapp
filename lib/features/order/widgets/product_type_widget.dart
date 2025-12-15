import 'package:efood_table_booking/common/widgets/halal_tag_widget.dart';
import 'package:efood_table_booking/features/order/domain/models/order_details_model.dart';
import 'package:efood_table_booking/features/splash/controllers/splash_controller.dart';
import 'package:efood_table_booking/features/splash/domain/models/config_model.dart';
import 'package:efood_table_booking/util/dimensions.dart';
import 'package:efood_table_booking/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductTypeWidget extends StatelessWidget {
  final Details? details;

  const ProductTypeWidget({super.key, this.details});

  @override
  Widget build(BuildContext context) {
    final ConfigModel? configModel = Get.find<SplashController>().configModel;
    final bool isVegNonVegActive = configModel?.isVegNonVegActive ?? false;
    final bool isHalal = ((configModel?.halalTagStatus == 1) && (details?.productDetails?.halalStatus == 1));

    return Wrap(alignment: WrapAlignment.end, spacing: Dimensions.paddingSizeExtraSmall, children: [

      if(details?.productDetails?.productType != null && isVegNonVegActive)
        Container(
          decoration: BoxDecoration(
            borderRadius:  const BorderRadius.all(Radius.circular(Dimensions.radiusSmall)),
            color: Theme.of(context).primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),
            child: Text(details?.productDetails?.productType?.tr ?? '', style: robotoRegular.copyWith(color: Theme.of(context).cardColor),
            ),
          ),
        ),

      if(isHalal)
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: HalalTagWidget(),
        ),
    ]);
  }
}