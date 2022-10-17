
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioCard extends StatefulWidget {

final IconData leadingIcon;
final String title;
final String subTitle;
final IconData trailingIcon;
final  void Function() onPressed;


  BioCard( {required this.leadingIcon,required this.title,required this.subTitle,required this.trailingIcon, required this.onPressed});

  @override
  State<BioCard> createState() => _BioCardState();
}

class _BioCardState extends State<BioCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: ListTile(
        onTap: widget.onPressed,
        leading: Icon(widget.leadingIcon),
        title: Text(widget.title,style: GoogleFonts.actor(fontWeight: FontWeight.bold)),
        subtitle: Text(widget.subTitle,style: GoogleFonts.cairo(fontWeight: FontWeight.bold)),
        trailing: Icon(widget.trailingIcon),
      ),
    );
  }
}


