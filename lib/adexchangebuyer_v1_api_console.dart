library adexchangebuyer_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_adexchangebuyer_v1_api/src/cloud_api_console.dart';

import "package:google_adexchangebuyer_v1_api/adexchangebuyer_v1_api_client.dart";

/** Lets you manage your Ad Exchange Buyer account. */
class Adexchangebuyer extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your Ad Exchange buyer account configuration */
  static const String ADEXCHANGE_BUYER_SCOPE = "https://www.googleapis.com/auth/adexchange.buyer";

  final oauth2.OAuth2Console auth;

  Adexchangebuyer([oauth2.OAuth2Console this.auth]);
}
