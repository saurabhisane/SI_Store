import 'package:flutter/cupertino.dart';
import '../../../../utils/constants/colors.dart';
import '../curve_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SCurvedEdgeWidget(
      child: Container(
        color: SColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: SCircularContainer(
                      background: SColors.textWhite.withOpacity(0.10))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: SCircularContainer(
                      background: SColors.textWhite.withOpacity(0.10))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
