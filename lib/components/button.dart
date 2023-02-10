import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton(
      {super.key,
      required this.onPressed,
      required this.label,
      this.padding,
      this.style});

  final Function() onPressed;
  final String label;
  final EdgeInsets? padding;
  final ButtonStyle? style;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
          style: widget.style ??
              ElevatedButton.styleFrom(minimumSize: const Size(150, 40)),
          onPressed: () async {
            setState(() {
              _loading = true;
            });
            await widget.onPressed();
            setState(() {
              _loading = false;
            });
          },
          child: _loading
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Color(0xffffffff),
                  ),
                )
              : Text(widget.label)),
    );
  }
}
