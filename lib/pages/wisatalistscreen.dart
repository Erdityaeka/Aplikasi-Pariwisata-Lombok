import 'package:flutter/material.dart';
import 'package:pariwisata/data/List_Pariwisata.dart';
import 'package:pariwisata/data/List_pariwisata2.dart';
import 'package:pariwisata/pages/detail_Pariwisata.dart'; // Assuming this is the correct import for tourism detail

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1734),
      appBar: AppBar(
        backgroundColor: const Color(0xff161329),
        title: const Text(
          'Pariwisata Lombok',
          style: TextStyle(color: Colors.white, fontFamily: 'inter'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey, // Border color
                width: 3, // Border thickness
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: wisat.length, // Use the tourism list from your data file
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(16),
            width: 370,
            height: 140,
            decoration: BoxDecoration(
              color: const Color(0xff211D3E),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.1),
                  spreadRadius: 1,
                  offset: const Offset(0, 6.5),
                  blurRadius: 6.1,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 14, bottom: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      wisat[index].foto,
                      width: 110,
                      height: 108,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 16, left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPariwisata(wisataw: wisa[index]), // Renamed for consistency
                            ),
                          );
                        },
                        child: Text(
                          wisat[index].nama,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          wisat[index].deskripsi,
                          style: const TextStyle(
                              color: Color(0xffC9C8C8), fontSize: 12),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
