import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../controllers/onboarding/Onboarding_controler.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_fonts.dart';
import '../../core/constants/app_images.dart';
import '../../widgets/CustomContainerButton.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingControler controller = Get.put(OnboardingControler());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChange,
                  children: [
                    _buildOnboardingBody(
                      title: "اقرأ الأخبار وقتما تشاء",
                      image: AppImages.smartphone,
                      body:
                      "تابع آخر المستجدات من مصادر موثوقة \n بتصنيفات متنوعة تلبي اهتماماتك",
                      screenHeight: screenHeight,
                    ),
                    _buildOnboardingBody(
                      title: "استمع بدل القراءة",
                      image: AppImages.LisenToNews,
                      body:
                      "حوّل الأخبار إلى تجربة صوتية \n واستمع إليها أثناء انشغالك أو تنقلك",
                      screenHeight: screenHeight,
                    ),
                    _buildOnboardingBody(
                      title: "كن أول من يعرف",
                      image: AppImages.readingNews,
                      body:
                      "ختر مصادر وتصنيفاتك المفضلة، واحصل على إشعارات فورية عند نشر أي خبر جديد",
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                        (index) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      width: controller.currentpage.value == index ? 20 : 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: controller.currentpage.value == index
                            ? Colors.blueAccent
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: screenHeight * 0.07,
                child: CustomContainerButton(

                  text: controller.currentpage.value==2 ? "ابدأ" : "التالي" ,
                  color: AppColor.botom,
                  onTap: controller.nextPage,


                ),
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOnboardingBody({
    required String title,
    required String image,
    required String body,
    required double screenHeight,
  }) {
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.05),
        Text(
          title,
          style: AppFonts.TitleStyle.copyWith(
            fontSize: screenHeight * 0.03,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: screenHeight * 0.03),
        Expanded(
          child: Lottie.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: screenHeight * 0.03),
        Text(
          body,
          style: AppFonts.titilebody.copyWith(
            fontSize: screenHeight * 0.022,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: screenHeight * 0.05),
      ],
    );
  }
}
