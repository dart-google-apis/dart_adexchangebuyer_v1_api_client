part of adexchangebuyer_v1_api_client;

/** Configuration data for an Ad Exchange buyer account. */
class Account {

  /** Your bidder locations that have distinct URLs. */
  core.List<AccountBidderLocation> bidderLocation;

  /** The nid parameter value used in cookie match requests. Please contact your technical account manager if you need to change this. */
  core.String cookieMatchingNid;

  /** The base URL used in cookie match requests. */
  core.String cookieMatchingUrl;

  /** Account id. */
  core.int id;

  /** Resource type. */
  core.String kind;

  /** The sum of all bidderLocation.maximumQps values cannot exceed this. Please contact your technical account manager if you need to change this. */
  core.int maximumTotalQps;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
    if (json.containsKey("bidderLocation")) {
      bidderLocation = [];
      json["bidderLocation"].forEach((item) {
        bidderLocation.add(new AccountBidderLocation.fromJson(item));
      });
    }
    if (json.containsKey("cookieMatchingNid")) {
      cookieMatchingNid = json["cookieMatchingNid"];
    }
    if (json.containsKey("cookieMatchingUrl")) {
      cookieMatchingUrl = json["cookieMatchingUrl"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maximumTotalQps")) {
      maximumTotalQps = json["maximumTotalQps"];
    }
  }

  /** Create JSON Object for Account */
  core.Map toJson() {
    var output = new core.Map();

    if (bidderLocation != null) {
      output["bidderLocation"] = new core.List();
      bidderLocation.forEach((item) {
        output["bidderLocation"].add(item.toJson());
      });
    }
    if (cookieMatchingNid != null) {
      output["cookieMatchingNid"] = cookieMatchingNid;
    }
    if (cookieMatchingUrl != null) {
      output["cookieMatchingUrl"] = cookieMatchingUrl;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maximumTotalQps != null) {
      output["maximumTotalQps"] = maximumTotalQps;
    }

    return output;
  }

  /** Return String representation of Account */
  core.String toString() => JSON.stringify(this.toJson());

}

class AccountBidderLocation {

  /** The maximum queries per second the Ad Exchange will send. */
  core.int maximumQps;

  /** The URL to which the Ad Exchange will send bid requests. */
  core.String url;

