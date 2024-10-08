import 'package:flutter/material.dart';
import '../model/pariwisata_list.dart';

class PariwisataDetailScreen extends StatelessWidget {
  final PariwisataList pariwisata;

  const PariwisataDetailScreen({super.key, required this.pariwisata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1734),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderImage(),
            _buildContentSection(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff161329),
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
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
    );
  }

  Widget _buildHeaderImage() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            pariwisata.foto!,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 15,
          bottom: 10,
          child: _buildFavoriteButton(),
        ),
      ],
    );
  }

  Widget _buildFavoriteButton() {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 160, 41),
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Favorite',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff1B1734),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection(
            title: pariwisata.nama!,
            content: null,
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
          ),
          _buildDivider(),
          _buildSection(
            title: 'Lokasi',
            content: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.white54,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    pariwisata.alamat!,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildDivider(),
          _buildSection(
            title: 'Deskripsi',
            content: Text(
              pariwisata.deskripsi!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget? content,
    EdgeInsets? padding,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (content != null) ...[
            const SizedBox(height: 8),
            content,
          ],
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 3,
      color: const Color(0xff332D5A),
    );
  }
}