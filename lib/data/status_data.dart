import 'package:agelog_app/classes/status.dart';
import 'package:agelog_app/constant/app_colors.dart';
import 'package:agelog_app/constant/app_images.dart';
import 'package:agelog_app/constant/app_string.dart';

class StatusData {
  static List<Status> Sd = [
    Status(id: '0',urlIcon: AppImages.icWeight, labelIcon: AppLabel.weight_label, inputContainer: '00.0', unitContainer: 'kg', resultContainer: '-5 kg',colorText: AppColors.greenLight,),
    Status(id: '1',urlIcon: AppImages.icBMI, labelIcon: AppLabel.bmi_label, inputContainer: '105', unitContainer: 'kg/m^2', resultContainer: '103'),
    Status(id: '2',urlIcon: AppImages.icBody_Fat, labelIcon: AppLabel.body_Fat_label, inputContainer: '00.0', unitContainer: '%', resultContainer: '00.0',colorText: AppColors.orange,),
    Status(id: '3',urlIcon: AppImages.icVisceral_Fat, labelIcon: AppLabel.visceral_Fat_label, inputContainer: '00.0', unitContainer: '', resultContainer: '00.0',colorText: AppColors.greenLight,),
    Status(id: '4',urlIcon: AppImages.icSclera_Musicale, labelIcon: AppLabel.sclera_Musicale_label, inputContainer: '00.0', unitContainer: '%', resultContainer: '00.0',colorText: AppColors.greenLight,),
    Status(id: '5',urlIcon: AppImages.icWaistline, labelIcon: AppLabel.waistline_label, inputContainer: '00', unitContainer: 'cm', resultContainer: '00',colorText: AppColors.greenLight,),
  ];
}