  /** Create new AccountBidderLocation from JSON data */
  AccountBidderLocation.fromJson(core.Map json) {
    if (json.containsKey("maximumQps")) {
      maximumQps = json["maximumQps"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AccountBidderLocation */
  core.Map toJson() {
    var output = new core.Map();

    if (maximumQps != null) {
      output["maximumQps"] = maximumQps;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AccountBidderLocation */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An account feed lists Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single buyer account. */
class AccountsList {

  /** A list of accounts. */
  core.List<Account> items;

  /** Resource type. */
  core.String kind;

  /** Create new AccountsList from JSON data */
  AccountsList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Account.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AccountsList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AccountsList */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A creative and its classification data. */
class Creative {

  /** The HTML snippet that displays the ad when inserted in the web page. If set, videoURL should not be set. */
  core.String HTMLSnippet;

  /** Account id. */
  core.int accountId;

  /** The pretargeting adgroup id that this creative will be associated with. */
  core.String adgroupId;

  /** Detected advertiser id, if any. Read-only. This field should not be set in requests. */
  core.List<core.String> advertiserId;

  /** The name of the company being advertised in the creative. */
  core.String advertiserName;

  /** All attributes for the ads that may be shown from this snippet. */
  core.List<core.int> attribute;

  /** A buyer-specific id identifying the creative in this ad. */
  core.String buyerCreativeId;

  /** The set of destination urls for the snippet. */
  core.List<core.String> clickThroughUrl;

  /** The reason for disapproval, if any. Note that not all disapproval reasons may be categorized, so it is possible for the creative to have a status of DISAPPROVED with an empty list for disapproval_reasons. In this case, please reach out to your TAM to help debug the issue. Read-only. This field should not be set in requests. */
  core.List<core.String> disapprovalReasons;

  /** Ad height. */
  core.int height;

  /** Resource type. */
  core.String kind;

  /** Detected product categories, if any. Read-only. This field should not be set in requests. */
  core.List<core.int> productCategories;

  /** Detected sensitive categories, if any. Read-only. This field should not be set in requests. */
  core.List<core.int> sensitiveCategories;

  /** Creative serving status. Read-only. This field should not be set in requests. */
  core.String status;

  /** All vendor types for the ads that may be shown from this snippet. */
  core.List<core.int> vendorType;

  /** The url to fetch a video ad. If set, HTMLSnippet should not be set. */
  core.String videoURL;

  /** Ad width. */
  core.int width;

  /** Create new Creative from JSON data */
  Creative.fromJson(core.Map json) {
    if (json.containsKey("HTMLSnippet")) {
      HTMLSnippet = json["HTMLSnippet"];
    }
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("adgroupId")) {
      adgroupId = json["adgroupId"];
    }
    if (json.containsKey("advertiserId")) {
      advertiserId = [];
      json["advertiserId"].forEach((item) {
        advertiserId.add(item);
      });
    }
    if (json.containsKey("advertiserName")) {
      advertiserName = json["advertiserName"];
    }
    if (json.containsKey("attribute")) {
      attribute = [];
      json["attribute"].forEach((item) {
        attribute.add(item);
      });
    }
    if (json.containsKey("buyerCreativeId")) {
      buyerCreativeId = json["buyerCreativeId"];
    }
    if (json.containsKey("clickThroughUrl")) {
      clickThroughUrl = [];
      json["clickThroughUrl"].forEach((item) {
        clickThroughUrl.add(item);
      });
    }
    if (json.containsKey("disapprovalReasons")) {
      disapprovalReasons = [];
      json["disapprovalReasons"].forEach((item) {
        disapprovalReasons.add(item);
      });
    }
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCategories")) {
      productCategories = [];
      json["productCategories"].forEach((item) {
        productCategories.add(item);
      });
    }
    if (json.containsKey("sensitiveCategories")) {
      sensitiveCategories = [];
      json["sensitiveCategories"].forEach((item) {
        sensitiveCategories.add(item);
      });
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("vendorType")) {
      vendorType = [];
      json["vendorType"].forEach((item) {
        vendorType.add(item);
      });
    }
    if (json.containsKey("videoURL")) {
      videoURL = json["videoURL"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for Creative */
  core.Map toJson() {
    var output = new core.Map();

    if (HTMLSnippet != null) {
      output["HTMLSnippet"] = HTMLSnippet;
    }
    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (adgroupId != null) {
      output["adgroupId"] = adgroupId;
    }
    if (advertiserId != null) {
      output["advertiserId"] = new core.List();
      advertiserId.forEach((item) {
        output["advertiserId"].add(item);
      });
    }
    if (advertiserName != null) {
      output["advertiserName"] = advertiserName;
    }
    if (attribute != null) {
      output["attribute"] = new core.List();
      attribute.forEach((item) {
        output["attribute"].add(item);
      });
    }
    if (buyerCreativeId != null) {
      output["buyerCreativeId"] = buyerCreativeId;
    }
    if (clickThroughUrl != null) {
      output["clickThroughUrl"] = new core.List();
      clickThroughUrl.forEach((item) {
        output["clickThroughUrl"].add(item);
      });
    }
    if (disapprovalReasons != null) {
      output["disapprovalReasons"] = new core.List();
      disapprovalReasons.forEach((item) {
        output["disapprovalReasons"].add(item);
      });
    }
    if (height != null) {
      output["height"] = height;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCategories != null) {
      output["productCategories"] = new core.List();
      productCategories.forEach((item) {
        output["productCategories"].add(item);
      });
    }
    if (sensitiveCategories != null) {
      output["sensitiveCategories"] = new core.List();
      sensitiveCategories.forEach((item) {
        output["sensitiveCategories"].add(item);
      });
    }
    if (status != null) {
      output["status"] = status;
    }
    if (vendorType != null) {
      output["vendorType"] = new core.List();
      vendorType.forEach((item) {
        output["vendorType"].add(item);
      });
    }
    if (videoURL != null) {
      output["videoURL"] = videoURL;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of Creative */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The creatives feed lists the active creatives for the Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single creative. */
class CreativesList {

  /** A list of creatives. */
  core.List<Creative> items;

  /** Resource type. */
  core.String kind;

  /** Continuation token used to page through creatives. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new CreativesList from JSON data */
  CreativesList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Creative.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CreativesList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CreativesList */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The configuration data for an Ad Exchange direct deal. */
class DirectDeal {

  /** The account id of the buyer this deal is for. */
  core.int accountId;

  /** The name of the advertiser this deal is for. */
  core.String advertiser;

  /** The currency code that applies to the fixed_cpm value. If not set then assumed to be USD. */
  core.String currencyCode;

  /** End time for when this deal stops being active. If not set then this deal is valid until manually disabled by the publisher. In seconds since the epoch. */
  core.String endTime;

  /** The fixed price for this direct deal. In cpm micros of currency according to currency_code. */
  core.String fixedCpm;

  /** Deal id. */
  core.String id;

  /** Resource type. */
  core.String kind;

  /** The name of the publisher offering this direct deal. */
  core.String sellerNetwork;

  /** Start time for when this deal becomes active. If not set then this deal is active immediately upon creation. In seconds since the epoch. */
  core.String startTime;

  /** Create new DirectDeal from JSON data */
  DirectDeal.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("advertiser")) {
      advertiser = json["advertiser"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("fixedCpm")) {
      fixedCpm = json["fixedCpm"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("sellerNetwork")) {
      sellerNetwork = json["sellerNetwork"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
  }

  /** Create JSON Object for DirectDeal */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (advertiser != null) {
      output["advertiser"] = advertiser;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (fixedCpm != null) {
      output["fixedCpm"] = fixedCpm;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (sellerNetwork != null) {
      output["sellerNetwork"] = sellerNetwork;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of DirectDeal */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A direct deals feed lists Direct Deals the Ad Exchange buyer account has access to. This includes direct deals set up for the buyer account as well as its merged stream seats. */
class DirectDealsList {

  /** A list of direct deals relevant for your account. */
  core.List<DirectDeal> directDeals;

  /** Resource type. */
  core.String kind;

  /** Create new DirectDealsList from JSON data */
  DirectDealsList.fromJson(core.Map json) {
    if (json.containsKey("directDeals")) {
      directDeals = [];
      json["directDeals"].forEach((item) {
        directDeals.add(new DirectDeal.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DirectDealsList */
  core.Map toJson() {
    var output = new core.Map();

    if (directDeals != null) {
      output["directDeals"] = new core.List();
      directDeals.forEach((item) {
        output["directDeals"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DirectDealsList */
  core.String toString() => JSON.stringify(this.toJson());

}

