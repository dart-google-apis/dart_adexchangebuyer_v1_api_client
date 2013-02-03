part of adexchangebuyer_v1_api_client;

/** Configuration data for an Ad Exchange buyer account. */
class Account {

  /** Your bidder locations that have distinct URLs. */
  List<AccountBidderLocation> bidderLocation;

  /** The nid parameter value used in cookie match requests. Please contact your technical account manager if you need to change this. */
  String cookieMatchingNid;

  /** The base URL used in cookie match requests. */
  String cookieMatchingUrl;

  /** Account id. */
  int id;

  /** Resource type. */
  String kind;

  /** The sum of all bidderLocation.maximumQps values cannot exceed this. Please contact your technical account manager if you need to change this. */
  int maximumTotalQps;

  /** Create new Account from JSON data */
  Account.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (bidderLocation != null) {
      output["bidderLocation"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

class AccountBidderLocation {

  /** The maximum queries per second the Ad Exchange will send. */
  int maximumQps;

  /** The URL to which the Ad Exchange will send bid requests. */
  String url;

  /** Create new AccountBidderLocation from JSON data */
  AccountBidderLocation.fromJson(Map json) {
    if (json.containsKey("maximumQps")) {
      maximumQps = json["maximumQps"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AccountBidderLocation */
  Map toJson() {
    var output = new Map();

    if (maximumQps != null) {
      output["maximumQps"] = maximumQps;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AccountBidderLocation */
  String toString() => JSON.stringify(this.toJson());

}

/** An account feed lists Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single buyer account. */
class AccountsList {

  /** A list of accounts. */
  List<Account> items;

  /** Resource type. */
  String kind;

  /** Create new AccountsList from JSON data */
  AccountsList.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

/** A creative and its classification data. */
class Creative {

  /** The HTML snippet that displays the ad when inserted in the web page. If set, videoURL should not be set. */
  String HTMLSnippet;

  /** Account id. */
  int accountId;

  /** The pretargeting adgroup id that this creative will be associated with. */
  String adgroupId;

  /** Detected advertiser id, if any. Read-only. This field should not be set in requests. */
  List<String> advertiserId;

  /** The name of the company being advertised in the creative. */
  String advertiserName;

  /** All attributes for the ads that may be shown from this snippet. */
  List<int> attribute;

  /** A buyer-specific id identifying the creative in this ad. */
  String buyerCreativeId;

  /** The set of destination urls for the snippet. */
  List<String> clickThroughUrl;

  /** The reason for disapproval, if any. Note that not all disapproval reasons may be categorized, so it is possible for the creative to have a status of DISAPPROVED with an empty list for disapproval_reasons. In this case, please reach out to your TAM to help debug the issue. Read-only. This field should not be set in requests. */
  List<String> disapprovalReasons;

  /** Ad height. */
  int height;

  /** Resource type. */
  String kind;

  /** Detected product categories, if any. Read-only. This field should not be set in requests. */
  List<int> productCategories;

  /** Detected sensitive categories, if any. Read-only. This field should not be set in requests. */
  List<int> sensitiveCategories;

  /** Creative serving status. Read-only. This field should not be set in requests. */
  String status;

  /** All vendor types for the ads that may be shown from this snippet. */
  List<int> vendorType;

  /** The url to fetch a video ad. If set, HTMLSnippet should not be set. */
  String videoURL;

  /** Ad width. */
  int width;

  /** Create new Creative from JSON data */
  Creative.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
      output["advertiserId"] = new List();
      advertiserId.forEach((item) {
        output["advertiserId"].add(item);
      });
    }
    if (advertiserName != null) {
      output["advertiserName"] = advertiserName;
    }
    if (attribute != null) {
      output["attribute"] = new List();
      attribute.forEach((item) {
        output["attribute"].add(item);
      });
    }
    if (buyerCreativeId != null) {
      output["buyerCreativeId"] = buyerCreativeId;
    }
    if (clickThroughUrl != null) {
      output["clickThroughUrl"] = new List();
      clickThroughUrl.forEach((item) {
        output["clickThroughUrl"].add(item);
      });
    }
    if (disapprovalReasons != null) {
      output["disapprovalReasons"] = new List();
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
      output["productCategories"] = new List();
      productCategories.forEach((item) {
        output["productCategories"].add(item);
      });
    }
    if (sensitiveCategories != null) {
      output["sensitiveCategories"] = new List();
      sensitiveCategories.forEach((item) {
        output["sensitiveCategories"].add(item);
      });
    }
    if (status != null) {
      output["status"] = status;
    }
    if (vendorType != null) {
      output["vendorType"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

/** The creatives feed lists the active creatives for the Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single creative. */
class CreativesList {

  /** A list of creatives. */
  List<Creative> items;

  /** Resource type. */
  String kind;

  /** Continuation token used to page through creatives. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new CreativesList from JSON data */
  CreativesList.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

/** The configuration data for an Ad Exchange direct deal. */
class DirectDeal {

  /** The account id of the buyer this deal is for. */
  int accountId;

  /** The name of the advertiser this deal is for. */
  String advertiser;

  /** The currency code that applies to the fixed_cpm value. If not set then assumed to be USD. */
  String currencyCode;

  /** End time for when this deal stops being active. If not set then this deal is valid until manually disabled by the publisher. In seconds since the epoch. */
  String endTime;

  /** The fixed price for this direct deal. In cpm micros of currency according to currency_code. */
  String fixedCpm;

  /** Deal id. */
  String id;

  /** Resource type. */
  String kind;

  /** The name of the publisher offering this direct deal. */
  String sellerNetwork;

  /** Start time for when this deal becomes active. If not set then this deal is active immediately upon creation. In seconds since the epoch. */
  String startTime;

  /** Create new DirectDeal from JSON data */
  DirectDeal.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A direct deals feed lists Direct Deals the Ad Exchange buyer account has access to. This includes direct deals set up for the buyer account as well as its merged stream seats. */
class DirectDealsList {

  /** A list of direct deals relevant for your account. */
  List<DirectDeal> directDeals;

  /** Resource type. */
  String kind;

  /** Create new DirectDealsList from JSON data */
  DirectDealsList.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (directDeals != null) {
      output["directDeals"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

