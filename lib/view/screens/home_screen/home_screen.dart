import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';

class HomeScreenBuyer extends StatelessWidget {
  const HomeScreenBuyer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 15.0,bottom: 8.0),
              child: Image.asset(
                "assets/images/62934186287cb810b443786f.png",
                height: 50,
                width: 50,
                //fit: BoxFit.cover,
              ),
            ),
            elevation: 0,
            backgroundColor: kwhite,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Freelance Fx',
                style: GoogleFonts.montserrat(
                    color: titleColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Search Here",
                      labelStyle: GoogleFonts.montserrat(),
                      suffixIcon: const Icon(Icons.search),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
                kheight20,
                HomePageTitle(
                  title1: "Popular Categories",
                  title2: "See all",
                ),
                kheight20,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CategoriesGridView(),
                      kwidth20,
                      CategoriesGridView(),
                      kwidth20,
                      CategoriesGridView(),
                      kwidth20,
                      CategoriesGridView(),
                      kwidth20,
                    ],
                  ),
                ),
                kheight20,
                HomePageTitle(
                  title1: "Top Rated",
                  title2: "See all",
                ),
                kheight20,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Expanded(
                    child: Row(
                      children: const [
                        TopRatedGridView(),
                        kwidth20,
                        TopRatedGridView(),
                      ],
                    ),
                  ),
                ),
                kheight20,
                // Text(
                //   "Invite a Friend",
                //   style: GoogleFonts.montserrat(
                //     color: const Color.fromARGB(255, 7, 2, 2),
                //   ),
                // ),
                // kheight20,
                // Container(
                //   height: 50,
                //   color: Colors.black87,
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopRatedGridView extends StatelessWidget {
  const TopRatedGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: size.height*0.4,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        Container(
          height: 140,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  title: Text(
                    "Tom P Varghese",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                    ),
                  ),
                  trailing: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                    ),
                    label: Text(
                      "5.5",
                      style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(255, 248, 246, 246),
                      ),
                    ),
                  ),
                ),
                Text(
                  "UI/UX Designing with prototype",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10000",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.heart_broken_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HomePageTitle extends StatelessWidget {
  HomePageTitle({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  String title1;
  String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style:
              GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        Text(
          title2,
          style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(121, 25, 180, 100)),
        ),
      ],
    );
  }
}

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: size.height*0.2,
          width:size.width*0.45,
          // color: Colors.amber,
          decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        Container(
          height: size.height*0.08,
          width: size.width*0.45,
          //color: Colors.red,
          decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ],
    );
  }
}
