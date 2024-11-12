import 'package:flutter/material.dart';

class GroupRadioButton extends StatefulWidget {
  const GroupRadioButton({super.key,
    required this.label,
    required this.padding,
    required this.onChanged,
    this.color = Colors.blue,
    this.radioRadius = 14.0,
    this.spaceBetween = 16.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final Color color;
  final List<Widget> label;
  final EdgeInsets padding;
  final Function(int) onChanged;
  final double radioRadius;
  final double spaceBetween;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  // ignore: library_private_types_in_public_api
  _GroupRadioButtonState createState() => _GroupRadioButtonState();
}

class _GroupRadioButtonState extends State<GroupRadioButton> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        // ignore: unnecessary_null_comparison
        itemCount: widget.label != null ? widget.label.length : 0,
        itemBuilder: (context, index) {
          return LabeledRadio(
            selectedIndex: selectedIndex,
            color: widget.color,
            onChanged: (value) {
              setState(() {
                selectedIndex = value;
                widget.onChanged(value);
                // print(value);
              });
            },
            index: index,
            label: widget.label[index],
            crossAxisAlignment: widget.crossAxisAlignment,
            mainAxisAlignment: widget.mainAxisAlignment,
            radioRadius: widget.radioRadius,
            spaceBetween: widget.spaceBetween,
            padding: widget.padding,
          );
        });
  }
}

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({super.key,
    required this.label,
    required this.index,
    required this.color,
    //required this.groupValue,
    //required this.value,
    required this.onChanged,
    required this.radioRadius,
    required this.padding,
    required this.spaceBetween,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.selectedIndex,
  });

  final Color color;
  final int selectedIndex;
  final Widget label;
  // ignore: prefer_typing_uninitialized_variables
  final index;
  final EdgeInsets padding;
  //final bool groupValue;
  //final bool value;
  final Function(int) onChanged;
  final double radioRadius;
  final double spaceBetween;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(index);
      },
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                //color: Const.mainColor,
                shape: BoxShape.circle,
                border: Border.all(color: color, width: 2),
              ),
              padding: const EdgeInsets.all(2),
              child: selectedIndex == index
                  ? Container(
                height: radioRadius,
                width: radioRadius,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              )
                  : SizedBox(
                height: radioRadius,
                width: radioRadius,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            label,
          ],
        ),
      ),
    );
  }
}