import 'package:flutter/material.dart';

import '../models/dokter.dart';
import '../widgets/navigation_bar.dart';
import 'detail_dokter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const String nbi = '1462300176';
  static const String nama = 'Mochammad Daniyal Farich Alfarisi';
  static const String email = 'farichalfarisi28@gmail.com';
  static const String lokasi = 'Surabaya';
  static const String instagram = 'rz.r1zz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 2,
        onDestinationSelected: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/doctors');
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DetailDokterPage(doctor: doctors.first),
              ),
            );
          }
        },
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 430),
                child: SizedBox(
                  height: constraints.maxHeight,
                  child: Stack(
                    children: [
                      const Positioned(
                        top: -190,
                        left: -55,
                        right: -55,
                        child: _ProfileCircle(
                          size: 390,
                          color: Color(0xFFF1F3F5),
                        ),
                      ),
                      const Positioned(
                        bottom: -185,
                        left: -35,
                        right: -35,
                        child: _ProfileCircle(
                          size: 360,
                          color: Color(0xFFF1F3F5),
                        ),
                      ),
                      Positioned.fill(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.fromLTRB(0, 28, 0, 28),
                          child: Column(
                            children: [
                              const Text(
                                'Profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 34),
                              Container(
                                width: 118,
                                height: 118,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black12),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x1A000000),
                                      blurRadius: 18,
                                      offset: Offset(0, 8),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(4),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/profile.png',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(
                                        Icons.person_outline_rounded,
                                        size: 70,
                                        color: Colors.black,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(height: 38),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  border: Border.symmetric(
                                    horizontal: BorderSide(
                                      color: Color(0xFFE2E2E2),
                                    ),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    _ProfileInfoTile(
                                      icon: Icons.person_outline_rounded,
                                      label: nama,
                                    ),
                                    _ProfileInfoTile(
                                      icon: Icons.phone_in_talk_outlined,
                                      label: nbi,
                                    ),
                                    _ProfileInfoTile(
                                      icon: Icons.email_outlined,
                                      label: email,
                                    ),
                                    _ProfileInfoTile(
                                      icon: Icons.location_on_outlined,
                                      label: lokasi,
                                    ),
                                    _ProfileInfoTile(
                                      icon: Icons.alternate_email_rounded,
                                      label: instagram,
                                      showDivider: false,
                                    ),
                                  ],
                                ),
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
        ),
      ),
    );
  }
}

class _ProfileInfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool showDivider;

  const _ProfileInfoTile({
    required this.icon,
    required this.label,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 62),
      decoration: BoxDecoration(
        border: showDivider
            ? const Border(bottom: BorderSide(color: Color(0xFFE2E2E2)))
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        child: Row(
          children: [
            SizedBox(
              width: 34,
              child: Icon(icon, color: Colors.black, size: 28),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  height: 1.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileCircle extends StatelessWidget {
  final double size;
  final Color color;

  const _ProfileCircle({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IgnorePointer(
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
