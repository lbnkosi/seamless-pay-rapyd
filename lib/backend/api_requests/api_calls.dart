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
  }) {
    final body = '''
{
  "customer_id": "${customerId}",
  "payment_type": "",
  "listed_payments": [
    {
      "is_dependent_payment": false,
      "amount": 0,
      "issued_account_id": ""
    }
  ],
  "add_on_product_id": "",
  "add_on_payment_type": "",
  "allocate_funds_to_order": ${allocateFundsToOrder}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateOrder',
      apiUrl: 'http://seamlesspay.co.za/api/toolkit/v1/order',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'customer_id': customerId,
        'allocate_funds_to_order': allocateFundsToOrder,
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
  "country": "${country}",
  "currency": "${currency}",
  "customerID": "${customerID}",
  "customerEmail": "${customerEmail}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateVan',
      apiUrl: 'https://seamlesspay.co.za/api/toolkit/v1/payment',
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
