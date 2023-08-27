

import 'package:flutter/material.dart';

class ClientListTile extends StatefulWidget {
  // const ClientListTile({super.key});
  var txt_slno, txt_client_name, txt_font_size, weight;
  Color txt_color, row_color;

  ClientListTile({required this.weight, required this.row_color, required this.txt_slno, required this.txt_client_name, required this.txt_color, required this.txt_font_size});
  @override
  State<ClientListTile> createState() => _ClientListTileState();
}

class _ClientListTileState extends State<ClientListTile> {
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
            Expanded(flex: 3,child: Text(widget.txt_client_name, style: TextStyle(color: widget.txt_color, fontSize: widget.txt_font_size, fontWeight: widget.weight),)),
          ],
        ),
      ),
    );
  }
}
