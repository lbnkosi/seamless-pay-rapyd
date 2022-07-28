import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../customer_manage_account/customer_manage_account_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../login/login_widget.dart';
import '../shop/shop_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankAccountsPageWidget extends StatefulWidget {
  const BankAccountsPageWidget({
    Key? key,
    this.customerId,
  }) : super(key: key);

  final String? customerId;

  @override
  _BankAccountsPageWidgetState createState() => _BankAccountsPageWidgetState();
}

class _BankAccountsPageWidgetState extends State<BankAccountsPageWidget> {
  String? dropDownValue1;
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  String? dropDownValue2;
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
                    'assets/images/15695187_5557922.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Color(0x57000000),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 22,
                          sigmaY: 22,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
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
                                              builder: (context) =>
                                                  HomePageWidget(),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 200, 0),
                                            child: Text(
                                              'Home',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                  builder: (context) =>
                                                      ShopWidget(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'Shop',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 100, 0),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  100, 100, 0, 0),
                              child: Text(
                                'Virtual Accounts Numbers',
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(100, 20, 0, 0),
                              child: Text(
                                'Create a virtual account number so you can make bank transfers to an account that\'s local',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  100, 50, 100, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: 600,
                                      decoration: BoxDecoration(
                                        color: Color(0x4DFFFFFF),
                                        borderRadius: BorderRadius.circular(25),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 50, 0, 0),
                                            child: Text(
                                              'Create a virtual account number',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 50, 15, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              child: TextFormField(
                                                controller: textController1,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Customer Email',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x4CFFFFFF),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x4CFFFFFF),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  suffixIcon: Icon(
                                                    Icons.email_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 22,
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 15, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              child: TextFormField(
                                                controller: textController2,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'Customer ID',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x4CFFFFFF),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x4CFFFFFF),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  suffixIcon: Icon(
                                                    Icons.email_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 22,
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 15, 0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                              child: TextFormField(
                                                controller: textController3,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: 'First Name',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x4CFFFFFF),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x4CFFFFFF),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  suffixIcon: Icon(
                                                    Icons.email_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 22,
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 15, 0),
                                            child: FlutterFlowDropDown(
                                              options: ['GB', 'US', 'SG'],
                                              onChanged: (val) => setState(
                                                  () => dropDownValue1 = val),
                                              width: 390,
                                              height: 41,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                              hintText: 'Please select...',
                                              icon: Icon(
                                                Icons.location_on,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                size: 15,
                                              ),
                                              elevation: 2,
                                              borderColor: Color(0x82FFFFFF),
                                              borderWidth: 0,
                                              borderRadius: 15,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              hidesUnderline: true,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 15, 0),
                                            child: FlutterFlowDropDown(
                                              options: ['GBP', 'USD', 'SGD'],
                                              onChanged: (val) => setState(
                                                  () => dropDownValue2 = val),
                                              width: 390,
                                              height: 41,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                              hintText: 'Please select...',
                                              icon: Icon(
                                                Icons.location_on,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                size: 15,
                                              ),
                                              elevation: 2,
                                              borderColor: Color(0x82FFFFFF),
                                              borderWidth: 0,
                                              borderRadius: 15,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              hidesUnderline: true,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 100, 0, 0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await CreateVanCall.call(
                                                  country: dropDownValue1,
                                                  currency: dropDownValue2,
                                                  customerID:
                                                      textController2!.text,
                                                  customerEmail:
                                                      textController1!.text,
                                                  description:
                                                      textController3!.text,
                                                );
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Success'),
                                                      content: Text(
                                                          'You have created a virtual account number. We\'ve sent an email to you with the details. Use it to make a purchase'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePageWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'Create VAN',
                                              options: FFButtonOptions(
                                                width: 180,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25, 0, 0, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 600,
                                        decoration: BoxDecoration(
                                          color: Color(0x4CFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 50, 0, 0),
                                              child: Text(
                                                'View virtual account numbers',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(100, 30, 100, 0),
                                              child: StreamBuilder<
                                                  List<CustomersRecord>>(
                                                stream: queryCustomersRecord(
                                                  queryBuilder: (customersRecord) =>
                                                      customersRecord.where(
                                                          'email',
                                                          isEqualTo:
                                                              'mainmemberv4@gmail.com'),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CustomersRecord>
                                                      listViewCustomersRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the document does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final listViewCustomersRecord =
                                                      listViewCustomersRecordList
                                                          .first;
                                                  return Builder(
                                                    builder: (context) {
                                                      final tebogo =
                                                          listViewCustomersRecord
                                                              .bankAccounts!
                                                              .toList();
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            tebogo.length,
                                                        itemBuilder: (context,
                                                            tebogoIndex) {
                                                          final tebogoItem =
                                                              tebogo[
                                                                  tebogoIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        5),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  tebogoItem
                                                                      .bankName!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                Text(
                                                                  tebogoItem
                                                                      .countryIso!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                Text(
                                                                  tebogoItem
                                                                      .currency!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                },
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
