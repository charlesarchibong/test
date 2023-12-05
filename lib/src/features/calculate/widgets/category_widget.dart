import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final String category;

  const CategoryWidget({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool onTapped = false;
  @override
  Widget build(BuildContext context) {
    const deepBlueColor = Color(0xff001a33);
    return GestureDetector(
      onTap: () {
        setState(() {
          onTapped = !onTapped;
        });
      },
      child: FittedBox(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: onTapped == true ? deepBlueColor : Colors.grey,
            ),
            color: onTapped == true ? deepBlueColor : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: onTapped == true
                ? Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        widget.category,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                : Text(
                    widget.category,
                    style: const TextStyle(color: deepBlueColor),
                  ),
          ),
        ),
      ),
    );
  }
}
