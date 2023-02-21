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
        height: 300,
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
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.destination.title,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: primaryColor)),
                            Text('Pernah ke sini?',
                                softWrap: false,
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black45)),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                                '\$${widget.destination.price.toString()}',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  )),
              // Text(widget.destination.title,
              //     style: GoogleFonts.poppins(
              //         fontWeight: FontWeight.w500,
              //         fontSize: 18,
              //         color: Colors.white)),
              // Text(widget.destination.duration,
              //     style: GoogleFonts.poppins(
              //         fontWeight: FontWeight.w300,
              //         fontSize: 14,
              //         color: Colors.white)),
            ],
          ),
        ));
  }
}
