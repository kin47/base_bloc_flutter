import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../constants/constants.dart';

extension ErrorMessage on DioError {
  BaseError get baseError {
    BaseError errorMessage = const BaseError.httpUnknownError("unknown");
    switch (type) {
      case DioErrorType.cancel:
        errorMessage = BaseError.httpUnknownError("dio_cancel_request".tr());
        break;
      case DioErrorType.connectTimeout:
        errorMessage = BaseError.httpUnknownError("dio_cancel_request".tr());
        break;
      case DioErrorType.other:
        errorMessage = BaseError.httpUnknownError("dio_cancel_request".tr());
        break;
      case DioErrorType.receiveTimeout:
        errorMessage = BaseError.httpUnknownError("dio_cancel_request".tr());
        break;
      case DioErrorType.sendTimeout:
        errorMessage = BaseError.httpUnknownError("dio_cancel_request".tr());
        break;
      case DioErrorType.response:
        final code = error.response?.statusCode;

        //handle refresh Token
        // if (error.type == StatusCode.refreshToken){
        //   await refreshToken(error);
        //   return;
        // }
        if (code == StatusCode.unauthorized) {
          errorMessage = const BaseError.httpUnAuthorizedError();
        } else {
          //todo: handle message =>
        }
        break;
      default:
        errorMessage = BaseError.httpUnknownError("dio_cancel_request".tr());
        break;
    }
    return errorMessage;
  }
}
