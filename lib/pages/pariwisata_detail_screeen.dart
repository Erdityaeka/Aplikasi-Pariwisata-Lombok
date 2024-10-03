import 'package:flutter/material.dart';

import '../model/pariwisata_list.dart';

class PariwisataDetailScreeen extends StatelessWidget {
  final PariwisataList pariwisata;

  const PariwisataDetailScreeen({super.key, required this.pariwisata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1734),
      appBar: AppBar(
        backgroundColor: const Color(0xff161329),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
            weight: 300,
          ),
        ),
        title: const Text(
          'Detail Pariwisata',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity, // Make the image responsive to screen width
            height: 300,
            child: Image.asset(
              pariwisata.foto!,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 111,
                  decoration: const BoxDecoration(
                    color: Color(0xff1B1734),
                    border: Border(
                      bottom: BorderSide(color: Color(0xff332D5A), width: 3.0),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 40),
                  child: Text(
                    pariwisata.nama!,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 310),
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 240, 160, 41),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 3),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Favorite',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 410),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 111,
                  decoration: const BoxDecoration(
                      color: Color(0xff1B1734),
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xff332D5A), width: 3.0))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lokasi',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white54,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(pariwisata.alamat!,
                              style: const TextStyle(
                                  color: Colors.white54, fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 111,
                  decoration: const BoxDecoration(
                    color: Color(0xff1B1734),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Deskripsi',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        pariwisata.deskripsi!,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
