
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ntp/ntp.dart';
import 'package:tober/src/utils/styles/colors.dart';
import 'package:tober/src/utils/styles/text.dart';

class DetailEmployeeScreen extends StatefulWidget {
  static const routeName = 'detail-employee';

  @override
  _DetailEmployeeScreenState createState() => _DetailEmployeeScreenState();
}

class _DetailEmployeeScreenState extends State<DetailEmployeeScreen> {
  int _service = 0;
  final List<String> _times = ['08:00', '10:00', '12:00', '14:00'];
  String _time = '08:00';
  String _date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          _buildAppBar(),
          _buildList(),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 256.0,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: CachedNetworkImage(
            imageUrl: 'https://pbs.twimg.com/profile_images/536824825671458816/757QCyPx.jpeg',
            fit: BoxFit.cover,
            width: 120,
            height: 160,
          ),
        ),
      ),
    );
  }

  Widget _buildList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Johny Sulaiman',
                  style: GoogleFonts.poppins(
                    textStyle: headingText.copyWith(
                      fontSize: 28,
                      color: primary_50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profesional Barber',
                      style: GoogleFonts.poppins(
                        textStyle: paragraphMedium.copyWith(
                          color: grey_80,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.0),
                    _buildStar(),
                  ],
                ),
                Divider(
                  color: grey_60,
                ),
                SizedBox(height: 8),
                Text(
                  'Service List',
                  style: GoogleFonts.poppins(
                    textStyle: headingText.copyWith(
                      fontSize: 20,
                      color: primary_50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Theme(
                  data: ThemeData(brightness: Brightness.light),
                  child: ExpansionPanelList.radio(
                    elevation: 0,
                    expandedHeaderPadding: EdgeInsets.all(0),
                    children: [
                      ExpansionPanelRadio(
                        canTapOnHeader: true,
                        value: 0,
                        headerBuilder: (context, isExpanded) {
                          return Row(
                            children: [
                              Radio(
                                activeColor: primary_100,
                                value: 0,
                                groupValue: _service,
                                onChanged: (int? value) {
                                  setState(() {
                                    _service = value ?? 0;
                                  });
                                },
                              ),
                              Text('Men’s Hair Cut'),
                              Expanded(child: Container()),
                              Text(
                                'Rp. 40.000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          );
                        },
                        body: Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text('45 Min', style: TextStyle(color: grey_80)),
                              Text('- Pangkas', style: TextStyle(color: grey_80)),
                              Text('- Cukur', style: TextStyle(color: grey_80)),
                              Text('- Pijat', style: TextStyle(color: grey_80)),
                            ],
                          ),
                        ),
                      ),
                      ExpansionPanelRadio(
                        canTapOnHeader: true,
                        value: 1,
                        headerBuilder: (context, isExpanded) {
                          return Row(
                            children: [
                              Radio(
                                activeColor: primary_100,
                                value: 1,
                                groupValue: _service,
                                onChanged: (int? value) {
                                  setState(() {
                                    _service = value ?? 0;
                                  });
                                },
                              ),
                              Text('Color & Blow Dry'),
                              Expanded(child: Container()),
                              Text(
                                'Rp. 80.000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          );
                        },
                        body: Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text('45 Min', style: TextStyle(color: grey_80)),
                              Text('- Pangkas', style: TextStyle(color: grey_80)),
                              Text('- Warna Rambut', style: TextStyle(color: grey_80)),
                              Text('- Cuci Rambut', style: TextStyle(color: grey_80)),
                            ],
                          ),
                        ),
                      ),
                      ExpansionPanelRadio(
                        canTapOnHeader: true,
                        value: 3,
                        headerBuilder: (context, isExpanded) {
                          return Row(
                            children: [
                              Radio(
                                activeColor: primary_100,
                                value: 3,
                                groupValue: _service,
                                onChanged: (int? value) {
                                  setState(() {
                                    _service = value ?? 0;
                                  });
                                },
                              ),
                              Text('Hard Pack'),
                              Expanded(child: Container()),
                              Text(
                                'Rp. 100.000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          );
                        },
                        body: Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text('95 Min', style: TextStyle(color: grey_80)),
                              Text('- Pangkas', style: TextStyle(color: grey_80)),
                              Text('- Cukur', style: TextStyle(color: grey_80)),
                              Text('- Pijat', style: TextStyle(color: grey_80)),
                              Text('- Masker', style: TextStyle(color: grey_80)),
                              Text('- Toner', style: TextStyle(color: grey_80)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Schedule',
                  style: GoogleFonts.poppins(
                    textStyle: headingText.copyWith(
                      fontSize: 20,
                      color: primary_50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => primary_100,
                        ),
                      ),
                      onPressed: () async {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          minTime: await NTP.now(),
                          maxTime: (await NTP.now()).add(Duration(days: 3)),
                          onChanged: (date) {},
                          onConfirm: (date) {
                            setState(() {
                              _date = '${date.day}-${date.month}-${date.year}';
                            });
                          },
                          currentTime: await NTP.now(),
                          locale: LocaleType.id,
                        );
                      },
                      child: Text(
                        'Select Date',
                        style: GoogleFonts.poppins(
                          textStyle: paragraphMedium.copyWith(
                            color: white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '$_date',
                      style: GoogleFonts.poppins(
                        textStyle: paragraphMedium.copyWith(
                          color: primary_50,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Theme(
                  data: ThemeData(brightness: Brightness.light),
                  child: DropdownButtonFormField(
                    items: _times.map((String time) {
                      return DropdownMenuItem(
                          value: time,
                          child: Row(
                            children: <Widget>[
                              Text(time),
                            ],
                          ));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() => _time = newValue ?? '');
                    },
                    value: _time,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 500)
        ],
      ),
    );
  }

  Widget _buildStar() {
    return Padding(
      padding: EdgeInsets.only(top: 4.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.orange,
            size: 18,
          ),
          SizedBox(width: 4.0),
          Text(
            '4.8',
            style: paragraphMedium.copyWith(
              color: Colors.orange,
            ),
          ),
          SizedBox(width: 4.0),
          Text(
            '(56)',
            style: paragraphMedium.copyWith(
              color: grey_80,
            ),
          )
        ],
      ),
    );
  }
}
