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
