///
//  Generated code. Do not modify.
//  source: budgetme.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'budgetme.pb.dart' as $0;
export 'budgetme.pb.dart';

class ServerClient extends $grpc.Client {
  static final _$getHealth =
      $grpc.ClientMethod<$0.GetHealthRequest, $0.GetHealthResponse>(
          '/budgetme.Server/GetHealth',
          ($0.GetHealthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetHealthResponse.fromBuffer(value));

  ServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetHealthResponse> getHealth(
      $0.GetHealthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHealth, request, options: options);
  }
}

abstract class ServerServiceBase extends $grpc.Service {
  $core.String get $name => 'budgetme.Server';

  ServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetHealthRequest, $0.GetHealthResponse>(
        'GetHealth',
        getHealth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetHealthRequest.fromBuffer(value),
        ($0.GetHealthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetHealthResponse> getHealth_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetHealthRequest> request) async {
    return getHealth(call, await request);
  }

  $async.Future<$0.GetHealthResponse> getHealth(
      $grpc.ServiceCall call, $0.GetHealthRequest request);
}
