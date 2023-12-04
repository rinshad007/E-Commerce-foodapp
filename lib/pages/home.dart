import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/details.dart';
import 'package:fooddelivery/widget/supportwidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecreame = false, pizza = false, burger = false, salad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello Rinu', style: AppWidget.boldTextFieldStyle()),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text('Delicious Food', style: AppWidget.HeadlineTextFieldStyle()),
            Text('Discover and Get Great Food',
                style: AppWidget.LightTextFieldStyle()),
            SizedBox(
              height: 20,
            ),
            showItem(),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => detials(),));},
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          margin: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'lib/Images/salad222.jpeg',
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Veggie Taco Hash',
                                style: AppWidget.semiboldTextFieldStyle(),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Fresh and Healthy',
                                style: AppWidget.LightTextFieldStyle(),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '\$25',
                                style: AppWidget.semiboldTextFieldStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        margin: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'lib/Images/salad222.jpeg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Mix Veg Salad',
                              style: AppWidget.semiboldTextFieldStyle(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Spicy with Onion',
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '\$28',
                              style: AppWidget.semiboldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'lib/Images/salad222.jpeg',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            width:MediaQuery.of(context).size.width/2,
                              child: Text(
                            'Medi Terinuim  Chick pea salad',
                            style: AppWidget.semiboldTextFieldStyle(),
                          )),
                          SizedBox(height: 5,),
                          Container(
                              width:MediaQuery.of(context).size.width/2,
                              child: Text(
                                'Honey goot Cheese',
                                style: AppWidget.LightTextFieldStyle(),
                              )),
                          Container(
                              width:MediaQuery.of(context).size.width/2,
                              child: Text(
                                '\$28',
                                style: AppWidget.semiboldTextFieldStyle(),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecreame = true;
            pizza = false;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecreame ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'lib/Images/icecream.jpeg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecreame = false;
            pizza = true;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'lib/Images/piza.jpeg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecreame = false;
            pizza = false;
            burger = true;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'lib/Images/download.jpeg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecreame = false;
            pizza = false;
            burger = false;
            salad = true;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'lib/Images/salad.jpeg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
