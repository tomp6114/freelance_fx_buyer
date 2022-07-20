import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freelance_fx_buyer/view/constants/colors.dart';
import 'package:freelance_fx_buyer/view/constants/size.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceDetailedView extends StatelessWidget {
  ServiceDetailedView({Key? key, required this.serviceStream})
      : super(key: key);
  DocumentSnapshot serviceStream;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 50, 50, 51),
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: Text(
          serviceStream['title'],
          style:
              GoogleFonts.roboto(color: const Color.fromARGB(255, 50, 50, 51)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 500,
                color: kgreenlight,
                child: Image.network(
                  serviceStream['image'],
                  fit: BoxFit.cover,
                ),
              ),
              kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    serviceStream['title'],
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "₹ ${serviceStream['price'].toString()}",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              kHeight10,
              Text(serviceStream['domain']),
              kheight20,
              Text(
                serviceStream['description'],
                maxLines: 10,
              ),
              kheight20,
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "hello"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "cart"),
        ],
      ),
    );
  }
}
//