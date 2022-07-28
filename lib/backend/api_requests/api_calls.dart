import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class CreateCustomerCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? surname = '',
    String? email = '',
    String? number = '',
    String? country = '',
  }) {
    final body = '''
{
  "name": "${name}",
  "surname": "${surname}",
  "email": "${email}",
  "number": "${number}",
  "country": "${country}",
  "dependents": []
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Customer',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/v1/kyc',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'surname': surname,
        'email': email,
        'number': number,
        'country': country,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetCustomerCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Customer',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/v1/kyc',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'customer_id': customerId,
      },
      returnBody: true,
    );
  }

  static dynamic customerPaymentMethod(dynamic response) => getJsonField(
        response,
        r'''$.data.payment_methods.data''',
      );
}

class CreateOrderCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    bool? allocateFundsToOrder = true,
    String? issuedAccountId1 = '',
    String? issuedAccountId2 = '',
    String? issuedAccountId3 = '',
    String? issuedAccountId4 = '',
    int? amount1 = 0,
    int? amount2 = 0,
    int? amount3 = 0,
    int? amount4 = 0,
  }) {
    final body = '''
{
  "customer_id": "${customerId}",
  "payment_type": "",
  "add_on_product_id": "",
  "add_on_payment_type": "",
  "allocate_funds_to_order": ${allocateFundsToOrder},
  "listed_payments": [
    {
      "is_dependent_payment": false,
      "amount": ${amount1},
      "issued_account_id": "${issuedAccountId1}"
    },
    {
      "is_dependent_payment": false,
      "amount": ${amount2},
      "issued_account_id": "${issuedAccountId2}"
    },
    {
      "is_dependent_payment": false,
      "amount": ${amount3},
      "issued_account_id": "${issuedAccountId3}"
    },
    {
      "is_dependent_payment": false,
      "amount": ${amount4},
      "issued_account_id": "${issuedAccountId4}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateOrder',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/v1/order',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'customer_id': customerId,
        'allocate_funds_to_order': allocateFundsToOrder,
        'issued_account_id_1': issuedAccountId1,
        'issued_account_id_2': issuedAccountId2,
        'issued_account_id_3': issuedAccountId3,
        'issued_account_id_4': issuedAccountId4,
        'amount_1': amount1,
        'amount_2': amount2,
        'amount_3': amount3,
        'amount_4': amount4,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class CreateVanCall {
  static Future<ApiCallResponse> call({
    String? country = '',
    String? currency = '',
    String? customerID = '',
    String? customerEmail = '',
    String? description = '',
  }) {
    final body = '''
{
  "customers": [
    {
      "country": "${country}",
      "currency": "${currency}",
      "customerID": "${customerID}",
      "customerEmail": "${customerEmail}",
      "description": "${description}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateVan',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/v1/payment',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'country': country,
        'currency': currency,
        'customerID': customerID,
        'customerEmail': customerEmail,
        'description': description,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class SheetGetCustomerCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SheetGetCustomer',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/workflow/customer',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'customer_id': customerId,
      },
      returnBody: true,
    );
  }
}

class SheetGetCustomersCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'SheetGetCustomers',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/workflow/customerList',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class SheetGetOrderCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SheetGetOrder',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/workflow/order',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'order_id': orderId,
      },
      returnBody: true,
    );
  }
}

class SheetGetCustomerOrdersCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SheetGetCustomerOrders',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/workflow/customerOrderList',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'customer_id': customerId,
      },
      returnBody: true,
    );
  }
}

class SheetGetOrdersCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'SheetGetOrders',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/workflow/orderList',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class RefundApiCallCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? orderId = '',
    String? orderAmount = '',
    int? amount1,
    int? amount2,
    int? amount3,
    int? amount4,
    String? walletId1 = '',
    String? walletId2 = '',
    String? walletId3 = '',
    String? walletId4 = '',
    String? type1 = '',
    String? type2 = '',
    String? type3 = '',
    String? type4 = '',
  }) {
    final body = '''
{
  "customerId": "${customerId}",
  "orderId": "${orderId}",
  "orderAmount": "${orderAmount}",
  "beneficiaryId": "",
  "refundItems": [
    {
      "amount": ${amount1},
      "walletId": "${walletId1}",
      "type": "${type1}"
    },
    {
      "amount": ${amount2},
      "walletId": "${walletId2}",
      "type": "${type2}"
    },
    {
      "amount": ${amount3},
      "walletId": "${walletId3}",
      "type": "${type3}"
    },
    {
      "amount": ${amount4},
      "walletId": "${walletId4}",
      "type": "${type4}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RefundApiCall',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/v1/refund/refund',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'customerId': customerId,
        'orderId': orderId,
        'orderAmount': orderAmount,
        'amount1': amount1,
        'amount2': amount2,
        'amount3': amount3,
        'amount4': amount4,
        'walletId1': walletId1,
        'walletId2': walletId2,
        'walletId3': walletId3,
        'walletId4': walletId4,
        'type1': type1,
        'type2': type2,
        'type3': type3,
        'type4': type4,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
