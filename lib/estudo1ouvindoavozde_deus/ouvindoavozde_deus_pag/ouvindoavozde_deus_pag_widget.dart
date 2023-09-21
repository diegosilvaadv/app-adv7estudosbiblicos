import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ouvindoavozde_deus_pag_model.dart';
export 'ouvindoavozde_deus_pag_model.dart';

class OuvindoavozdeDeusPagWidget extends StatefulWidget {
  const OuvindoavozdeDeusPagWidget({
    Key? key,
    required this.cap,
    required this.html,
    required this.id,
  }) : super(key: key);

  final String? cap;
  final String? html;
  final String? id;

  @override
  _OuvindoavozdeDeusPagWidgetState createState() =>
      _OuvindoavozdeDeusPagWidgetState();
}

class _OuvindoavozdeDeusPagWidgetState
    extends State<OuvindoavozdeDeusPagWidget> {
  late OuvindoavozdeDeusPagModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OuvindoavozdeDeusPagModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Text(
            valueOrDefault<String>(
              widget.cap,
              's/titulo',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 18.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Html(
                  data: widget.html!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
