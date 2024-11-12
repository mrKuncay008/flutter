import 'package:celerates/components/typography.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utilities/colors.dart';

Widget formInput(
  text, {
  keyboardType,
  maxLines = 1,
  validator,
  onSaved,
  onTap,
  fieldSubmitted,
  prefixIcon,
  inputAction,
  focusNode,
  suffixIcon,
  controller,
  obsecureText = false,
  maxLength,
  hint,
  onChanged,
  readOnly = false,
  inputFormatters,
  autoFocus = false,
  TextAlign textAlign = TextAlign.start,
  autoValidateMode,
  suffix,
  textSytle,
  fontSizeHint,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: textSytle ?? kTextBody,
      ),
      const SizedBox(height: 10.0),
      TextFormField(
        maxLines: maxLines,
        keyboardType: keyboardType,
        cursorColor: kColorBlack,
        controller: controller,
        inputFormatters: inputFormatters,
        obscureText: obsecureText,
        autofocus: autoFocus,
        textInputAction: inputAction,
        onFieldSubmitted: fieldSubmitted,
        maxLength: maxLength,
        focusNode: focusNode,
        readOnly: readOnly,
        textAlign: textAlign,
        autovalidateMode: autoValidateMode,
        style: const TextStyle(
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: kColorWhite,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily: 'Poppins',
            color: const Color(0xFFC7C7C7),
            fontSize: fontSizeHint ?? 14,
          ),
          suffix: suffix,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 14.0,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        onTap: onTap,
      ),
    ],
  );
}

Widget formSelect(
  text, {
  hint,
  onTap,
  controller,
  validator,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: kTextBody,
      ),
      const SizedBox(
        height: 10,
      ),
      TextFormField(
        controller: controller,
        readOnly: true,
        style: const TextStyle(
          fontSize: 14.0,
        ),
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: kColorWhite,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: kColorGrey2,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 14.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: kColorGrey2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: kColorGrey2,
            ),
          ),
          suffixIcon: Icon(
            Icons.keyboard_arrow_down,
            color: kColorGrey1,
          ),
        ),
        onTap: onTap,
      ),
    ],
  );
}

Widget formDatePicker(text, {controller, onTap, hint, validator}) {
  return formInput(
    text,
    validator: validator,
    readOnly: true,
    controller: controller,
    suffixIcon: Icon(
      Icons.calendar_today,
      color: kColorGrey1,
    ),
    textAlign: TextAlign.start,
    hint: hint,
    onTap: onTap,
  );
}

Widget formCurrency(text, {controller, hint, validator, autoValidateMode}) {
  return formInput(
    text,
    validator: validator,
    controller: controller,
    autoValidateMode: autoValidateMode,
    prefixIcon: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        "Rp",
        style: kTextBody.copyWith(fontWeight: FontWeight.w700),
      ),
    ),
    textAlign: TextAlign.end,
    hint: hint,
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[
      CurrencyTextInputFormatter(
        locale: 'id',
        decimalDigits: 0,
        symbol: '',
      ),
    ],
  );
}

Widget formUnit(text, suffixText, {controller, hint, validator}) {
  return formInput(
    text,
    controller: controller,
    suffixIcon: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        suffixText,
        style: kTextBody.copyWith(fontWeight: FontWeight.w700),
      ),
    ),
    validator: validator,
    textAlign: TextAlign.start,
    hint: hint,
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[
      CurrencyTextInputFormatter(
        locale: 'id',
        decimalDigits: 0,
        symbol: '',
      ),
    ],
  );
}

Widget formArea(
  text, {
  controller,
  hint,
  autoValidateMode,
  validator,
}) {
  return formInput(
    text,
    controller: controller,
    hint: hint,
    maxLines: 5,
    autoValidateMode: autoValidateMode,
    validator: validator,
  );
}

Widget formDropdownButton(context, text, {textSytle, child}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: textSytle,
      ),
      const SizedBox(
        height: 16,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
        ),
        child: child,
      ),
    ],
  );
}

Widget formInputDark(
  text, {
  keyboardType,
  maxLines = 1,
  validator,
  onSaved,
  onTap,
  fieldSubmitted,
  prefixIcon,
  inputAction,
  focusNode,
  suffixIcon,
  controller,
  obsecureText = false,
  maxLength,
  hint,
  onChanged,
  readOnly = false,
  inputFormatters,
  autoFocus = false,
  TextAlign textAlign = TextAlign.start,
  autoValidateMode,
  suffix,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: kTextBody.copyWith(color: Colors.black),
      ),
      const SizedBox(height: 10.0),
      TextFormField(
        maxLines: maxLines,
        keyboardType: keyboardType,
        cursorColor: kColorBlack,
        controller: controller,
        inputFormatters: inputFormatters,
        obscureText: obsecureText,
        autofocus: autoFocus,
        textInputAction: inputAction,
        onFieldSubmitted: fieldSubmitted,
        maxLength: maxLength,
        focusNode: focusNode,
        readOnly: readOnly,
        textAlign: textAlign,
        autovalidateMode: autoValidateMode,
        style: const TextStyle(
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0XFFA6A6A6),
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          hintText: hint,
          suffix: suffix,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            borderSide: BorderSide(
              color: Color(0XFFA6A6A6),
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 14.0,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            borderSide: BorderSide(
              color: Color(0XFFA6A6A6),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            borderSide: BorderSide(
              color: Color(0XFFA6A6A6),
            ),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        onTap: onTap,
      ),
    ],
  );
}

Widget formAreaDark(
  text, {
  controller,
  hint,
  autoValidateMode,
  validator,
}) {
  return formInputDark(
    text,
    controller: controller,
    hint: hint,
    maxLines: 5,
    autoValidateMode: autoValidateMode,
    validator: validator,
  );
}
