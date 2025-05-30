// Mocks generated by Mockito 5.4.4 from annotations
// in ubuntu_bootstrap/test/services/landscape_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:landscape_client/src/landscape_client.dart' as _i3;
import 'package:landscape_stubs/landscape_stubs.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAttachResponse_0 extends _i1.SmartFake
    implements _i2.AttachResponse {
  _FakeAttachResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LandscapeClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockLandscapeClient extends _i1.Mock implements _i3.LandscapeClient {
  MockLandscapeClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AttachResponse> attach() => (super.noSuchMethod(
        Invocation.method(
          #attach,
          [],
        ),
        returnValue: _i4.Future<_i2.AttachResponse>.value(_FakeAttachResponse_0(
          this,
          Invocation.method(
            #attach,
            [],
          ),
        )),
      ) as _i4.Future<_i2.AttachResponse>);

  @override
  _i4.Stream<_i2.WatchAuthenticationResponse> watch(
    String? userCode,
    String? token,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #watch,
          [
            userCode,
            token,
          ],
        ),
        returnValue: _i4.Stream<_i2.WatchAuthenticationResponse>.empty(),
      ) as _i4.Stream<_i2.WatchAuthenticationResponse>);
}
