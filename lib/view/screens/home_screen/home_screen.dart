// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../constants/colors.dart';
// import '../../constants/size.dart';

// class HomeScreenBuyer extends StatelessWidget {
//   const HomeScreenBuyer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final size =MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           AppBar(
//             leading: Padding(
//               padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 15.0,bottom: 8.0),
//               child: Image.asset(
//                 "assets/images/62934186287cb810b443786f.png",
//                 height: 50,
//                 width: 50,
//                 //fit: BoxFit.cover,
//               ),
//             ),
//             elevation: 0,
//             backgroundColor: kwhite,
//             centerTitle: true,
//             title: Padding(
//               padding: const EdgeInsets.only(top: 10.0),
//               child: Text(
//                 'Freelance Fx',
//                 style: GoogleFonts.montserrat(
//                     color: titleColor,
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 0.0, right: 0),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       labelText: "Search Here",
//                       labelStyle: GoogleFonts.montserrat(),
//                       suffixIcon: const Icon(Icons.search),
//                       enabledBorder: const OutlineInputBorder(
//                           borderSide: BorderSide(width: 1, color: Colors.grey),
//                           borderRadius: BorderRadius.all(Radius.circular(10))),
//                     ),
//                   ),
//                 ),
//                 kheight20,
//                 HomePageTitle(
//                   title1: "Popular Categories",
//                   title2: "See all",
//                 ),
//                 kheight20,
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: const [
//                       CategoriesGridView(),
//                       kwidth20,
//                       CategoriesGridView(),
//                       kwidth20,
//                       CategoriesGridView(),
//                       kwidth20,
//                       CategoriesGridView(),
//                       kwidth20,
//                     ],
//                   ),
//                 ),
//                 kheight20,
//                 HomePageTitle(
//                   title1: "Top Rated",
//                   title2: "See all",
//                 ),
//                 kheight20,
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Expanded(
//                     child: Row(
//                       children: const [
//                         TopRatedGridView(),
//                         kwidth20,
//                         TopRatedGridView(),
//                       ],
//                     ),
//                   ),
//                 ),
//                 kheight20,
//                 // Text(
//                 //   "Invite a Friend",
//                 //   style: GoogleFonts.montserrat(
//                 //     color: const Color.fromARGB(255, 7, 2, 2),
//                 //   ),
//                 // ),
//                 // kheight20,
//                 // Container(
//                 //   height: 50,
//                 //   color: Colors.black87,
//                 // )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TopRatedGridView extends StatelessWidget {
//   const TopRatedGridView({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Stack(
//       alignment: AlignmentDirectional.bottomCenter,
//       children: [
//         Container(
//           height: size.height*0.4,
//           width: 300,
//           decoration: const BoxDecoration(
//             color: Colors.black54,
//             borderRadius: BorderRadius.all(
//               Radius.circular(10),
//             ),
//           ),
//         ),
//         Container(
//           height: 140,
//           width: 300,
//           decoration: const BoxDecoration(
//             color: Colors.black54,
//             borderRadius: BorderRadius.all(
//               Radius.circular(10),
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0),
//             child: Column(
//               children: [
//                 ListTile(
//                   leading: Container(
//                     height: 50,
//                     width: 50,
//                     decoration: const BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                   ),
//                   title: Text(
//                     "Tom P Varghese",
//                     style: GoogleFonts.montserrat(
//                       color: Colors.white,
//                     ),
//                   ),
//                   trailing: TextButton.icon(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.star_border,
//                       color: Colors.yellow,
//                     ),
//                     label: Text(
//                       "5.5",
//                       style: GoogleFonts.montserrat(
//                         color: const Color.fromARGB(255, 248, 246, 246),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "UI/UX Designing with prototype",
//                   style: GoogleFonts.montserrat(
//                     color: Colors.white,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 15.0, right: 10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "10000",
//                         style: GoogleFonts.montserrat(
//                           color: Colors.white,
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.heart_broken_outlined,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class HomePageTitle extends StatelessWidget {
//   HomePageTitle({
//     Key? key,
//     required this.title1,
//     required this.title2,
//   }) : super(key: key);

//   String title1;
//   String title2;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title1,
//           style:
//               GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w400),
//         ),
//         Text(
//           title2,
//           style: GoogleFonts.montserrat(
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//               color: const Color.fromRGBO(121, 25, 180, 100)),
//         ),
//       ],
//     );
//   }
// }

// class CategoriesGridView extends StatelessWidget {
//   const CategoriesGridView({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;    return Stack(
//       alignment: AlignmentDirectional.bottomCenter,
//       children: [
//         Container(
//           height: size.height*0.2,
//           width:size.width*0.45,
//           // color: Colors.amber,
//           decoration: const BoxDecoration(
//               color: Colors.black54,
//               borderRadius: BorderRadius.all(Radius.circular(10))),
//         ),
//         Container(
//           height: size.height*0.08,
//           width: size.width*0.45,
//           //color: Colors.red,
//           decoration: const BoxDecoration(
//               color: Colors.black54,
//               borderRadius: BorderRadius.all(Radius.circular(10))),
//         ),
//       ],
//     );
//   }
// }

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freelance_fx_buyer/view/constants/colors.dart';
import 'package:freelance_fx_buyer/view/constants/size.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:freelance_fx_buyer/view/screens/services/service_Detailed_View.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletons/skeletons.dart';

class SingleProductWidget extends StatelessWidget {
  final Stream<QuerySnapshot> _productStream =
      FirebaseFirestore.instance.collection('services').snapshots();

  List<String> carouselImages = [
    "assets/carousalImages/pexels-mike-1192057.jpg",
    "assets/carousalImages/pexels-sourav-mishra-9112645.jpg",
    "assets/carousalImages/pexels-mike-1192057.jpg",
    "assets/carousalImages/pexels-sourav-mishra-9112645.jpg"
  ];

  SingleProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _productStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const SizedBox();
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SkeletonItem(
                child: Column(
              children: [
                Row(
                  children: [
                    const SkeletonAvatar(
                      style: SkeletonAvatarStyle(
                          shape: BoxShape.circle, width: 50, height: 50),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: SkeletonParagraph(
                        style: SkeletonParagraphStyle(
                            lines: 3,
                            spacing: 6,
                            lineStyle: SkeletonLineStyle(
                              randomLength: true,
                              height: 10,
                              borderRadius: BorderRadius.circular(8),
                              minLength: MediaQuery.of(context).size.width / 6,
                              maxLength: MediaQuery.of(context).size.width / 3,
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                SkeletonParagraph(
                  style: SkeletonParagraphStyle(
                      lines: 3,
                      spacing: 6,
                      lineStyle: SkeletonLineStyle(
                        randomLength: true,
                        height: 10,
                        borderRadius: BorderRadius.circular(8),
                        minLength: MediaQuery.of(context).size.width / 2,
                      )),
                ),
                const SizedBox(height: 12),
                SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                    width: double.infinity,
                    minHeight: MediaQuery.of(context).size.height / 8,
                    maxHeight: MediaQuery.of(context).size.height / 3,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        SkeletonAvatar(
                            style: SkeletonAvatarStyle(width: 20, height: 20)),
                        SizedBox(width: 8),
                        SkeletonAvatar(
                            style: SkeletonAvatarStyle(width: 20, height: 20)),
                        SizedBox(width: 8),
                        SkeletonAvatar(
                            style: SkeletonAvatarStyle(width: 20, height: 20)),
                      ],
                    ),
                    SkeletonLine(
                      style: SkeletonLineStyle(
                          height: 16,
                          width: 64,
                          borderRadius: BorderRadius.circular(8)),
                    )
                  ],
                )
              ],
            ));
          }
          if (snapshot.data!.docs.isEmpty) {
            return SizedBox(
              height: 600,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Lottie.asset(
                          'assets/images/Screenshot from 2022-05-18 21-17-05.png'),
                    ),
                  ],
                ),
              ),
            );
          }
          return Hero(
            tag: 'tag',
            child: Column(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 0.70),
                  child: AppBar(
                    backgroundColor: Colors.grey[200],
                    elevation: 0,
                    centerTitle: true,
                    title: Text(
                      "Freelance Fx",
                      style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 50, 50, 51),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    actions: const [
                      Icon(
                        Icons.ac_unit,
                        color: Color.fromARGB(255, 50, 50, 51),
                      ),
                      kWidth
                    ],
                    leading: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        "assets/images/62934186287cb810b443786f.png",
                        fit: BoxFit.contain,
                        height: 10,
                        width: 10,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                        ),
                        items: carouselImages.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: Image.asset(
                                    carouselImages[0].toString(),
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      kHeight10,
                      kheight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Services",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right:8.0),
                            child: Text('see more'),
                          ),
                          
                        ],
                      ),
                      kHeight10
                    ],
                  ),
                ),
                
                Expanded(
                  child: GridView.builder(
                      shrinkWrap: true,
                      primary: true,
                      itemCount: snapshot.data!.docs.length,
                      physics: const PageScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.2,
                      ),
                      itemBuilder: (context, index) {
                        final DocumentSnapshot documentSnapshot =
                            snapshot.data!.docs[index];

                        return GestureDetector(
                          onTap: () {
                            Get.to(ServiceDetailedView(
                              serviceStream: documentSnapshot,
                            ));
                          },
                          // },
                          child: Material(
                            clipBehavior: Clip.hardEdge,
                            type: MaterialType.canvas,
                            color: Colors.white,
                            shadowColor: Colors.black,
                            borderOnForeground: true,
                            borderRadius: BorderRadius.circular(2),
                            elevation: 0,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5, top: 5),
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        width: double.infinity,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          //color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            scale: 1,
                                            image: NetworkImage(
                                              documentSnapshot['image']
                                                  .toString(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            documentSnapshot['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.alice(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            "₹ ${documentSnapshot['price']}",
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }
}
