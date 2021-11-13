import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gummad_store/gummud/gummud_item.dart';
import 'package:gummad_store/pages/order_pages.dart';

class GummudDetail extends StatefulWidget {
  static const routeName = '/gummudDetails';
  const GummudDetail({Key? key}) : super(key: key);

  @override
  _GummudDetailState createState() => _GummudDetailState();
}

class _GummudDetailState extends State<GummudDetail> {
  @override
  Widget build(BuildContext context) {
    final gum = ModalRoute.of(context)!.settings.arguments as GummudItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('GUMMUD STORE',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Image.asset('assets/images/${gum.image}',),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ชื่อสินค้า:  ''${gum.name}' ,style: GoogleFonts.kanit(fontSize: 20.0)),
                  Text('ราคา: '   '${gum.price} ''บาท',style:GoogleFonts.kanit(fontSize: 20.0)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 50.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context,
                              Gummudorder.routeName,);
                        },
                        child: Icon(
                          Icons.shopping_basket,
                          size: 30.0, // ขนาดไอคอน
                          color: Colors.white,
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
