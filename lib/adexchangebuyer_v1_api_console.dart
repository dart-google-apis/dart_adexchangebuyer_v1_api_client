library adexchangebuyer_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_adexchangebuyer_v1_api/src/console_client.dart';

import "package:google_adexchangebuyer_v1_api/adexchangebuyer_v1_api_client.dart";

/** Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports. */
@deprecated
class Adexchangebuyer extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your Ad Exchange buyer account configuration */
  static const String ADEXCHANGE_BUYER_SCOPE = "https://www.googleapis.com/auth/adexchange.buyer";

  final oauth2.OAuth2Console auth;

  Adexchangebuyer([oauth2.OAuth2Console this.auth]);
}
