import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/core/translation/translation_keys.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/utils/app_text_styles.dart';
class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  PageController _controller = PageController();
  int currentPage=0;
  List<StartPage>pages =[
    StartPage(
  title: TranslationKeys.onBoardingTitle1,
  description:TranslationKeys.onBoardingDescription1 ,
  image: SvgPicture.asset("${AppAssets.chooseProductsImage}"),
  ),
    StartPage(
  title: TranslationKeys.onBoardingTitle2,
  description:TranslationKeys.onBoardingDescription2 ,
      image: SvgPicture.asset("${AppAssets.makePaymentImage}"),
  ),
    StartPage(
  title: TranslationKeys.onBoardingTitle3,
  description:TranslationKeys.onBoardingDescription3 ,
      image: SvgPicture.asset("${AppAssets.getYourOrderImage}"),
  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: ()=>_controller.jumpToPage(pages.length-1),
            child: Text(TranslationKeys.skip,style: AppTextStyles.skip,),
          ),

        ],
      ),
    body: PageView(
      controller: _controller,
      onPageChanged: (index){
        setState(() {
          currentPage=index;
        });
      },
      children: pages,
    ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  if(currentPage>0)
              TextButton(
              onPressed: () => _controller.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
              ),
              child: Text(TranslationKeys.prev,style: AppTextStyles.prev,),
              ),
          Row(
          children: [
              TextButton(
                  onPressed: () {
                if (currentPage == pages.length - 1) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  _controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
                  );
                }
              },
                  child:
                  Text(
                  currentPage == pages.length-1 ?
                  TranslationKeys.getStarted
                      :TranslationKeys.next,
                    style: AppTextStyles.next,
                  ),
                  ),
            ],
          )

    ],
    ),
    ],
          ),
    ),
      ),
    );
  }
}
class StartPage extends StatelessWidget {
  const StartPage({super.key,required this.title,
    required this.description,
    required this.image,});
final String title;
final String description;
final Widget image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          SizedBox(height: 20.h),
          Text(title, style:AppTextStyles.onBoardingTitle1),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(description,
                style: AppTextStyles.onBoardingDescription1,
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
