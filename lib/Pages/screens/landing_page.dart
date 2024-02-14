// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../bloc/landing_page_bloc.dart';
//
// List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
//   BottomNavigationBarItem(
//     icon: Icon(Icons.home_outlined),
//     label: 'Home',
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.bar_chart),
//     label: 'Feature',
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.account_box),
//     label: 'Account',
//   ),
// ];
//
// const List<Widget> bottomNavScreen = <Widget>[
//   Text('Home'),
//   Text('Feature'),
//   Text('Account'),
// ];
//
// class LandingPage extends StatelessWidget {
//   const LandingPage({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<LandingPageBloc, LandingPageState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Scaffold(
//           appBar: PreferredSize(
//             preferredSize: Size.fromHeight(70),
//             child: CustomAppBar(),
//           ),
//           body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
//           bottomNavigationBar: Container(
//             width: 428, // Set width
//             height: 84, // Set height
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(0),
//                 topRight: Radius.circular(0),
//                 bottomLeft: Radius.circular(32),
//                 bottomRight: Radius.circular(32),
//               ),
//             ),
//             child: BottomNavigationBar(
//               backgroundColor: Color(0xFF014A39),
//               items: bottomNavItems,
//               currentIndex: state.tabIndex,
//               selectedItemColor: Theme.of(context).colorScheme.primary,
//               unselectedItemColor: Colors.green,
//               onTap: (index) {
//                 BlocProvider.of<LandingPageBloc>(context)
//                     .add(TabChange(tabIndex: index));
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
// class CustomAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 94,
//       color: Color(0xFFCCE9DC),
//       padding: EdgeInsets.only(top: 44),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             width: 132,
//             height: 32,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/masjid.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(width: 5),
//           Text(
//             'MASJID.LIFE',
//             style: TextStyle(
//               fontFamily: 'Roboto',
//               fontSize: 16,
//               fontWeight: FontWeight.w800,
//               color: Color(0xFF008F51),
//               height: 19 / 16,
//             ),
//           ),
//           Spacer(),
//           InkWell(
//             onTap: () {
//
//             },
//             child: Container(
//               width: 32,
//               height: 32,
//               margin: EdgeInsets.only(right: 6),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               padding: EdgeInsets.all(4),
//               child: Icon(
//                 Icons.search,
//                 color: Color(0xFF008F51),
//                 size: 24,
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//
//             },
//             child: Container(
//               width: 32,
//               height: 32,
//               margin: EdgeInsets.only(right: 12),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               padding: EdgeInsets.all(4),
//               child: Icon(
//                 Icons.menu,
//                 color: Color(0xFF008F51),
//                 size: 24,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
