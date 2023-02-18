import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mutti_homepage/widgets/homemenu_panel.dart';
import 'package:mutti_homepage/widgets/programcard.dart';

void main() {
  runApp(const MuttiHomePage());
}

class MuttiHomePage extends StatefulWidget {
  const MuttiHomePage({super.key});

  @override
  State<MuttiHomePage> createState() => _MuttiHomePageState();
}

class _MuttiHomePageState extends State<MuttiHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Hello GREGORY 👋🏿',
                        style: TextStyle(
                          color: Color(0xFF3E4851),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.settings,
                        color: Color(0xFF3E4851),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    height: 120.0,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeMenuPanel(
                              icon: FontAwesomeIcons.addressCard,
                              iconColor: Colors.pink.shade200,
                              title: 'Mutti ID',
                              subtitle: '872627',
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,

                              children: const [
                                SizedBox(
                                  height: 30.0,
                                  child: VerticalDivider(),
                                ),
                                HomeMenuPanel(
                                  title: 'Lifetime savings',
                                  infoIcon: '\u24D8',
                                  icon: FontAwesomeIcons.piggyBank,
                                  iconColor: Color(0xFFb4c4e0),
                                  subtitle: 'GHS 434.40',
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            HomeMenuPanel(
                              icon: FontAwesomeIcons.wallet,
                              iconColor: Colors.amber.shade300,
                              title: 'Wallet balance',
                              infoIcon: '\u24D8',
                              subtitle: '-',
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                SizedBox(
                                  height: 30.0,
                                  child: VerticalDivider(),
                                ),
                                HomeMenuPanel(
                                  title: 'Loyalty points',
                                  infoIcon: '\u24D8',
                                  icon: FontAwesomeIcons.gift,
                                  iconColor: Colors.lightBlue,
                                  subtitle: 'GHS 22715.00',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Programs',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3E4851),
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                'Discover all',
                                style: TextStyle(
                                    color: Color(0xFFE9C855),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFFE9C855),
                                size: 12.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      SizedBox(
                        height: 150.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return programCards[index];
                            },
                            itemCount: programCards.length),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 120.0,
                    padding: const EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade400,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                'Mutti Store',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Text(
                              'Affordable healthcare',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12.0),
                            ),
                            const Text(
                              'delivered to you!',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12.0),
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: Text(
                                    'Shop now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 7.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 12.0,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 80.0,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/manpush1.png',
                                    width: 80.0,
                                  ),
                                  Image.asset(
                                    'assets/images/shuo.png',
                                    width: 80.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: const Color(0xFF3E4851)),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.medical_services_outlined,
                            size: 14.0,
                            color: Color(0xFF3E4851),
                          ),
                          SizedBox(width: 7.0),
                          Text(
                            'Find a mutti pharmacy',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF3E4851),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Icon(Icons.home_outlined),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: FaIcon(
                  FontAwesomeIcons.bookMedical,
                  size: 22.0,
                ),
              ),
              label: 'Health diary',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Icon(Icons.shopping_cart_outlined),
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Icon(Icons.chat_bubble_outline),
              ),
              label: 'Chat',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.black45,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          iconSize: 26.0,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
        ),
      ),
    );
  }
}
