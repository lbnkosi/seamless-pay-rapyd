import '../auth/auth_util.dart';
import '../checkout_page/checkout_page_widget.dart';
import '../customer_manage_account/customer_manage_account_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../login/login_widget.dart';
import '../shop/shop_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimulateTransferPageWidget extends StatefulWidget {
  const SimulateTransferPageWidget({Key? key}) : super(key: key);

  @override
  _SimulateTransferPageWidgetState createState() =>
      _SimulateTransferPageWidgetState();
}

class _SimulateTransferPageWidgetState
    extends State<SimulateTransferPageWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/2262.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.1, 0.11),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        color: Color(0x34FFFFFF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 22,
                            sigmaY: 22,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 25, 0, 0),
                                  child: Text(
                                    'Simulate A Transfer',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'AstroSpace',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 44,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Text(
                                    'Simulate a transfer using this page',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: textController1,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Issued Bank Account',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w300,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x4CFFFFFF),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x4CFFFFFF),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x34F1F4F8),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: textController2,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Amount',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w300,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x4CFFFFFF),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x4CFFFFFF),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x34F1F4F8),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: TextFormField(
                                      controller: textController3,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Currency',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w300,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x4CFFFFFF),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x4CFFFFFF),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x34F1F4F8),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 40, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CheckoutPageWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Simulate',
                                    options: FFButtonOptions(
                                      width: 230,
                                      height: 50,
                                      color: Color(0xFFF28731),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'AstroSpace',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 50,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      color: Color(0x4DFFFFFF),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 22,
                          sigmaY: 22,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    100, 0, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePageWidget(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'SPACE',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 45,
                                          letterSpacing: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    300, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 200, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePageWidget(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Home',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 200, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CustomerManageAccountWidget(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Account',
                                          style: GoogleFonts.getFont(
                                            'Montserrat',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ShopWidget(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Shop',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '‎',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 100, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await signOut();
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginWidget(),
                                    ),
                                  );
                                },
                                text: 'Logout',
                                options: FFButtonOptions(
                                  width: 200,
                                  height: 50,
                                  color: Color(0x4CFFFFFF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'AstroSpace',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(35),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
