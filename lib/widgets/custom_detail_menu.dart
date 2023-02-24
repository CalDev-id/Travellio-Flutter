part of 'widget.dart';

class CustomDetailMenu extends StatefulWidget {
  final int selectedIndex;
  final List<String> detailMenus;
  final Function(int index) onTap;

  const CustomDetailMenu(
      {Key? key,
      required this.detailMenus,
      required this.onTap,
      required this.selectedIndex})
      : super(key: key);

  @override
  State<CustomDetailMenu> createState() => _CustomDetailMenuState();
}

class _CustomDetailMenuState extends State<CustomDetailMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 25,
        child: ListView.builder(
            itemCount: widget.detailMenus.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.onTap(index);
                      });
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: index == widget.selectedIndex
                                        ? secondaryColor
                                        : Colors.transparent,
                                    width: 2))),
                        child: Text(
                          widget.detailMenus[index],
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: index == widget.selectedIndex
                                  ? secondaryColor
                                  : Colors.black26),
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
