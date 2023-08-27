


import 'package:flutter/material.dart';

class MachineryListTile extends StatefulWidget {
  // const MachineryListTile({super.key});

  var txt_slno, txt_desc, txt_qty, txt_font_size, weight;
  Color txt_color, row_color;

  MachineryListTile({required this.weight, required this.row_color, required this.txt_slno, required this.txt_desc, required this.txt_qty, required this.txt_color, required this.txt_font_size});
  @override
  State<MachineryListTile> createState() => _MachineryListTileState();
}

class _MachineryListTileState extends State<MachineryListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: widget.row_color,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1,child: Text(widget.txt_slno, style: TextStyle(color: widget.txt_color, fontSize: widget.txt_font_size, fontWeight: widget.weight),)),
            Expanded(flex: 3,child: Text(widget.txt_desc, style: TextStyle(color: widget.txt_color, fontSize: widget.txt_font_size, fontWeight: widget.weight),)),
            Expanded(flex: 1,child: Text(widget.txt_qty, style: TextStyle(color: widget.txt_color, fontSize: widget.txt_font_size, fontWeight: widget.weight),)),
          ],
        ),
      ),
    );
  }
}
