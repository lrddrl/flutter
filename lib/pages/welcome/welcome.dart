import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news/common/utils/utils.dart';
import 'package:flutter_ducafecat_news/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  /// 页头图片
  Widget _buildFeatureItem(String imageName) {
    return Container(
      width: duSetWidth(375),
      child: Image.asset(
        "assets/images/$imageName.png",
        fit: BoxFit.cover,
      ),
    );
  }

  /// 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(10)), // 顶部系统栏 44px
      child: Text(
        "Smart Planting",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
          height: 1,
        ),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeaderDetail() {
    return Container(
      width: duSetWidth(300),
      height: duSetHeight(100),
      margin: EdgeInsets.only(top: duSetHeight(5)),
      child: Text(
        "Extracts a large amounts of Relevant Data Patented. Collaborative Machine Learning Open Design Decentralized Secure.The World's Largest Dataset of Surface Images Across Multiple Industries",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Avenir",
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(15),
          height: 1.6,
        ),
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton(BuildContext context) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(50),
      margin: EdgeInsets.only(bottom: duSetHeight(30)),
      child: FlatButton(
        color: Colors.green,
        textColor: AppColors.primaryElementText,
        child: Text("TRY FOR FREE NOW"),
        shape: RoundedRectangleBorder(
          borderRadius: Radii.k6pxRadius,
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/sign-in",
          );
        },
      ),
    );
  }

  /// 订阅按钮
  Widget _buildSubscribe(BuildContext context) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(27),
      margin: EdgeInsets.only(bottom: duSetHeight(5)),

      ///decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: FlatButton(
        /// borderSide: new BorderSide(color: Colors.blueAccent),
        color: Colors.white54,
        textColor: Colors.green,
        child: Text("Subscribe monthly Here"),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/sign-in",
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 高度去掉 顶部、底部 导航
    ScreenUtil.init(context,
        width: 375, height: 812 - 44 - 34, allowFontScaling: true);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _buildFeatureItem(
              "feature-1",
            ),
            _buildPageHeadTitle(),
            _buildPageHeaderDetail(),
            _buildStartButton(context),
            _buildSubscribe(context),
          ],
        ),
      ),
    );
  }
}
