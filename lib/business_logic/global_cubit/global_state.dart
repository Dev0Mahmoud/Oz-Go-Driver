
import 'package:equatable/equatable.dart';
import 'package:fast_contacts/fast_contacts.dart';

import '../../data/models/account_model.dart';

abstract class GlobalState {}

class GlobalInitial extends GlobalState {}

class LoadingContacts extends GlobalState{}

class GotContacts extends GlobalState{}

class NoContacts extends GlobalState{}

class checked extends GlobalState{}

class Searching extends GlobalState{}

class FinishedSearching extends GlobalState{}
