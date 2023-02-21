part of 'widget.dart';

class CustomMenu extends StatefulWidget {
  final int selectedIndex;
  final List<String> menus;
  final Function(int index) onTap;

  const CustomMenu(
      {Key? key,
      required this.menus,
      required this.onTap,
      required this.selectedIndex})
      : super(key: key);

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.menus.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.onTap(index);
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: index == widget.selectedIndex
                            ? secondaryColor
                            : Colors.grey[200]),
                    child: Center(
                      child: Text(
                        widget.menus[index],
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: index == widget.selectedIndex
                                ? Colors.white
                                : Colors.black26),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
