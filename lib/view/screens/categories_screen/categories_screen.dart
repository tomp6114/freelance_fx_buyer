import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            toolbarHeight: 70,
            centerTitle: true,
            title: Text(
              "Categories",
              style: GoogleFonts.montserrat(
                  color: titleColor, fontSize: 27, fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: kwhite,
          ),
          kheight20,
            CategoriesListView(
              image: "",
              title: "Graphics & Design",
              subtitle: "Logo & Brand Identity, Art & Illustration",
            ),
            const Divider(),
            CategoriesListView(
              image: "",
              title: "Digital Marketing",
              subtitle: "Social Media Marketing, Social Media Advertising",
            ),
            const Divider(),
        ],
      ),
      // body: SingleChildScrollView(
      //     child: Container(
      //   child: Column(
      //     children: [
      //       kheight20,
      //       CategoriesListView(
      //         image: "",
      //         title: "Graphics & Design",
      //         subtitle: "Logo & Brand Identity, Art & Illustration",
      //       ),
      //       const Divider(),
      //       CategoriesListView(
      //         image: "",
      //         title: "Digital Marketing",
      //         subtitle: "Social Media Marketing, Social Media Advertising",
      //       ),
      //       const Divider(),
      //     ],
      //   ),
      // )),
    );
  }
}

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  String image;
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 80,
        width: 80,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Image.asset(image),
        ),
      ),
      title: Text(
        title,
        style:
            GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.montserrat(fontSize: 13),
      ),
    );
  }
}
