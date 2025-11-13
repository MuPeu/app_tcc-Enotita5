import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HamburgerMenu extends StatefulWidget {
  final Function(String) onItemSelected;

  const HamburgerMenu({
    super.key,
    required this.onItemSelected,
  });

  @override
  State<HamburgerMenu> createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu>
    with SingleTickerProviderStateMixin {
  late OverlayEntry _overlayEntry;
  bool _isOpen = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  final List<Map<String, String>> fases = [
    {"label": "A Floresta", "route": "/fase1"},
    {"label": "Casa de Doce", "route": "/fase2"},
    {"label": "O Forno", "route": "/fase3"},
    {"label": "A Fuga", "route": "/fase4"},
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  void _toggleMenu(BuildContext context) {
    if (_isOpen) {
      _controller.reverse();
      Future.delayed(const Duration(milliseconds: 250), () {
        _overlayEntry.remove();
        _isOpen = false;
      });
    } else {
      _overlayEntry = _createOverlay(context);
      Overlay.of(context).insert(_overlayEntry);
      _controller.forward();
      _isOpen = true;
    }
  }

  OverlayEntry _createOverlay(BuildContext context) {
    final renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        top: position.dy + renderBox.size.height, // abaixo do header
        right: 10,
        child: Material(
          color: Colors.transparent,
          child: FadeTransition(
            opacity: _animation,
            child: Container(
              width: 220,
              decoration: BoxDecoration(
                color: AppTheme.menuGreen.withOpacity(0.7),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 6,
                    offset: const Offset(2, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: fases
                    .map(
                      (fase) => Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, fase["route"]!);
                            _toggleMenu(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppTheme.menuGreen,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Text(
                              fase["label"]!,
                              style: AppTheme.titleStyle.copyWith(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: _controller,
        color: Colors.white,
        size: 34,
      ),
      onPressed: () => _toggleMenu(context),
    );
  }
}
