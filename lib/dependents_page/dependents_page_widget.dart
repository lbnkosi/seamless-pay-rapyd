import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DependentsPageWidget extends StatefulWidget {
  const DependentsPageWidget({Key? key}) : super(key: key);

  @override
  _DependentsPageWidgetState createState() => _DependentsPageWidgetState();
}

class _DependentsPageWidgetState extends State<DependentsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    );
  }
}
