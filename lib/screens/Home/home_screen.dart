import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:real_estate_app1/customIcons.dart';
import 'package:real_estate_app1/screens/Home/Tabs/Apartment_tab_view.dart';
import 'package:real_estate_app1/screens/Home/Tabs/flat_tab_view.dart';
import 'package:real_estate_app1/screens/Home/Tabs/home_tab_view.dart';
import 'package:real_estate_app1/screens/Home/Tabs/villa_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _searchcontroller;
  late TabController _tabController;
  late ScrollController _scrollController;
  Color purple = Color.fromRGBO(89, 33, 243, 1);

  int _currentIndex = 0;
  @override
  void initState() {
    _searchcontroller = SearchController();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _searchcontroller.dispose();
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                // color: Colors.green,
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              MyFlutterApp.location,
                              size: 15,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'California, United State',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                          child: Padding(
                            padding:
                                EdgeInsets.only(right: 12, bottom: 20, top: 20),
                            child: Icon(
                              Icons.notifications_outlined,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 15,
              // ),
              Container(
                // color: Colors.blueAccent,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.top,
                        controller: _searchcontroller,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            focusColor: Colors.transparent,
                            alignLabelWithHint: true,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                            prefixIcon: Icon(
                              MyFlutterApp.search,
                              size: 18,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(89, 33, 243, 1),
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        MyFlutterApp.sliders,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildTabBar(),

              _buildTabContent()
              // Container(
              //     // height: 80,
              //     width: MediaQuery.of(context).size.width,
              //     color: Colors.grey,
              //     child:),
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildTabBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildTabItem(0, MyFlutterApp.home, 'Home'),
        _buildTabItem(1, MyFlutterApp.building, 'Apartment'),
        _buildTabItem(2, MyFlutterApp.home_1, 'Villa'),
        _buildTabItem(3, Icons.apartment_sharp, 'Flat'),
      ],
    );
  }

  Widget _buildTabItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: _currentIndex == index ? purple : Colors.white,
              ),
              child: Icon(
                icon,
                size: 20,
                color: _currentIndex == index ? Colors.white : Colors.black,
              ),
            ),
            Text(
              label,
              style: const TextStyle(color: Colors.black, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    return IndexedStack(
      index: _currentIndex,
      children: const [
        HomeTabView(),
        ApartmentTabView(),
        VillaTabView(),
        FlatTabView(),
      ],
    );
  }

  Widget _buildTabContentItem(String content) {
    return Center(
      child: Text(
        content,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
