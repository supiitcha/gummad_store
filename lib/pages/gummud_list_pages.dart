import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gummad_store/gummud/gummud_item.dart';
import 'package:gummad_store/pages/details_gummud_pages.dart';

class GummudList extends StatefulWidget {
  static const routeName = '/gummud_list_pages';
  const GummudList({Key? key}) : super(key: key);


  @override
  _GummudListState createState() => _GummudListState();
}

class _GummudListState extends State<GummudList> {
  var items = [
    GummudItem(
      id: 1,
      name: 'กระสอบทรายตั้งพื้น',
        price: '5,990',
      image: '1.jpg'
    ),
    GummudItem(
        id: 2,
        name: 'อุปกรณ์พยุงข้อเท้า',
        price: '875',
        image: '2.jpg'
    ),
    GummudItem(
        id: 3,
        name: 'เป้าหุ่นคนชกมวย',
        price: '12,500',
        image: '3.jpg'
    ),
    GummudItem(
        id: 4,
        name: 'นวมฝึกซ้อม',
        price: '565',
        image: '4.jpg'
    ),
    GummudItem(
        id: 5,
        name: 'ผ้าพันมือนักมวย',
        price: '300',
        image: '5.jpg'
    ),
    GummudItem(
        id: 6,
        name: 'ชุดนวมมวยและผ้าพันมือ',
        price: '1,200',
        image: '6.jpg'
    ),
    GummudItem(
        id: 7,
        name: 'เป่าล่อสั้น',
        price: '2,400',
        image: '7.jpg'
    ),
    GummudItem(
        id: 8,
        name: 'สนับแข้ง',
        price: '980',
        image: '8.jpg'
    ),
    GummudItem(
        id: 9,
        name: 'หมวกกันสะเทือนชกมวย',
        price: '1,490',
        image: '9.jpg'
    ),
    GummudItem(
        id: 10,
        name: 'กางเกงมวย',
        price: '1,100',
        image: '10.jpg'
    ),
    GummudItem(
        id: 11,
        name: 'พันชิ่งบอลพร้อมฐาน',
        price: '6,900',
        image: '11.jpg'
    ),
    GummudItem(
        id: 12,
        name: 'กระสอบทรายผ้า',
        price: '5,700',
        image: '12.jpg'
    ),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/00.png'),
      fit: BoxFit.fill
      )
      ),
      child: SafeArea(
        child: Center(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index){
                var item = items[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child:
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context,
                          GummudDetail.routeName,
                          arguments: item);
                    },
                    child:Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/${item.image}',
                          width: 150.0,
                          height: 150.0,),
                        SizedBox(width: 8.0,),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.name,
                                  style: GoogleFonts.kanit(fontSize: 25.0)),
                              Text('${item.price} ''บาท',
                                  style: GoogleFonts.kanit(fontSize: 20.0)),
                            ]
                        )
                      ]
                  ),

                ),
                ),
                );
    }
        ),
      ),
      )
    )
    );
  }
}
