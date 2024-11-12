 style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white), // background putih
                          foregroundColor: MaterialStateProperty.resolveWith(getColor),  // teks biru
                          side: MaterialStateProperty.all(BorderSide(color: ColorApp.mainBlue2, width: 1)), // border biru
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 20)), // padding tombol
                          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), // style teks
                          overlayColor: MaterialStateProperty.all(
                            ColorApp.fontGray.withOpacity(0.1),
                            ), 
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                          elevation: MaterialStateProperty.all(5),
                        ),