part of 'coin_item_widget.dart';

Widget _buildCoinImageWidget({
  required String image,
}) {
  return Padding(
    padding: EdgeInsets.only(right: 16.w),
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.h,
          color: Colors.white60,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.h),
        child: Image.network(
          image,
          height: 48.h,
          width: 48.h,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
