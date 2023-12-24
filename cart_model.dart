import 'package:flutter/cupertino.dart';

class CartModel  extends ChangeNotifier{
  final List  _shopItems =[
  ("carrot","20"),
    ("broccoli","30"),
    ("spinach","40"),
    ("onion","50"),
    ("potatoes","50"),
    ("cauliflower","30"),
  ("peas","40"),
    ("cabbage","20"),
  ];
  get shopItems => _shopItems;
}