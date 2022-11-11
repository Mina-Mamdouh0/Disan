import 'package:flutter/material.dart';
import 'package:popup_menu_2/contextual_menu.dart';
import 'package:popup_menu_2/popup_menu_item.dart';

Widget popUpManu(BuildContext context,key) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: ContextualMenu(
      targetWidgetKey: key,
      ctx: context,
      maxColumns: 1,
      backgroundColor: Colors.grey[300],
      highlightColor: Colors.white,
      onDismiss: () {

      },
      items: [
        CustomPopupMenuItem(
          press: (){},
          title: 'Save',
          textAlign: TextAlign.justify,
          textStyle: const TextStyle(color: Colors.black),
          image: const Icon(Icons.save_alt, color: Colors.black),
        ),
        CustomPopupMenuItem(
          press: (){},
          title: 'Follow',
          textAlign: TextAlign.justify,
          textStyle: const TextStyle(color: Colors.black),
          image: const Icon(Icons.add, color: Colors.black),
        ),
        CustomPopupMenuItem(
          press: (){},
          title: 'Mute',
          textAlign: TextAlign.justify,
          textStyle: const TextStyle(color: Colors.black),
          image: const Icon(Icons.volume_mute, color: Colors.black),
        ),
        CustomPopupMenuItem(
          press: (){},
          title: 'Block',
          textAlign: TextAlign.justify,
          textStyle: const TextStyle(color: Colors.black),
          image: const Icon(Icons.block, color: Colors.black),
        ),
        CustomPopupMenuItem(
          press: (){},
          title: 'Report',
          textAlign: TextAlign.justify,
          textStyle: const TextStyle(color: Colors.black),
          image: const Icon(Icons.report, color: Colors.black),
        ),
        CustomPopupMenuItem(
          press: (){},
          title: 'Delete',
          textAlign: TextAlign.justify,
          textStyle: const TextStyle(color: Colors.black),
          image: const Icon(Icons.remove, color: Colors.black),
        ),
      ],
      child:  Icon(Icons.more_vert, size: 20,key: key,),
    ),
  );
}
