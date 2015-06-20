library jsMimicry.test.lib1;

import 'package:js_mimicry/annotation.dart';

@JsProxy()
class SimpleClass1 {}

@JsProxy('dart.SimpleClass2WithNS')
class SimpleClass2WithNS {}

@JsProxy()
class SimpleClass3 {
  String method1woArgs() => "method1woArgs_TEST_RESULT_SimpleClass3";
  String method2woArgs() {
    return "method2woArgs_TEST_RESULT_SimpleClass3";
  }
  int method3woArgs() => 42;
  bool method4woArgs() => true;
}

@JsProxy()
class SimpleClass4 {
  SimpleClass4();
  SimpleClass4.public1();
  SimpleClass4._internal();
}

@JsProxy()
class SimpleClass5 {
  String get propertyString1ReadOnly => "SimpleClass5_propertyString1ReadOnly";
  int get propertyInt1ReadOnly => 41;

  String _privateProperty2 = "SimpleClass5__privateProperty2";
  String get propertyString2 => _privateProperty2;
  set propertyString2(v) => _privateProperty2 = v;
  String getPropertyString2()=>_privateProperty2;

  String _privateProperty3 = "SimpleClass5__privateProperty3";
  String get propertyString3 => _privateProperty3;
  set propertyString3(v) => _privateProperty3 = v;
  String getPropertyString3()=>_privateProperty3;
}

@JsProxy()
class SimpleClass6 extends SimpleClass5 {
  String get propertyString1ReadOnly => "SimpleClass6_propertyString1ReadOnly";

  String _privateProperty3_ = "SimpleClass6__privateProperty3_";
  String get propertyString3 => _privateProperty3_;
  set propertyString3(v) => _privateProperty3_ = v;
  String getPropertyString3()=>_privateProperty3_;
}

@JsProxy()
class GenericClass1<T> extends SimpleClass5 {
   T field1;
}

@JsProxy()
class GenericClass2<T,K> extends GenericClass1<T> {
  K field2;
}