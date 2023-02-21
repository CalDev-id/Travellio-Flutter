part of 'widget.dart';

class DestinationCard extends StatefulWidget {
  final Destination destination;

  const DestinationCard(Destination mockDestination,
      {Key? key, required this.destination})
      : super(key: key);

  @override
  State<DestinationCard> createState() => _DestinationCardState();
}

class _DestinationCardState extends State<DestinationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 210,
        height: 270,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
                image: AssetImage(widget.destination.image),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.destination.title,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white)),
              Text(widget.destination.duration,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.white)),
            ],
          ),
        ));
  }
}
