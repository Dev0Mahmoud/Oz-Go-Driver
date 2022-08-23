import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../constants/end_points.dart';
import '../../data/local/cache_helper.dart';

import 'global_state.dart';


class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  static GlobalCubit get(context) => BlocProvider.of(context);


  List<Contact>? contacts;

  Future<void> askPermissions(BuildContext context) async {
    PermissionStatus permissionStatus = await getContactPermission();
    if (permissionStatus == PermissionStatus.granted) {
      await uploadContacts();
    } else {
      handleInvalidPermissions(permissionStatus, context);
    }
  }

  Future<PermissionStatus> getContactPermission() async {
    final permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();

      return permissionStatus;
    } else {
      return permission;
    }
  }

  void handleInvalidPermissions(
      PermissionStatus permissionStatus, BuildContext context) {
    if (permissionStatus == PermissionStatus.denied) {
      const snackBar = SnackBar(content: Text('Access to contact data denied'));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
      const snackBar =
      SnackBar(content: Text('Contact data not available on device'));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future uploadContacts() async {
    emit(LoadingContacts());
    contacts = (await FastContacts.allContacts).toList();
    emit(GotContacts());
    printContacts(contacts?? []);
  }

  void printContacts(List contacts) {
    for (var x in contacts) {
      print(x.displayName);
    }
  }




}
