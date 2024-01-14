import 'package:flutter/material.dart';

class bulanSelect extends StatelessWidget {
  final String? bulan_terpilih;
  final Function(String) bulan_dipilih;

  bulanSelect({
    required this.bulan_terpilih,
    required this.bulan_dipilih,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text("Bulan", style: TextStyle(color: Colors.orange)),
          value: bulan_terpilih,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.orange,
          ),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(
              color: Colors.orange, fontSize: 16, fontWeight: FontWeight.bold),
          onChanged: (String? newValue) {
            if (newValue != null) {
              bulan_dipilih(newValue);
            }
          },
          items: <String>[
            '1',
            '2',
            '3',
            '4',
            '5',
            '6',
            '7',
            '8',
            '9',
            '10',
            '11',
            '12',
            // ... Add more options as needed
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
