import '../helper/export_helper.dart';

class CategoryCard extends StatelessWidget {
  final String? title;
  final IconData? icon;

  const CategoryCard({
    super.key,
    this.title,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: primary),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 16.0,
          ),
          Icon(
            icon ?? Icons.book,
            color: primary,
          ),
          SizedBox(
            width: 16.0,
          ),
          Text(
            title ?? "Programs",
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
