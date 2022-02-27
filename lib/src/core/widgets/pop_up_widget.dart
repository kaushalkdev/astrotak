import 'package:flutter/material.dart';

class PopupWidet extends StatefulWidget {
  final List<String> values;
  final Function(String value)? onSelected;
  final Widget? child;

  const PopupWidet({
    Key? key,
    required this.values,
    this.onSelected,
    this.child,
  }) : super(key: key);

  @override
  State<PopupWidet> createState() => _PopupWidetState();
}

class _PopupWidetState extends State<PopupWidet> {
  String selectedValue = '';

  @override
  void initState() {
    super.initState();
    selectedValue = widget.values.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PopupMenuButton<String>(
          onSelected: (value) {
            selectedValue = value;
            if (widget.onSelected != null) {
              widget.onSelected!(selectedValue);
            }

            setState(() {});
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.child ??
                      Text(
                        selectedValue,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          itemBuilder: (context) {
            return widget.values
                .map((e) => PopupMenuItem<String>(
                      child: Text(e),
                      value: e,
                    ))
                .toList();
          },
        ),
      ],
    );
  }
}
