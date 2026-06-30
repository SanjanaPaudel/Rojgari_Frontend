import 'package:flutter/material.dart';
import 'package:rojgari_frontend_one/core/constants/colors.dart';

enum FieldType {
  phone,
  password,
  email,
  text,
}

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final FieldType fieldType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.fieldType = FieldType.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;

  bool get isPhone => widget.fieldType == FieldType.phone;
  bool get isPassword => widget.fieldType == FieldType.password;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // LABEL
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),

        const SizedBox(height: 10),

        // INPUT BOX
        Container(
          height: 58,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            children: [
              // LEFT ICON (based on field type)
              Icon(
                isPhone
                    ? Icons.phone_outlined
                    : isPassword
                    ? Icons.lock_outline
                    : Icons.text_fields,
                color: AppColors.primary,
                size: 22,
              ),

              const SizedBox(width: 10),

              // PHONE COUNTRY CODE UI
              if (isPhone) ...[
                const Text(
                  "+977",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(width: 6),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 18,
                  color: AppColors.grey,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 1,
                  height: 25,
                  color: AppColors.border,
                ),
                const SizedBox(width: 10),
              ],

              // TEXT FIELD
              Expanded(
                child: TextField(
                  obscureText: isPassword ? isObscure : false,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    border: InputBorder.none,
                    hintStyle: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              // PASSWORD TOGGLE
              if (isPassword)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.grey,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}