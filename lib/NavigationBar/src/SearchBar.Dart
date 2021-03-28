import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode _focus = new FocusNode();
  bool isfocus = false;
  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    isfocus = false;
  }

  void _onFocusChange() {
    setState(() {
      isfocus = !isfocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      width: 500,
      height: 35,
      child: TextFormField(
        focusNode: _focus,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 8.0, top: -1),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Palette.focustextsearch, width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            suffixIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                border: Border(
                  top: BorderSide(
                      width: 2.0,
                      color:
                          isfocus ? Palette.focustextsearch : Palette.searchBg),
                  bottom: BorderSide(
                      width: 2.0,
                      color:
                          isfocus ? Palette.focustextsearch : Palette.searchBg),
                  left: BorderSide(
                      width: 2.0,
                      color:
                          isfocus ? Palette.focustextsearch : Palette.searchBg),
                  right: BorderSide(
                      width: 2.0,
                      color:
                          isfocus ? Palette.focustextsearch : Palette.searchBg),
                ),
                color: Palette.searchBg,
              ),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )),
        cursorColor: Colors.black,
        style: TextStyle(fontSize: 20, height: 1.30),
      ),
    );
  }
}
