// RUN: arsenal-opt %s | FileCheck %s


// CHECK-LABEL: module {

// CHECK-LABEL: @testAbs
// CHECK: arsenal.abs
func.func @testAbs(%arg0: tensor<2x3xf32>) -> tensor<2x3xf32> {
  %0 = arsenal.abs %arg0 : (tensor<2x3xf32>) -> tensor<2x3xf32>
  return %0 : tensor<2x3xf32>
}

// CHECK-LABEL: @testAdd
// CHECK: arsenal.add
func.func @testAdd(%arg0: tensor<2x3xf32>, %arg1: tensor<2x3xf32>) -> tensor<2x3xf32> {
  %0 = arsenal.add %arg0, %arg1 : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
  return %0 : tensor<2x3xf32>
}

// CHECK-LABEL: @testMul
// CHECK: arsenal.mul
func.func @testMul(%arg0: tensor<2x3xf32>, %arg1: tensor<2x3xf32>) -> tensor<2x3xf32> {
  %0 = arsenal.mul %arg0, %arg1 : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
  return %0 : tensor<2x3xf32>
}