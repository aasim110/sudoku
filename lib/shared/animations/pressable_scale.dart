import 'package:flutter/material.dart';

class PressableScale extends StatefulWidget {
  const PressableScale({
    required this.child,
    super.key,
    this.enabled = true,
    this.scale = .97,
    this.duration = const Duration(milliseconds: 110),
  });

  final Widget child;
  final bool enabled;
  final double scale;
  final Duration duration;

  @override
  State<PressableScale> createState() => _PressableScaleState();
}

class _PressableScaleState extends State<PressableScale> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: widget.enabled ? (_) => _setPressed(true) : null,
      onPointerUp: widget.enabled ? (_) => _setPressed(false) : null,
      onPointerCancel: widget.enabled ? (_) => _setPressed(false) : null,
      child: AnimatedScale(
        scale: _pressed ? widget.scale : 1,
        duration: widget.duration,
        curve: Curves.easeOutCubic,
        child: widget.child,
      ),
    );
  }

  void _setPressed(bool value) {
    if (_pressed == value || !mounted) {
      return;
    }
    setState(() {
      _pressed = value;
    });
  }
}
