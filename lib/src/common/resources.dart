part of adexchangebuyer_v1_api_client;

class AccountsResource_ extends Resource {

  AccountsResource_(Client client) : super(client) {
  }

  /**
   * Gets one account by ID.
   *
   * [id] - The account id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> get(core.int id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Account.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the authenticated user's list of accounts.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AccountsList> list({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AccountsList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing account. This method supports patch semantics.
   *
   * [request] - Account to send in this request
   *
   * [id] - The account id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> patch(Account request, core.int id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Account.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing account.
   *
   * [request] - Account to send in this request
   *
   * [id] - The account id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> update(Account request, core.int id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "accounts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Account.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CreativesResource_ extends Resource {

  CreativesResource_(Client client) : super(client) {
  }

  /**
   * Gets the status for a single creative.
   *
   * [accountId] - The id for the account that will serve this creative.
   *
   * [buyerCreativeId] - The buyer-specific id for this creative.
   *
   * [adgroupId] - The adgroup this creative belongs to.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Creative> get(core.int accountId, core.String buyerCreativeId, core.String adgroupId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "creatives/{accountId}/{buyerCreativeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adgroupId == null) paramErrors.add("adgroupId is required");
    if (adgroupId != null) queryParams["adgroupId"] = adgroupId;
    if (buyerCreativeId == null) paramErrors.add("buyerCreativeId is required");
    if (buyerCreativeId != null) urlParams["buyerCreativeId"] = buyerCreativeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Creative.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Submit a new creative.
   *
   * [request] - Creative to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Creative> insert(Creative request, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "creatives";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Creative.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of the authenticated user's active creatives.
   *
   * [maxResults] - Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response. Optional.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CreativesList> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "creatives";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CreativesList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class DirectDealsResource_ extends Resource {

  DirectDealsResource_(Client client) : super(client) {
  }

  /**
   * Gets one direct deal by ID.
   *
   * [id] - The direct deal id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DirectDeal> get(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "directdeals/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DirectDeal.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the authenticated user's list of direct deals.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DirectDealsList> list({core.Map optParams}) {
    var completer = new async.Completer();
    var url = "directdeals";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DirectDealsList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

