import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:google_fonts/google_fonts.dart';

/// Example 2 Multiple folding cells inside [Column]
class FoldingCellMultipleCardsDemo extends StatelessWidget {
//------------------- string parameter ----------------------------------------//

  String card_title_1 = "FIR";
  String card_detail_1 =
      "Fir which is also called first information report is an information of commission of cognizable offence given to police by victim or any other person having knowledge that a cognizable offence has been committed.";

  String card_title_2 = "card title 2";
  String card_detail_2 = "card details 2";

  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Information',
          ),
          centerTitle: true,
        ),
        // backgroundColor: Color.fromARGB(100, 202, 167, 127),
        // backgroundColor: Color.fromARGB(100, 196, 150, 98),

        body: SafeArea(
            child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              //----------------------- CARD 1 -----------------------------------------------//
              SimpleFoldingCell.create(
                key: _foldingCellKey1,
                frontWidget:
                    _buildFrontWidget(_foldingCellKey1, "What is FIR ?"),
                innerWidget: _buildInnerWidget(
                    _foldingCellKey1, card_title_1, card_detail_1),
                cellSize: Size(MediaQuery.of(context).size.width, 125),
                padding: EdgeInsets.all(15),
                animationDuration: Duration(milliseconds: 300),
                borderRadius: 10,
                onOpen: () => print('cell 1 opened'),
                onClose: () => print('cell 1 closed'),
              ),
              //--------------------------- CARD 2 --------------------------------------------//
              SimpleFoldingCell.create(
                key: _foldingCellKey2,
                frontWidget: _buildFrontWidget(_foldingCellKey2, "CARD 2"),
                innerWidget: _buildInnerWidget(
                    _foldingCellKey2, card_title_2, card_detail_2),
                cellSize: Size(MediaQuery.of(context).size.width, 125),
                padding: EdgeInsets.all(15),
                animationDuration: Duration(milliseconds: 300),
                borderRadius: 10,
                onOpen: () => print('cell 2 opened'),
                onClose: () => print('cell 2 closed'),
              ),
            ],
          ),
        )));
  }

  Widget _buildFrontWidget(
      GlobalKey<SimpleFoldingCellState> key, String title) {
    return Container(
      color: Color(0xFFffcd3c),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 0,
            child: FlatButton(
              onPressed: () => key?.currentState?.toggleFold(),
              child: Text(
                "OPEN",
              ),
              textColor: Colors.white,
              color: Colors.indigoAccent,
              splashColor: Colors.white.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget(GlobalKey<SimpleFoldingCellState> key,
      String card_title, String card_detail) {
    return Container(
      color: Color(0xFFecf2f9),
      padding: EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              card_title,
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              card_detail,
              style: GoogleFonts.aldrich(
                color: Color(0xFF2e282a),
                fontSize: 18.0,
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 0,
            child: FlatButton(
              onPressed: () => key?.currentState?.toggleFold(),
              child: Text(
                "Close",
              ),
              textColor: Colors.white,
              color: Colors.indigoAccent,
              splashColor: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
