import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
//           Container(
//             alignment: Alignment.center,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 showCursor: true,
//                 decoration: InputDecoration(
//
//                   fillColor: AppColor.background ,
//                   focusedBorder: InputBorder.none,
//
//                   filled: true,
// hoverColor: AppColor.textfiledborder ,
//
//                   border: OutlineInputBorder(
//
//                     gapPadding: 1,
//
//                     borderSide: BorderSide(
//                       color: AppColor.textfiledborder,
//                       style: BorderStyle.solid,
//                       strokeAlign: 1,
//                       width: 2
//                     ),
//                     borderRadius: BorderRadius.circular(10)
//                   )
//                 ),
//               ),
//             ),
//             width: 300,
//             height: 300,
//             color: AppColor.cardbackground,
//           )
        ],
      ),

    );
  }
}
