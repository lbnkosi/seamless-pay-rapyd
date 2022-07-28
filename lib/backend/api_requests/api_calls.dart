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
    bool? isDependentPayment1,
    bool? isDependentPayment2,
    bool? isDependentPayment3,
    bool? isDependentPayment4 = false,
    int? amount1,
    int? amount2,
    int? amount3,
    int? amount4,
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
      "is_dependent_payment": ${isDependentPayment1},
      "amount": ${amount1},
      "issued_account_id": "${issuedAccountId1}"
    },
    {
      "is_dependent_payment": ${isDependentPayment2},
      "amount": ${amount2},
      "issued_account_id": "${issuedAccountId2}"
    },
    {
      "is_dependent_payment": ${isDependentPayment3},
      "amount": ${amount3},
      "issued_account_id": "${issuedAccountId3}"
    },
    {
      "is_dependent_payment": ${isDependentPayment4},
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
        'is_dependent_payment_1': isDependentPayment1,
        'is_dependent_payment_2': isDependentPayment2,
        'is_dependent_payment_3': isDependentPayment3,
        'is_dependent_payment_4': isDependentPayment4,
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
