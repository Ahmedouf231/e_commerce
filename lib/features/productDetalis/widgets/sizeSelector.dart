import 'package:e_commerce/core/uitils/colors.dart';
import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  List<String> sizes = ['38', '39', '40', '41', '42'];
  String selectedSize = '40'; 

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Size',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ColorsApp.primaryCalor,
          ),
        ),
        const SizedBox(height: 10), 
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: sizes.map((size) {
            bool isSelected = selectedSize == size;
            return GestureDetector(
              onTap: () => selectSize(size),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: isSelected ? ColorsApp.primaryCalor: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsApp.primaryCalor),
                ),
                child: Text(
                  size,
                  style: TextStyle(
                    color: isSelected ? Colors.white : ColorsApp.primaryCalor,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
