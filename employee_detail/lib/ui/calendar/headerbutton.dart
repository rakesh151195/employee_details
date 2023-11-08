import 'package:flutter/material.dart';

class GAllProductListWidiget extends StatelessWidget {
  const GAllProductListWidiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> allproduct = [
      {
        'id': "1",
        'title': "lbl_mutual_funds",
      },
      {
        'id': "2",
        'title': "lbl_us_equities",
      },
      {
        'id': "3",
        'title': "ipo",
      },
      {
        'id': "4",
        'title': "lbl_insurance2",
      },
      {
        'id': "5",
        'title': "stock",
      },
    ];

    return Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "All Products",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.count(
                physics: new NeverScrollableScrollPhysics(),
                //childAspectRatio: (1 / ),
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                shrinkWrap: true,
                children: List.generate(allproduct.length, (index) {
                  return InkWell(
                    onTap: () {
                      selectpagesAccoringToName(
                          allproduct[index]['id'].toString(), context);

                      print('Inkwell Tapped');
                    },
                    onLongPress: () {
                      print('InkWell Long Pressed');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            allproduct[index]['title'].toString(),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                })),
          ],
        ));
  }

  void selectpagesAccoringToName(String string, BuildContext context) {
    if (string == "1") {
    } else if (string == "2") {
    } else if (string == "3") {
    } else if (string == "4") {}
  }
}
