import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class load_quote_texts extends StatelessWidget {
  const load_quote_texts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 100,),
          Icon(FontAwesomeIcons.quoteRight,
            color: Colors.white,
            size: 48,),
          SizedBox(height: 32,),
          Padding(
            padding:  EdgeInsets.all(16.0),
            child: Text('"Skincare is not\n superficial because it\'s\n healthcare. When you\n have beautiful skin it\'s a\n sign that you have a\n healthy mind and\n body"',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),),
          ),
          SizedBox(height: 32,),
          Padding(
            padding:  EdgeInsets.fromLTRB(30, 0, 16, 0),
            child: Text('- DR MURAD',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w800,
                  color: Colors.white
              ),),
          )
        ],
      ),
    );
  }
}

