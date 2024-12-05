import 'package:flutter/cupertino.dart';
import 'package:si_store/common/widgets/custom_shapes/curve_edges/scustom_curved_edges.dart';

class SCurvedEdgeWidget extends StatelessWidget {
  const SCurvedEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ScustomCurvedEdges(),
      child: child,
    );
  }
}
