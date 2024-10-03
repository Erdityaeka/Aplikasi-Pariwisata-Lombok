class wisata {
  final String nama;
  final String deskripsi;
  final String foto;
  wisata({required this.nama, required this.deskripsi, required this.foto});
}

final List<wisata> wisat = [
  wisata(
      nama: 'Taman Wisata Pusuk Sembalun',
      deskripsi:
          'Datanglah ke Taman Wisata PusukSembalun,\ndi mana Anda dapat menikmati pemandangan\npegunungan.',
      foto: 'assets/sembalun.jpg'),
  wisata(
      nama: 'Bukit Pergasingan',
      deskripsi:
          'Petak-petak sawah dan kebun-kebun warga\nyang berwarna-warni dan dikelilingideretan\npegunungan tinggi.',
      foto: 'assets/bukit.jpg'),
  wisata(
      nama: 'Batu Payung, Tanjung Aan',
      deskripsi:
          'Dari arah tertentu malah tampak seperti jari\nraksasa yang teracung ke angkasa.',
      foto: 'assets/aan.jpg'),
  wisata(
      nama: 'Air Terjun Benang Kelambu',
      deskripsi:
          'Aliran air yang jatuh dari ketinggiantebing\ntidak langsung terhempaske bawah, ',
      foto: 'assets/kelambu.jpg'),
  wisata(
      nama: 'Gunung Rinjani',
      deskripsi:
          'Gunung Rinjani merupakan gunung berapi aktif\nyang tak henti-hentinya mengeluarkan asap.',
      foto: 'assets/rinjani.jpg'),
  wisata(
      nama: 'Pantai Senggigi',
      deskripsi:
          'Salah satu pantai yang populer di Lombok,\nyaitu Pantai Senggigi. Letaknya di Jalan Raya\nSenggigi, Batu Layar, Kabupaten Lombok Barat.',
      foto: 'assets/Sengigi.jpg'),
  
];
