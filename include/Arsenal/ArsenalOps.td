#ifndef ARSENAL_OPS
#define ARSENAL_OPS

include "ArsenalDialect.td"
include "mlir/Interfaces/SideEffectInterfaces.td"


def AbsOp : Arsenal_Op<"abs", [Pure]> {
  let summary = "Compute the absolute value of a tensor";
  let description = [{
    This operation computes the absolute value of a tensor.
  }];
  let arguments = (ins
    AnyTensor:$input);
  let results = (outs AnyTensor:$result);
  let assemblyFormat = "operands attr-dict `:` functional-type(operands, results)";
}


def AddOp : Arsenal_Op<"add", [Pure]> {
  let summary = "Add two tensors";
  let description = [{
    This operation adds two tensor.
  }];
  let arguments = (ins
    AnyTensor:$lhs,
    AnyTensor:$rhs);
  let results = (outs AnyTensor:$result);
  let assemblyFormat = "operands attr-dict `:` functional-type(operands, results)";
}


def MulOp : Arsenal_Op<"mul", [Pure]> {
  let summary = "Multiply two tensors";
  let description = [{
    This operation multiplies two tensor.
  }];
  let arguments = (ins
    AnyTensor:$lhs,
    AnyTensor:$rhs);
  let results = (outs AnyTensor:$result);
  let assemblyFormat = "operands attr-dict `:` functional-type(operands, results)";
}


#endif // ARSENAL_OPS
