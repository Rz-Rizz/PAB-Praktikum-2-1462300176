import 'package:flutter/material.dart';

import '../models/dokter.dart';
import '../widgets/navigation_bar.dart';

class DetailDokterPage extends StatelessWidget {
  final Doctor doctor;

  const DetailDokterPage({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Dokter')),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 10, 24, 14),
            child: ElevatedButton(
              onPressed: () {
                _showConfirmationDialog(context);
              },
              child: const Text(
                'Buat Janji Temu',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
            ),
          ),
          AppBottomNavigationBar(
            currentIndex: 1,
            onDestinationSelected: (index) {
              if (index == 0) {
                Navigator.pushReplacementNamed(context, '/doctors');
              } else if (index == 2) {
                Navigator.pushReplacementNamed(context, '/profile');
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 5, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 190,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Image.asset(
                    doctor.photoAsset,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(
                          Icons.person,
                          size: 80,
                          color: Colors.black,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      doctor.nama,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12),
                    ),
                    child: const Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                doctor.subSpesialis,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF4A4A4A),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'JADWAL PRAKTIK',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  letterSpacing: 0.4,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                doctor.jadwal,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'BIOGRAFI SINGKAT',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  letterSpacing: 0.4,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                doctor.bio,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.55,
                  color: Color(0xFF4A4A4A),
                ),
              ),
              const SizedBox(height: 22),
              const Row(
                children: [
                  Icon(Icons.star_rounded, color: Colors.amber, size: 24),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 24),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 24),
                  Icon(Icons.star_rounded, color: Colors.amber, size: 24),
                  Icon(Icons.star_half_rounded, color: Colors.amber, size: 24),
                  SizedBox(width: 8),
                  Text(
                    '4.5',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          insetPadding: const EdgeInsets.symmetric(horizontal: 28),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 26, 22, 22),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Konfirmasi Janji Temu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Apakah Anda yakin ingin membuat janji temu dengan ${doctor.nama}?',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.45,
                    color: Color(0xFF4A4A4A),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Tidak',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.black,
                              behavior: SnackBarBehavior.floating,
                              elevation: 0,
                              margin: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              content: const Text(
                                'Janji temu berhasil dibuat',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'Ya',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
