import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../utilities/colors.dart';

class SnackBarApp {
  static snackBarSuccess(context, {required String message, Widget? chid}) {
    var size = MediaQuery.of(context).size;
    showTopSnackBar(
      context,
      Container(
        margin: const EdgeInsets.only(top: 55),
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.228),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.06),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Container(
                      height: 64.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                          color: HexColor.fromHex('#1D8348'),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0))),
                      child: const Center(
                        child: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    SizedBox(
                      width:
                          chid == null ? size.width * 0.4 : size.width * 0.33,
                      child: Text(
                        message,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Avenir',
                            decoration: TextDecoration.none),
                      ),
                    ),
                    chid != null
                        ? SizedBox(
                            height: 60,
                            width: size.width * 0.088,
                            child: Scaffold(
                              backgroundColor: Colors.transparent,
                              body: Center(
                                child: chid,
                              ),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 64.0,
                  width: 64.0,
                  child: Row(
                    children: [
                      VerticalDivider(),
                      SizedBox(
                        width: 4.0,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Icon(
                          Icons.close,
                          size: 30.0,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static snackBarError(context, {required String message, Widget? chid}) {
    var size = MediaQuery.of(context).size;
    showTopSnackBar(
      context,
      Container(
        margin: const EdgeInsets.only(top: 55),
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.228),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.06),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Container(
                      height: 64.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0))),
                      child: const Center(
                        child: Icon(
                          Icons.warning_amber,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    SizedBox(
                      width:
                          chid == null ? size.width * 0.4 : size.width * 0.33,
                      child: Text(
                        message,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Avenir',
                            decoration: TextDecoration.none),
                      ),
                    ),
                    chid != null
                        ? SizedBox(
                            height: 60,
                            width: size.width * 0.088,
                            child: Scaffold(
                              backgroundColor: Colors.transparent,
                              body: Center(
                                child: chid,
                              ),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 64.0,
                  width: 64.0,
                  child: Row(
                    children: [
                      VerticalDivider(),
                      SizedBox(
                        width: 4.0,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Icon(
                          Icons.close,
                          size: 30.0,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
