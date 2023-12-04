import 'package:flutter/material.dart';
import 'package:fooddelivery/widget/supportwidget.dart';

class detials extends StatefulWidget {
  const detials({super.key});

  @override
  State<detials> createState() => _detialsState();
}

class _detialsState extends State<detials> {
  int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            Image.asset(
              'lib/Images/salad.jpeg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mediterano',
                      style: AppWidget.semiboldTextFieldStyle(),
                    ),
                    Text(
                      'ChichPea Salad',
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    if(a>1){
                    --a;}
                    setState(() {

                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
                SizedBox(width: 10,),
                Text(a.toString(),style: AppWidget.semiboldTextFieldStyle(),),
                SizedBox(width: 10,),

                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {

                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
