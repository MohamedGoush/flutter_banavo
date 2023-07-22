import 'package:flutter/cupertino.dart';

import '../helper/export_helper.dart';

class InfoCard extends StatelessWidget {
  final String? category;
  final String? title;
  final String? image;
  final String? info;
  final bool? isButton;
  final bool? isIcon;

  const InfoCard({
    super.key,
    this.category = "Lifestyle",
    this.title = "A complete guide for your new born baby",
    this.image = "assets/mom.png",
    this.info = "16 lessons",
    this.isButton = false,
    this.isIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            child: Image.asset(image!),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category!,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                      color: primary,
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  title!,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Text(
                      info!,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: secondary,
                        ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Spacer(),
                    Visibility(
                      visible: isButton!,
                      child: Container(
                        child: Text(
                          "Book",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: primary,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: primary,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isIcon!,
                      child: Icon(
                        CupertinoIcons.lock,
                        size: 20,
                        color: secondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
