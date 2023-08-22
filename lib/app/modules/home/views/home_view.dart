import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jehegram/app/ui/widgets/main_list_tile_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.menu),
      //   onPressed: () => Scaffold.of(context).openDrawer(),
      // ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10,
            ),
          ],
        ),
      ),
      actions: [
        Icon(Icons.lock),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.search),
        SizedBox(
          width: 20,
        ),
      ],
      title: Text(
        "Telegram",
      ),
      bottom: TabBar(
        controller: TabController(length: 4, vsync: controller),
        tabs: [
          Tab(
            text: "All",
          ),
          Tab(
            text: "Sharif",
          ),
          Tab(
            text: "Relegious",
          ),
          Tab(
            text: "News",
          ),
        ],
      ),
    );
    final body2 = GetBuilder<HomeController>(builder: (_) {
      return ListView(
        children: [
          for (int tileIndex = 0;
              tileIndex < _.messageViewList.length;
              tileIndex++) ...[
            GetBuilder<HomeController>(
              builder: (_) {
                return MainListTileWidget(
                  title: _.messageViewList[tileIndex].$1,
                  dateTime: HomeController.to.messageViewList[tileIndex].$3,
                  lastMessageText:
                      Get.find<HomeController>().messageViewList[tileIndex].$2,
                  nameOfLastSender:
                      HomeController.to.messageViewList[tileIndex].$4,
                );
              },
            ),
            Divider(
              indent: 80,
              endIndent: 10,
              height: 1,
            )
          ]
        ],
      );
    });
    final bottomNavigationBar2 = BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home,
            color: Colors.green,
          ),
        ),
        BottomNavigationBarItem(
          label: "Dashbord",
          icon: Icon(Icons.dashboard),
        ),
      ],
    );

    // var body3 = CustomScrollView(
    //       slivers: [
    //         SliverAppBar(
    //           flexibleSpace: FlexibleSpaceBar(
    //             title: Container(
    //               color: Colors.red,
    //               child: Text("Appbar"),
    //             ),
    //             centerTitle: false,
    //             background: Image.network(
    //                 "https://cdn.sstatic.net/Img/teams/teams-illo-free-sidebar-promo.svg?v=47faa659a05e"),
    //             collapseMode: CollapseMode.parallax,
    //             expandedTitleScale: 3,
    //           ),
    //           expandedHeight: 500,
    //           collapsedHeight: 100,
    //           floating: true,
    //           pinned: true,
    //           elevation: 10,
    //           snap: true,
    //
    //           // scrolledUnderElevation: 10,
    //         ),
    //         SliverToBoxAdapter(
    //           child: TextField(),
    //         ),
    //         SliverList(
    //           delegate: SliverChildBuilderDelegate(
    //             childCount: 5,
    //             (context, index) => Container(
    //               height: 100,
    //               color: buildRandomColor(),
    //             ),
    //           ),
    //         ),
    //         SliverGrid(
    //           delegate: SliverChildListDelegate(
    //             [
    //               for(int i =0;i<100;i++)
    //                 Container(color:buildRandomColor()),
    //             ]
    //           ),
    //           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //             maxCrossAxisExtent: 80,
    //           ) ,
    //         ),
    //
    //       ],
    //     );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Demo',
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: appBar,
            body: body2,
            drawer: Drawer(
              child: Placeholder(),
            ),
            drawerEnableOpenDragGesture: true,
            bottomNavigationBar: bottomNavigationBar2,
          );
        }
      ),
    );
  }

  Color buildRandomColor() {
    return Color.fromARGB(
      255,
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
    );
  }
}
