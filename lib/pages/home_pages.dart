import 'package:flutter/material.dart';
import 'package:gummad_store/pages/gummud_list_pages.dart';
import 'package:gummad_store/pages/order_pages.dart';

class Homegummud extends StatefulWidget {
  static const routeName = '/homeGummud';
  const Homegummud({Key? key}) : super(key: key);

  @override
  _HomegummudState createState() => _HomegummudState();
}

class _HomegummudState extends State<Homegummud> {
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUMMUD STORE',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.store),
                  label: 'Store',
              ),
          BottomNavigationBarItem(
              icon:Icon(Icons.shopping_basket_outlined),
              label: 'Order',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      body: _selectedBottomNavIndex == 0
        ? GummudList()
          : Gummudorder()
        );
  }
}
