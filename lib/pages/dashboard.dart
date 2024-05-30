import 'package:agelog_app/constant/app_images.dart';
import 'package:agelog_app/constant/app_string.dart';
import 'package:agelog_app/data/day_data.dart';
import 'package:agelog_app/widgets/status_row.dart';
import 'package:flutter/material.dart';
import 'package:agelog_app/widgets/customer_row.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.appbar_title,
          style: TextStyle(
            color: Color(0XFFFC6C0F),
          ),
        ),
        centerTitle: true, // set title ra giữa
        backgroundColor: Colors.white,
        foregroundColor: const Color(0XFFFC6C0F),
        leading: IconButton(
          icon: const ImageIcon(AssetImage(AppImages.icBars)),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const ImageIcon(AssetImage(AppImages.icPlus)),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: IconButton(
              icon: const ImageIcon(AssetImage(AppImages.icBell)),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1.0, right: 3.0),
            child: IconButton(
              icon: const ImageIcon(AssetImage(AppImages.icComment)),
              onPressed: () {},
            ),
          ),
        ],
        // set đường viền bên dưới appbar
        shape: const Border(
          bottom: BorderSide(
            color: Color(0XFFFC6C0F),
            width: 3.0,
          ),
        ),
      ),
      body: _buildBody(),
      backgroundColor: Colors.white,
      //bottomNavigationBar: _buildBotNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildBottomNavigationAppBar(),
    );
  }

  Padding _buildBottomNavigationAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BottomNavigationBar(
          backgroundColor: const Color(0XFFFC6C0F),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              label: AppLabel.home_label,
              icon: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(AppImages.icHome),
                  //size: 32,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: AppLabel.consultant_label,
              icon: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(AppImages.icConsultant),
                  //size: 32,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: AppLabel.contact_label,
              icon: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(AppImages.icContact),
                  //size: 32,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: AppLabel.tr90_label,
              icon: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(AppImages.icTr90),
                  //size: 32,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _buildInfo(),
              Positioned(
                right: 0,
                top: 160,
                child: IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage('assets/images/Group_1325.png'),
                    color: Color(0XFFFC6C0F),
                    size: 50,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 200,
                child: IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage('assets/images/Group_1326.png'),
                    color: Color(0XFFFC6C0F),
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStatus(),
                  _buildTransformation(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Center _buildInfo() {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ), // tạo một widget đệm vào khoản giữa trên
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/unsplash_RDcEWH5hSDE.png'),
            radius: 80.0, // size
          ),
          Padding(padding: EdgeInsets.only(bottom: 20.0)),
          Text(
            AppString.user_name,
            style: TextStyle(color: Color(0XFFFC6C0F), fontSize: 18),
          ),
        ],
      ),
    );
  }

  Column _buildStatus() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'XX/ 90',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFC6C0F),
                    fontSize: 28,
                  ),
                  children: [
                    TextSpan(
                      text: ' Day(s)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text('Physical index '),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: const ImageIcon(
                      AssetImage('assets/images/gk60uK.tif.png'),
                      color: Colors.black,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      '05/12/2022',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: const ImageIcon(
                      AssetImage('assets/images/plus.png'),
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const ImageIcon(
                      AssetImage('assets/images/share.png'),
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: CustomerRow(
            iconString: 'assets/images/Vector.png',
            textIcon: 'Weight',
            containerContent: '00.0',
            textContainer: 'kg',
            containerContent2: '-5 kg',
          ),
        ),
        const  Divider(),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: CustomerRow(
            iconString: 'assets/images/Group_1330.png',
            textIcon: 'BMI',
            containerContent: '105',
            textContainer: 'kg/m^2',
            containerContent2: '103',
          ),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: CustomerRow(
            iconString: 'assets/images/Vector_1.png',
            textIcon: 'Body Fat',
            containerContent: '00.0',
            textContainer: '%',
            containerContent2: '00.0',
            colorText: Colors.yellowAccent,
          ),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: CustomerRow(
            iconString: 'assets/images/Vector_2.png',
            textIcon: 'Visceral Fat',
            containerContent: '00.0',
            textContainer: '',
            containerContent2: '00.0',
          ),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: CustomerRow(
            iconString: 'assets/images/Vector_3.png',
            textIcon: 'Sclera Musicale',
            containerContent: '00.0',
            textContainer: '%',
            containerContent2: '00.0',
          ),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: CustomerRow(
            iconString: 'assets/images/Group_1332.png',
            textIcon: 'Waistline',
            containerContent: '00',
            textContainer: 'cm',
            containerContent2: '00',
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Màu của đổ bóng
                    blurRadius: 5, // Độ mờ của đổ bóng
                    offset: const Offset(0, 5), // Độ dịch chuyển của đổ bóng (x,y)
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.all(const Size(120, 40)),
                  backgroundColor: WidgetStateProperty.all(const Color(0XFFFC6C0F)),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                child: const Text('Save'),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Legend: '),
              StatusRow(textStatus: 'Doing Well', colorStatus: Colors.green),
              StatusRow(textStatus: 'Constant', colorStatus: Colors.orange),
              StatusRow(textStatus: 'Need Help', colorStatus: Colors.red),
              StatusRow(textStatus: 'Last record', colorStatus: Colors.black),
            ],
          ),
        ),
      ],
    );
  }

  // Padding _buildBotNav() {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 30.0),
  //     child: ClipRRect(
  //       borderRadius: BorderRadius.circular(15),
  //       child: BottomAppBar(
  //         height: 80,
  //         color: const Color(0XFFFC6C0F), // Màu nền của BottomAppBar
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: <Widget>[
  //             IconButton(
  //               onPressed: () {},
  //               icon: ImageIcon(
  //                 const AssetImage('assets/images/home.png'),
  //                 color: Colors.white.withOpacity(0.8),
  //                 size: 80,
  //               ),
  //             ),
  //             IconButton(
  //               onPressed: () {},
  //               icon: const ImageIcon(
  //                 AssetImage('assets/images/Consultant.png'),
  //                 color: Colors.white,
  //               ),
  //             ),
  //             IconButton(
  //               onPressed: () {},
  //               icon: const ImageIcon(
  //                 AssetImage('assets/images/Y99dDJ.tif.png'),
  //                 color: Colors.white,
  //               ),
  //             ),
  //             IconButton(
  //               onPressed: () {},
  //               icon: const ImageIcon(
  //                 AssetImage('assets/images/tr90.png'),
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Column _buildTransformation() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              Text(
                'My Transformation',
                style: TextStyle(
                  color: Color(0XFFFC6C0F),
                  fontSize: 32,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                    'Click here for testing-rial guidelines, Your photos can be viewed by your '
                    'concomitant. If you wish to dissable that, please protected to Setting for '
                    'configuration. ',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                 ),
              ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10,bottom: 10),
          child: Wrap(
            spacing: 30, // Khoảng cách giữa các widget
            runSpacing:30, // Khoảng cách giữa các hàng
            children: List.generate(6, (index) {
              return  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(DayData.daytime[index]),
                      const Card(
                          child: ImageIcon(
                            AssetImage('images/Group_1339.png'),
                            size: 200,
                          ),
                      ),
                      const Text('Front'),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 170),
                        child: Text(
                          'Share',
                          style: TextStyle(color: Color(0XFFFC6C0F),
                          ),
                        ),
                      ),
                      Card(
                        child: ImageIcon(
                          AssetImage('images/Group_1339.png'),
                          size: 200,
                        ),
                      ),
                      Text('Slide'),
                    ],
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
