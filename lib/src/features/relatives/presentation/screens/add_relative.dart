import 'package:astrotak/src/core/constants/app_strings.dart';
import 'package:astrotak/src/core/widgets/pop_up_widget.dart';
import 'package:astrotak/src/features/relatives/data/models/birth_detials_model.dart';
import 'package:astrotak/src/features/relatives/data/models/birth_place_model.dart';
import 'package:astrotak/src/features/relatives/data/models/relative_model.dart';
import 'package:astrotak/src/features/relatives/domain/entities/location.dart';
import 'package:astrotak/src/features/relatives/domain/entities/relative.dart';
import 'package:astrotak/src/features/relatives/presentation/bloc/relatives_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddNewRelative extends StatefulWidget {
  final Relative? relative;
  const AddNewRelative({Key? key, this.relative}) : super(key: key);

  @override
  State<AddNewRelative> createState() => _AddNewRelativeState();
}

class _AddNewRelativeState extends State<AddNewRelative> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<Location> _locations = [];
  final Map<String, dynamic> relationMap = <String, dynamic>{};
  final layerlink = LayerLink();
  final focusNode = FocusNode();
  final TextEditingController _place = TextEditingController();
  OverlayEntry? overlayEntry;
  OverlayState? overLay;

  bool isAm = true;

  String _genderSelected = AppString.genderList.first;
  String _relationSelected = AppString.relationList.first;
  String _firstname = '';
  String _lastname = '';
  String _fullname = '';
  int _day = -1;
  int _month = -1;
  int _year = -1;
  int _hour = -1;
  int _mins = -1;
  String _meriduim = 'AM';
  String _placeId = '';

  @override
  void initState() {
    super.initState();
    if (widget.relative != null) {
      _firstname = widget.relative!.firstName;
      _lastname = widget.relative!.lastName;
      _fullname = widget.relative!.fullName;
      _day = widget.relative!.birthDetails.dobDay;
      _month = widget.relative!.birthDetails.dobMonth;
      _year = widget.relative!.birthDetails.dobYear;
      _hour = widget.relative!.birthDetails.tobHour;
      _mins = widget.relative!.birthDetails.tobMin;
      _meriduim = widget.relative!.birthDetails.meridiem;
      _placeId = widget.relative!.birthPlace.placeId;
      _place.text = widget.relative!.birthPlace.placeName;

      if (_meriduim == 'AM') {
        isAm = true;
      } else {
        isAm = false;
      }
    }
    overLay = Overlay.of(context);
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        showOverLay();
      } else {
        hideOverlay();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.addProfile),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    _name(),
                    const SizedBox(height: 20),
                    _dob(),
                    const SizedBox(height: 20),
                    _tob(),
                    const SizedBox(height: 20),
                    _pobPublider(),
                    const SizedBox(height: 20),
                    Row(children: [
                      _gender(),
                      const SizedBox(width: 20),
                      _relation(),
                    ])
                  ]),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
                child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  relationMap['relationId'] =
                      AppString.relationList.indexOf(_relationSelected) + 1;
                  relationMap['relation'] = _relationSelected;
                  relationMap['firstName'] = _firstname;
                  relationMap['middleName'] = '';
                  relationMap['lastName'] = _lastname;
                  relationMap['fullName'] = _fullname;
                  relationMap['gender'] = _genderSelected.toUpperCase();
                  relationMap['dateAndTimeOfBirth'] = DateFormat(
                          'dd-MM-yyy hh:mm a')
                      .parse('$_day-$_month-$_year $_hour:$_mins $_meriduim')
                      .toUtc()
                      .toString();
                  relationMap['birthDetails'] = BirthDetailsModel(
                          dobYear: _year,
                          dobDay: _day,
                          dobMonth: _month,
                          meridiem: _meriduim,
                          tobHour: _hour,
                          tobMin: _mins)
                      .toJson();
                  relationMap['birthPlace'] =
                      BirthPlaceModel(placeName: _place.text, placeId: _placeId)
                          .toJson();
                  if (widget.relative != null) {
                    relationMap['uuid'] = widget.relative!.uuid;
                    context.read<RelativesBloc>().add(
                        UpdateReltive(RelativeModel.fromJson(relationMap)));
                  } else {
                    relationMap['uuid'] = '';
                    context
                        .read<RelativesBloc>()
                        .add(AddRelative(RelativeModel.fromJson(relationMap)));
                  }
                }
              },
              child: Text(AppString.save),
            )),
          ),
        ],
      ),
    );
  }

  BlocConsumer<RelativesBloc, RelativesState> _pobPublider() {
    return BlocConsumer<RelativesBloc, RelativesState>(
      listener: (context, state) {
        if (state is LoationLoaded) {
          _locations.clear();
          _locations.addAll(state.locations);
        }

        //  else if (state is Initial) {
        //   showDialog(
        //     context: context,
        //     builder: (context) {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     },
        //   );
        // }

        else if (state is Error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        } else if (state is RelativeAdded || state is RelativeUpdated) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return _pob(
          onchanged: (location) {
            context.read<RelativesBloc>().add(GetLocation(location));
          },
        );
      },
    );
  }

  Column _name() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _text(AppString.name),
        TextFormField(
          onChanged: (value) {
            if (value.isNotEmpty) {
              _firstname = value.split(' ')[0];
              _lastname = '';
              _fullname = _firstname;
            }
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Invalid name';
            }
            return null;
          },
          initialValue: _firstname,
          decoration: InputDecoration(
            hintText: 'Enter Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }

  Padding _text(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _dob() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _text(AppString.dateOfBirth),
        Row(
          children: [
            Flexible(
              child: TextFormField(
                onChanged: (value) {
                  if (value.trim().isNotEmpty) {
                    _day = int.parse(value.trim());
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid day';
                  } else if (int.parse(value) > 31 || int.parse(value) < 0) {
                    return 'Invalid day';
                  }
                  return null;
                },
                initialValue: _day < 0 ? null : _day.toString(),
                maxLength: 2,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
                decoration: InputDecoration(
                  hintText: 'DD',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Flexible(
              child: TextFormField(
                onChanged: (value) {
                  if (value.trim().isNotEmpty) {
                    _month = int.parse(value.trim());
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid month';
                  } else if (int.parse(value) > 12 || int.parse(value) < 0) {
                    return 'Invalid month';
                  }
                  return null;
                },
                maxLength: 2,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
                initialValue: _month < 0 ? null : _month.toString(),
                decoration: InputDecoration(
                  hintText: 'MM',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Flexible(
              child: TextFormField(
                onChanged: (value) {
                  if (value.trim().isNotEmpty) {
                    _year = int.parse(value.trim());
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid year';
                  } else if (int.parse(value) > DateTime.now().year ||
                      int.parse(value) < 1900) {
                    return 'Invalid year';
                  }
                  return null;
                },
                maxLength: 4,
                initialValue: _year < 0 ? null : _year.toString(),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                ],
                decoration: InputDecoration(
                  hintText: 'YYYY',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _tob() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _text(AppString.timeofbirth),
        Row(
          children: [
            Flexible(
              child: TextFormField(
                onChanged: (value) {
                  if (value.trim().isNotEmpty) {
                    _hour = int.parse(value.trim());
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid hrs';
                  } else if (int.parse(value) < 0 || int.parse(value) > 24) {
                    return 'Invalid hrs';
                  }
                  return null;
                },
                initialValue: _hour < 0 ? null : _hour.toString(),
                maxLength: 2,
                decoration: InputDecoration(
                  hintText: 'hh',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Flexible(
              child: TextFormField(
                onChanged: (value) {
                  if (value.trim().isNotEmpty) {
                    _mins = int.parse(value.trim());
                  }
                },
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Invalid mins';
                  } else if (int.parse(value) > 60 || int.parse(value) < 0) {
                    return 'Invalid mins';
                  }
                  return null;
                },
                initialValue: _mins < 0 ? null : _mins.toString(),
                maxLength: 2,
                decoration: InputDecoration(
                  hintText: 'mm',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                isAm = !isAm;
                if (isAm) {
                  _meriduim = 'AM';
                } else {
                  _meriduim = 'PM';
                }
                setState(() {});
              },
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey,
                      )
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      _switch('AM', isAm),
                      _switch('PM', !isAm),
                    ],
                  )),
            ),
          ],
        ),
      ],
    );
  }

  Container _switch(String text, bool isActive) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo : Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 60,
      width: 60,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            color: isActive ? Colors.white : Colors.black, fontSize: 20),
      ),
    );
  }

  Widget _pob({required Function(String) onchanged}) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _text(AppString.placeOfBirth),
            CompositedTransformTarget(
              link: layerlink,
              child: TextFormField(
                controller: _place,
                focusNode: focusNode,
                onChanged: onchanged,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid location';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Enter location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _gender() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _text(AppString.gender),
          PopupWidet(
            values: AppString.genderList,
            onSelected: (value) {
              _genderSelected = value;
            },
          ),
        ],
      ),
    );
  }

  Widget _relation() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _text(AppString.relation),
          PopupWidet(
            values: AppString.relationList,
            onSelected: (value) {
              _relationSelected = value;
            },
          ),
        ],
      ),
    );
  }

  void showOverLay() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          width: size.width,
          child: CompositedTransformFollower(
            link: layerlink,
            offset: const Offset(0, 65),
            showWhenUnlinked: false,
            child: locationOverLay(),
          ),
        );
      },
    );

    overLay!.insert(overlayEntry!);
  }

  Widget locationOverLay() {
    return Container(
      height: 300,
      margin: const EdgeInsets.only(right: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
      ),
      child: Material(
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: _locations.length,
          itemBuilder: (context, index) {
            if (_locations.isEmpty) {
              return const Center(
                child: Text('No Locations'),
              );
            } else {
              return ListTile(
                onTap: () {
                  _placeId = _locations[index].placeId;
                  _place.text = _locations[index].placeName;
                  focusNode.unfocus();
                },
                title: Text(_locations[index].placeName),
              );
            }
          },
        ),
      ),
    );
  }

  void hideOverlay() {
    overlayEntry!.remove();
  }
}
