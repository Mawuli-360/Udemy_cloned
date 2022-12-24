import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/textfield.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xFF15131D),
                child: TextFormField(
                  style: const TextStyle(color: defaultColor, fontSize: 20),
                  cursorColor: defaultColor,
                  decoration: inputDecoration,
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: defaultColor,
                ))
          ],
        ),
      ),
    );
  }
}
