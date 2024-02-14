import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Pages/bloc/landing_page_bloc.dart';
import 'Widgets/custom_appbar.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.bar_chart),
    label: 'Feature',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.account_box),
    label: 'Account',
  ),
];

// const List<Widget> bottomNavScreen = <Widget>[
//   Text('Home'),
//   Text('Feature'),
//   Text('Account'),
// ];

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: CustomAppBar(),
          ),
          body: CustomBody(
          ),
          bottomNavigationBar: Container(
            width: 428, // Set width
            height: 84, // Set height
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: Color(0xFF014A39),
              items: bottomNavItems,
              currentIndex: state.tabIndex,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Colors.green,
              onTap: (index) {
                BlocProvider.of<LandingPageBloc>(context)
                    .add(TabChange(tabIndex: index));
              },
            ),
          ),
        );
      },
    );
  }
}