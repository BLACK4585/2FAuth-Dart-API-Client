//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/groups_api.dart';
part 'api/icons_api.dart';
part 'api/one_time_password_api.dart';
part 'api/qrcode_api.dart';
part 'api/settings_api.dart';
part 'api/twofaccounts_api.dart';
part 'api/user_api.dart';
part 'api/user_preference_api.dart';
part 'api/users_api.dart';

part 'model/get_twofaccounts_export200_response.dart';
part 'model/get_twofaccounts_id_qrcode200_response.dart';
part 'model/get_user_name200_response.dart';
part 'model/group_read.dart';
part 'model/group_store.dart';
part 'model/model2_f_account_export.dart';
part 'model/model2_f_account_migrated.dart';
part 'model/model2_f_account_read.dart';
part 'model/model2_f_account_store.dart';
part 'model/model2_f_account_update.dart';
part 'model/otp.dart';
part 'model/otpauth_uri.dart';
part 'model/patch_users_id_promote_request.dart';
part 'model/post_groups_id_assign_request.dart';
part 'model/post_icons201_response.dart';
part 'model/post_qrcode_decode200_response.dart';
part 'model/post_qrcode_decode400_response.dart';
part 'model/post_twofaccounts_migration_request.dart';
part 'model/post_twofaccounts_reorder_request.dart';
part 'model/post_twofaccounts_request.dart';
part 'model/put_settings_name_request.dart';
part 'model/put_user_preferences_name_request.dart';
part 'model/setting.dart';
part 'model/setting_value.dart';
part 'model/user_manager_read.dart';
part 'model/user_preference.dart';
part 'model/user_preference_value.dart';
part 'model/user_read.dart';
part 'model/user_read_preferences.dart';
part 'model/user_store.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
