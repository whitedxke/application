import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseStateWidget extends StatelessWidget {
  final String _message;
  final Color _color;
  final IconData _icon;

  const BaseStateWidget({
    super.key,
    required String message,
    required Color color,
    required IconData icon,
  })  : _message = message,
        _color = color,
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Icon(
                _icon,
                size: 48.h,
                color: _color,
              ),
            ),
            Text(
              _message,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.h,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
