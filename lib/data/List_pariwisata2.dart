class wisataa {
  final String namaa;
  final String alamat;
  final String deskripsi;
  final String foto;
  wisataa(
      {required this.namaa,
      required this.alamat,
      required this.deskripsi,
      required this.foto});
}

final List<wisataa> wisa = [
  wisataa(
      namaa: 'Taman Wisata Pusuk Sembalun',
      alamat: 'Sembalun Lawang Sembalun 83656 Lombok Timur Nusa\nTenggara Barat',
      deskripsi:
          ' Datanglah ke Taman Wisata Pusuk Sembalun, di mana Anda dapat menikmati pemandangan pegunungan yang menakjubkan tanpa aktivitas fisik, pada ketinggian 1.250 meter di atas permukaan laut.',
      foto: 'assets/sembalun.jpg'),
  wisataa(
      namaa: 'Bukit Pergasingan',
      alamat: 'Desa Sembalun, Kecamatan Sembalun, Lombok Timur.',
      deskripsi:
          ' Petak-petak sawah dan kebun-kebun warga yang berwarna-warni dan dikelilingi deretan pegunungan tinggi, ditambah langit biru yang membentang amat sangat menyejukkan mata.Dari tempat yang kini telah menjadi taman wisata alam ini Anda bahkan dapat melihat kemegahan Gunung Rinjani.\nBerdiri di ketinggian 1.670 meter di atas permukaan laut atau sekitar 673 meter dari dataran Sembalun, Bukit Pergasingan  bisa didaki selama 2-2,5 jam dan sering dijadikan tempat latihan sebelum mendaki Gunung Rinjani.',
      foto: 'assets/bukit.jpg'),
  wisataa(
      namaa: 'Batu Payung, Tanjung Aan',
      alamat: 'Desa Pengembur, Pujut, Kabupaten Lombok Tengah,\nNusa Tenggara Barat.',
      deskripsi:
          ' Dari arah tertentu malah tampak seperti jari raksasa yang teracung ke angkasa.Rasanya tak mungkin untuk tak menengok saat melihat formasi alam yang luar biasa ini. Uniknya, jika dilihat dari arah berbeda, maka bentuknya pun akan ikut berubah pula. Bahkan dari satu sisi wujudnya akan menyerupai profil wajah manusia.',
      foto: 'assets/aan.jpg'),
  wisataa(
      namaa: 'Air Terjun Benang Kelambu',
      alamat: 'Kabupaten Lombok Tengah bagian utara,\nDusun Pemotoh, Desa Aik Berik,Kecamatan Batukliang Utara.',
      deskripsi:
          'Sesuai namanya, air terjun ini memang unik dan lain daripada air terjun lain umum Anda jumpai. Aliran air yang jatuh dari ketinggian tebing tidak langsung terhempas ke bawah, melainkan melewati celah-celah tanaman merambat yang tumbuh lebat di tebing sehingga tampak bagai kelambu atau tirai yang menggantung di udara.',
      foto: 'assets/kelambu.jpg'),
  wisataa(
      namaa: 'Gunung Rinjani',
      alamat: 'Di Pulau Lombok, Nusa Tenggara Barat. ',
      deskripsi:
          ' Gunung Rinjani merupakan gunung berapi aktif yang tak henti-hentinya mengeluarkan asap. Namun demikian, keindahan alam yang memukau membuat siapapun tetap tergoda untuk menaklukkannya.',
      foto: 'assets/rinjani.jpg'),
  wisataa(
      namaa: 'Pantai Senggigi',
      alamat: 'Jalan Raya Senggigi, Batu Layar, Kabupaten Lombok Barat.',
      deskripsi:
          ' Salah satu pantai yang populer di Lombok,Pantai Senggigi memiliki air laut yang biru dan jernih, sehingga sangat cocok untuk snorkeling dengan pemandangan bawah laut yang cantik. Pantai ini memiliki kondisi ombak yang cocok untuk berselancar, termasuk untuk pemula. Jika ingin menikmati pemandangan indah di Pantai Senggigi, pengunjung dikenai biaya tiket masuk sebesar Rp 15.000 per orang.',
      foto: 'assets/Sengigi.jpg'),
];
