import 'package:bonyan/persentation/resources/color_manager.dart';
import 'package:flutter/material.dart';


class AppTextFormFiled extends StatefulWidget {
  AppTextFormFiled(
      {Key? key,
        this.textInputAction = TextInputAction.next,
        this.keyboardType = TextInputType.text,
        this.controller,
        this.iconData,
        this.hintText,
        this.obscureText = false,
        this.suffixIcon = false,
        this.validator,
        this.onChanged,
        this.onTap,
        this.autofocus = false,
        this.readOnly = false,
        this.maxLine = 1,
        this.minLine = 1,
        this.maxLength})
      : super(key: key);

  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final IconData? iconData;
  final String? hintText;
  final bool suffixIcon;
  final bool autofocus;
  final bool readOnly;
  bool obscureText;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final int? maxLine;
  final int? minLine;
  final int? maxLength;

  @override
  State<AppTextFormFiled> createState() => _TextFiledAppState();
}

class _TextFiledAppState extends State<AppTextFormFiled> {
  void showPassword() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     // textDirection : TextDirection.rtl,
    //  textAlign: TextAlign.right,
      maxLength: widget.maxLength,
      maxLines: widget.maxLine,
      minLines: widget.minLine,
      readOnly: widget.readOnly,
      autofocus: widget.autofocus,
      validator: widget.validator ??
              (String? val) {
            if (val!.trim().isEmpty) return 'Required*';
            return null;
          },
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      controller: widget.controller,

      decoration: InputDecoration(


          border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  widget.maxLength == null ? 100.0:12
              )
          ),

          prefixIcon: widget.iconData == null
              ? null
              : Icon(
            widget.iconData,
            size:  24,
          ),
          suffixIcon: widget.suffixIcon
              ? IconButton(onPressed: (){
            showPassword();
          }, icon: Icon(widget.obscureText
              ?Icons.visibility
              :Icons.visibility_off,
            color: !widget.obscureText?Theme.of(context).primaryColor:
            ColorManager.grey,
          ))
              : null,
          hintText: widget.hintText),
    );
  }
}