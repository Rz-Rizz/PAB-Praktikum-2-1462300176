import 'package:flutter/material.dart';

class Doctor {
  final String spesialis;
  final String nama;
  final String subSpesialis;
  final String jadwal;
  final String bio;
  final String photoAsset;
  final IconData icon;

  const Doctor({
    required this.spesialis,
    required this.nama,
    required this.subSpesialis,
    required this.jadwal,
    required this.bio,
    required this.photoAsset,
    required this.icon,
  });
}

const List<Doctor> doctors = [
  Doctor(
    spesialis: 'Dokter Umum',
    nama: 'dr. Bima Prasetyo',
    subSpesialis: 'Dokter Umum',
    jadwal: 'Senin - Jumat, 09.00 - 17.00',
    bio:
        'Dokter umum dengan pengalaman dalam pemeriksaan kesehatan, konsultasi medis, penanganan keluhan ringan, dan perawatan dasar pasien.',
    photoAsset: 'assets/images/DokterUmum.png',
    icon: Icons.medical_services,
  ),
  Doctor(
    spesialis: 'Dokter Gigi',
    nama: 'drg. Nadia Putri',
    subSpesialis: 'Dokter Gigi',
    jadwal: 'Senin - Sabtu, 08.00 - 15.00',
    bio:
        'Dokter gigi yang berfokus pada pemeriksaan gigi, perawatan mulut, pembersihan karang gigi, dan konsultasi kesehatan gigi keluarga.',
    photoAsset: 'assets/images/DokterGigi.png',
    icon: Icons.medical_services,
  ),
  Doctor(
    spesialis: 'Dokter Anak',
    nama: 'dr. Nabila Azahra',
    subSpesialis: 'Dokter Anak',
    jadwal: 'Selasa - Sabtu, 10.00 - 16.00',
    bio:
        'Dokter anak dengan pengalaman menangani pemeriksaan tumbuh kembang, imunisasi, dan keluhan medis umum pada anak.',
    photoAsset: 'assets/images/DokterAnak.png',
    icon: Icons.child_care,
  ),
  Doctor(
    spesialis: 'Dokter Hewan',
    nama: 'drh. Hana Safitri',
    subSpesialis: 'Dokter Hewan',
    jadwal: 'Rabu - Minggu, 09.00 - 14.00',
    bio:
        'Dokter hewan yang melayani pemeriksaan kesehatan, vaksinasi, konsultasi nutrisi, serta penanganan awal untuk hewan peliharaan.',
    photoAsset: 'assets/images/DokterGigi.png',
    icon: Icons.pets,
  ),
  Doctor(
    spesialis: 'Dokter Jantung',
    nama: 'dr. Adrian Wicaksono, Sp.JP',
    subSpesialis: 'Spesialis Jantung dan Pembuluh Darah',
    jadwal: 'Senin, Rabu, Jumat, 13.00 - 18.00',
    bio:
        'Dokter spesialis jantung yang menangani konsultasi kesehatan jantung, pemeriksaan tekanan darah, dan evaluasi keluhan nyeri dada.',
    photoAsset: 'assets/images/DokterUmum.png',
    icon: Icons.favorite,
  ),
  Doctor(
    spesialis: 'Dokter Mata',
    nama: 'dr. Shinta Maharani, Sp.M',
    subSpesialis: 'Spesialis Mata',
    jadwal: 'Selasa - Kamis, 09.00 - 14.00',
    bio:
        'Dokter mata dengan layanan pemeriksaan penglihatan, konsultasi mata kering, iritasi, dan pemantauan kesehatan mata rutin.',
    photoAsset: 'assets/images/DokterAnak.png',
    icon: Icons.visibility,
  ),
  Doctor(
    spesialis: 'Dokter Kulit',
    nama: 'dr. Felicia Anindya, Sp.KK',
    subSpesialis: 'Spesialis Kulit dan Kelamin',
    jadwal: 'Senin - Jumat, 10.00 - 16.00',
    bio:
        'Dokter kulit yang berfokus pada konsultasi jerawat, alergi kulit, perawatan kulit dasar, dan keluhan dermatologi umum.',
    photoAsset: 'assets/images/DokterGigi.png',
    icon: Icons.spa,
  ),
  Doctor(
    spesialis: 'Dokter Saraf',
    nama: 'dr. Rizky Ramadhan, Sp.N',
    subSpesialis: 'Spesialis Saraf',
    jadwal: 'Rabu - Sabtu, 11.00 - 17.00',
    bio:
        'Dokter saraf yang menangani konsultasi sakit kepala, kesemutan, gangguan tidur, dan pemeriksaan fungsi saraf dasar.',
    photoAsset: 'assets/images/DokterUmum.png',
    icon: Icons.psychology,
  ),
  Doctor(
    spesialis: 'Dokter Kandungan',
    nama: 'dr. Maya Lestari, Sp.OG',
    subSpesialis: 'Spesialis Obstetri dan Ginekologi',
    jadwal: 'Senin, Rabu, Sabtu, 08.00 - 13.00',
    bio:
        'Dokter kandungan yang melayani konsultasi kehamilan, pemeriksaan rutin ibu dan janin, serta edukasi kesehatan reproduksi.',
    photoAsset: 'assets/images/DokterAnak.png',
    icon: Icons.pregnant_woman,
  ),
  Doctor(
    spesialis: 'Dokter THT',
    nama: 'dr. Kevin Hartono, Sp.THT',
    subSpesialis: 'Spesialis Telinga Hidung Tenggorokan',
    jadwal: 'Selasa, Kamis, Minggu, 15.00 - 20.00',
    bio:
        'Dokter THT yang melayani pemeriksaan telinga, hidung, tenggorokan, keluhan alergi, infeksi, dan gangguan pendengaran ringan.',
    photoAsset: 'assets/images/DokterHewan.png',
    icon: Icons.hearing,
  ),
];
