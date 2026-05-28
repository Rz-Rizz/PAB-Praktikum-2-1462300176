import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;
  final double height;
  final double itemWidth;
  final double itemHeight;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
    this.height = 70,
    this.itemWidth = 78,
    this.itemHeight = 54,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
        child: Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.black12),
            boxShadow: const [
              BoxShadow(
                color: Color(0x12000000),
                blurRadius: 18,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: [
              _NavItem(
                label: 'Beranda',
                icon: Icons.home_outlined,
                selectedIcon: Icons.home_rounded,
                isSelected: currentIndex == 0,
                width: itemWidth,
                height: itemHeight,
                onTap: () => onDestinationSelected(0),
              ),
              _NavItem(
                label: 'Dokter',
                icon: Icons.medical_services_outlined,
                selectedIcon: Icons.medical_services_rounded,
                isSelected: currentIndex == 1,
                width: itemWidth,
                height: itemHeight,
                onTap: () => onDestinationSelected(1),
              ),
              _NavItem(
                label: 'Profil',
                icon: Icons.person_outline_rounded,
                selectedIcon: Icons.person_rounded,
                isSelected: currentIndex == 2,
                width: itemWidth,
                height: itemHeight,
                onTap: () => onDestinationSelected(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final bool isSelected;
  final double width;
  final double height;
  final VoidCallback onTap;

  const _NavItem({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.isSelected,
    required this.width,
    required this.height,
    required this.onTap,
  });

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableWidth = constraints.maxWidth;
          final itemWidth = availableWidth.clamp(0.0, widget.width).toDouble();

          return Center(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => setState(() => _isHovered = true),
              onExit: (_) => setState(() => _isHovered = false),
              child: AnimatedScale(
                scale: _isHovered ? 1.08 : 1,
                duration: const Duration(milliseconds: 160),
                curve: Curves.easeOutCubic,
                child: SizedBox(
                  width: itemWidth,
                  height: widget.height,
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(14),
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: widget.onTap,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 220),
                        curve: Curves.easeOutCubic,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Tooltip(
                                  message: widget.label,
                                  child: Icon(
                                    widget.isSelected
                                        ? widget.selectedIcon
                                        : widget.icon,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              widget.label,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                height: 1,
                                fontWeight: widget.isSelected || _isHovered
                                    ? FontWeight.w700
                                    : FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
