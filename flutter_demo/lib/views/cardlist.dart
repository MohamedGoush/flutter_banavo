import '../helper/export_helper.dart';

class CardList extends StatelessWidget {
  final List<InfoCardModel>? infoCard;
  final String? title;

  const CardList({
    super.key,
    this.infoCard,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                title ?? "Lessons for you",
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "View all",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: secondary,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: secondary,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: infoCard!.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InfoCard(
                  image: infoCard![index].image,
                  category: infoCard![index].category,
                  title: infoCard![index].title,
                  info: infoCard![index].info,
                  isButton: infoCard![index].isButton,
                  isIcon: infoCard![index].isIcon,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
