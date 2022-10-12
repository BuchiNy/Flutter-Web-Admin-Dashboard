import 'package:admin/constants/style.dart';
import 'package:admin/helpers/responsiveness.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

AppBar topNavigationBar (BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)?
            Row(
                children: [
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Icon(Icons.local_police_outlined, size:25),
                    )
                ],
            ) : IconButton(icon: const Icon(Icons.menu_outlined), onPressed: (){
                key.currentState?.openDrawer();}),
      elevation: 0,
      title: Wrap(
        children: [Row(
          children: [
            Visibility(child: CustomText(
              text: 'Primis',
              color: Colors.black,
              weight: FontWeight.bold,
              size: 16 ,)
            ),
            Expanded(child: Container()),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: darke.withOpacity(.7),
              ),
              onPressed: (){},
            ),
            Stack(
              children: [
                IconButton(
                    icon: Icon(Icons.notifications, color: darke.withOpacity(.7),),
                    onPressed: (){}),
                Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 8,
                      height: 12,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)
                      ),
                    ))
              ],
            ),
            Container(
              width: 1,
              height: 22,
              color: lightGrey,
            ),
            const SizedBox(
              width: 5,
            ),
            CustomText(text: "Mabuchi Nyirenda", size: 16, color: lightGrey, weight: FontWeight.bold),

            SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(Icons.person_outline, color: darke,),),
              ),
            )
          ],
        ),
      ]
      ),
      iconTheme: IconThemeData(color: darke),
      backgroundColor: light,
    );