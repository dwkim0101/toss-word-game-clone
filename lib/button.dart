import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget wordButton(String text) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xFFe6e8ed),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: AutoSizeText(
              text,
              textAlign: TextAlign.center,
              minFontSize: 15,
              maxLines: 3,
              style: const TextStyle(
                color: Color(0xFF223147),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget wordButtonClicked(String text) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xFF060606),
            width: 3.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: AutoSizeText(
              text,
              textAlign: TextAlign.center,
              minFontSize: 15,
              maxLines: 3,
              style: const TextStyle(
                color: Color(0xFF223147),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
