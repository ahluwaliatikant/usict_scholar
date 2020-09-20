import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List <BarItem> barItems;
  final Duration animationDuration;
  final Function onBarTap;


  AnimatedBottomBar({this.barItems , this.animationDuration , this.onBarTap});
  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> with TickerProviderStateMixin{

  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0 ,
          bottom: 32.0 ,
          right: 16.0,
          left: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: _buildBarItems(),
        ),
      ),
    );
  }

  List <Widget> _buildBarItems(){
    List<Widget> _barItems = List();
    for(int i=0 ; i<widget.barItems.length ; i++ ){
      BarItem item = widget.barItems[i];
      bool isSelected  = selectedBarIndex == i;
      _barItems.add(InkWell(
        splashColor: Colors.transparent,
        onTap: (){
          setState(() {
          selectedBarIndex = i;
          widget.onBarTap(selectedBarIndex);
        });
        },
        child: AnimatedContainer(
          duration: widget.animationDuration,
          padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 16.0),

          decoration: BoxDecoration(
            color: isSelected ? item.colour.withOpacity(0.30) : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Row(
            children: <Widget>[
              Icon(
                item.iconData ,
                color: isSelected ? item.colour : Colors.black,
                size: 32,
              ),
              SizedBox(
                width: 10.0,
              ),
              AnimatedSize(
                duration: widget.animationDuration,
                curve: Curves.easeInOut,
                vsync: this,
                child: AnimatedSize(
                  duration: widget.animationDuration,
                  curve:Curves.easeInOut,
                  vsync: this,
                  child: Text(
                    isSelected ? item.text : "",
                    style: TextStyle(
                      color: item.colour,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      )
      );
    }
    return _barItems;
  }
}

class BarItem {
  String text;
  IconData iconData;
  Color colour;
  //ListView myList;
  GridView myGrid;
  QuerySnapshot myQuery;
  BarItem({this.text , this.iconData , this.colour ,this.myGrid ,this.myQuery});
}

