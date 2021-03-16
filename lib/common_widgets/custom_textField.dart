import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final Function(String value) onChanged;
  final String errorText;
  final bool isLast;
  final Function(String value) validator;

  CustomTextField({
    this.label,
    this.isPassword = false,
    this.onChanged,
    this.validator,
    this.errorText,
    this.isLast = false,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _focus = FocusScope.of(context);
    const _simpleBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Color(0xFF25242C), width: 2),
    );
    final _errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: _theme.errorColor, width: 2),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: widget.validator,
        onEditingComplete: () {
          if (widget.isLast) {
            _focus.unfocus();
          } else {
            _focus.nextFocus();
          }
        },
        obscureText: widget.isPassword ? !_showPassword : false,
        textInputAction:
            widget.isLast ? TextInputAction.done : TextInputAction.next,
        decoration: InputDecoration(
          isDense: true,
          labelText: widget.label,
          fillColor: Color(0xFF1E1C24),
          enabledBorder: _simpleBorder,
          focusedBorder: _simpleBorder,
          errorBorder: _errorBorder,
          focusedErrorBorder: _errorBorder,
          filled: true,
          labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            color: _theme.accentColor.withOpacity(0.5),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(_showPassword
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined),
                  iconSize: 30,
                  color: _theme.accentColor.withOpacity(0.5),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                )
              : null,
        ),
        style: TextStyle(
          color: _theme.accentColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
