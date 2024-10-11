import 'package:flutter/material.dart';
import 'package:pariwisata/pages/pariwisata_detail_screen.dart';

import '../model/pariwisata_list.dart';

// Data Pariwisata
List pariwisata = [
  {
    "nama": "Taman Wisata Pusuk Sembalun",
    "alamat": "Sembalun Lawang Sembalun 83656 Lombok Timur Nusa Tenggara Barat",
    "deskripsi":
    "Datanglah ke Taman Wisata Pusuk Sembalun, di mana Anda dapat menikmati pemandangan pegunungan yang menakjubkan tanpa aktivitas fisik, pada ketinggian 1.250 meter di atas permukaan laut.",
    "foto": "assets/sembalun.jpg"
  },
  {
    "nama": "Bukit Pergasingan",
    "alamat": "Desa Sembalun, Kecamatan Sembalun, Lombok Timur.",
    "deskripsi":
    "Petak-petak sawah dan kebun-kebun warga yang berwarna-warni dan dikelilingi deretan pegunungan tinggi, ditambah langit biru yang membentang amat sangat menyejukkan mata.Dari tempat yang kini telah menjadi taman wisata alam ini Anda bahkan dapat melihat kemegahan Gunung Rinjani. Berdiri di ketinggian 1.670 meter di atas permukaan laut atau sekitar 673 meter dari dataran Sembalun, Bukit Pergasingan  bisa didaki selama 2-2,5 jam dan sering dijadikan tempat latihan sebelum mendaki Gunung Rinjani.",
    "foto": "assets/bukit.jpg"
  },
  {
    "nama": "Batu Payung, Tanjung Aan",
    "alamat":
    "Desa Pengembur, Pujut, Kabupaten Lombok Tengah, Nusa Tenggara Barat.",
    "deskripsi":
    "Dari arah tertentu malah tampak seperti jari raksasa yang teracung ke angkasa.Rasanya tak mungkin untuk tak menengok saat melihat formasi alam yang luar biasa ini. Uniknya, jika dilihat dari arah berbeda, maka bentuknya pun akan ikut berubah pula. Bahkan dari satu sisi wujudnya akan menyerupai profil wajah manusia.",
    "foto": "assets/aan.jpg"
  },
  {
    "nama": "Air Terjun Benang Kelambu",
    "alamat":
    "Kabupaten Lombok Tengah bagian utara, Dusun Pemotoh, Desa Aik Berik,Kecamatan Batukliang Utara.",
    "deskripsi":
    "Sesuainamanya, air terjun ini memang unik dan lain daripada air terjun lain umum Anda jumpai. Aliran air yang jatuh dari ketinggian tebing tidak langsung terhempas ke bawah, melainkan melewati celah-celah tanaman merambat yang tumbuh lebat di tebing sehingga tampak bagai kelambu atau tirai yang menggantung di udara.",
    "foto": "assets/kelambu.jpg"
  },
  {
    "nama": "Gunung Rinjani",
    "alamat": "Di Pulau Lombok, Nusa Tenggara Barat. ",
    "deskripsi":
    "Gunung Rinjani merupakan gunung berapi aktif yang tak henti-hentinya mengeluarkan asap. Namun demikian, keindahan alam yang memukau membuat siapapun tetap tergoda untuk menaklukkannya.",
    "foto": "assets/rinjani.jpg"
  },
  {
    "nama": "Pantai Senggigi",
    "alamat": "Jalan Raya Senggigi, Batu Layar, Kabupaten Lombok Barat.",
    "deskripsi":
    "Salah satu pantai yang populer di Lombok,Pantai Senggigi memiliki air laut yang biru dan jernih, sehingga sangat cocok untuk snorkeling dengan pemandangan bawah laut yang cantik. Pantai ini memiliki kondisi ombak yang cocok untuk berselancar, termasuk untuk pemula. Jika ingin menikmati pemandangan indah di Pantai Senggigi, pengunjung dikenai biaya tiket masuk sebesar Rp 15.000 per orang.",
    "foto": "assets/Sengigi.jpg"
  }
];

class PariwisataListScreen extends StatelessWidget {
  PariwisataListScreen({super.key});

  final List<PariwisataList> pariwisataList =
      pariwisata.map((e) => PariwisataList.fromJson(e)).toList();

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
        itemCount: pariwisataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PariwisataDetailScreen(
                    pariwisata: pariwisataList[index],
                  ),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xff211D3E),
              elevation: 5,
              child: SizedBox(
                height: 140,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          pariwisataList[index].foto!,
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
                              pariwisataList[index].nama!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              pariwisataList[index].alamat!,
                              style: const TextStyle(
                                color: Color(0xffC9C8C8),
                                fontSize: 12,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}

