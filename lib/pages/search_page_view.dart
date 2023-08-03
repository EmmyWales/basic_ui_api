import 'package:basics_styles/crew_neck.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../class/products.dart';
import '../services/api_service.dart';

class SearchPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text(
          "BASICS",
          style: GoogleFonts.nunitoSans(
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: SizedBox(
                height: 14,
                width: 32,
                child: Image.asset(
                  "assets/Bag.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.filter_list_rounded,
                  color: Colors.grey,
                ),
                hintText: "SEARCH PRODUCTS",
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 35,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "All",
                      style: GoogleFonts.nunitoSans(
                        textStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Text("Tops",
                        style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Text("Sweatshirts",
                        style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Text("Jackets",
                        style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Text("Pants",
                        style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search Results For “jackets”",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "15 Results",
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<List<Products>>(
                stream: fetchProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final products = snapshot.data!;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const CrewNeck()));
                        },
                        child: ListView.builder(
                          itemCount: products.length,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            final data = products[index];
                            return Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 100,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.network(data.image),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  data.title,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: true,
                                                  style: GoogleFonts.nunitoSans(
                                                    textStyle: const TextStyle(
                                                        // fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Flexible(
                                                child: Text(
                                                  data.description,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: true,
                                                  style: GoogleFonts.nunitoSans(
                                                    textStyle: const TextStyle(
                                                        // fontSize: 14,
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "\$${data.price.toString()}",
                                                    style:
                                                        GoogleFonts.nunitoSans(
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                      ),
                                                      child: const Center(
                                                          child: Icon(
                                                        Icons
                                                            .favorite_outline_sharp,
                                                        color: Colors.grey,
                                                        size: 18,
                                                      )),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("Error fetxhing data"),
                    );
                  } else {
                    return Center(
                      child: const CircularProgressIndicator(),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
