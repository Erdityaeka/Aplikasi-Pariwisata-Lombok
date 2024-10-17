import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../provider/favorite_provider.dart';
import 'pariwisata_detail_screen.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteItems = ref.watch(favoriteProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Pariwisata',
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff161329),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey, width: 3))),
        ),
      ),
      body: favoriteItems.isEmpty
          ? Center(
              child: Text('Tidak Ada Favorite Wisata',
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            )
          : ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final item = favoriteItems[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PariwisataDetailScreen(pariwisata: item),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: const Color(0xff211D3E),
                    elevation: 5,
                    child: SizedBox(
                      height: 140,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              item.foto!,
                              width: 110,
                              height: 108,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    item.nama!,
                                    style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    item.alamat!,
                                    style: GoogleFonts.inter(
                                      color: const Color(0xffC9C8C8),
                                      fontSize: 12,
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ]),
                          ),
                        ),
                      ]),
                    ),
                  ),
                );
              },
            ),
      backgroundColor: const Color(0xff1B1734),
    );
  }
}
