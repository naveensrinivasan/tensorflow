/* Copyright 2020 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#ifndef HLO_OPS_BASE_STRUCTS
#define HLO_OPS_BASE_STRUCTS

def ConvDimensionNumbers : StructAttr<"ConvDimensionNumbers", HLO_Dialect, [
  StructFieldAttr<"input_batch_dimension",I64Attr>,
  StructFieldAttr<"input_feature_dimension", I64Attr>,
  StructFieldAttr<"input_spatial_dimensions", I64ElementsAttr>,
  StructFieldAttr<"kernel_input_feature_dimension", I64Attr>,
  StructFieldAttr<"kernel_output_feature_dimension", I64Attr>,
  StructFieldAttr<"kernel_spatial_dimensions", I64ElementsAttr>,
  StructFieldAttr<"output_batch_dimension", I64Attr>,
  StructFieldAttr<"output_feature_dimension", I64Attr>,
  StructFieldAttr<"output_spatial_dimensions", I64ElementsAttr>] > {

  let summary = "Structure of dimension information for conv op";
}


// Represents a unique identifier for each Send/Recv instruction pair or
// optionally for collective instructions (AllReduce, CollectivePermute,
// AllToAll). Non-positive channel_id handle is equivalent to no channel id.
def ChannelHandle : StructAttr<"ChannelHandle", HLO_Dialect, [
                StructFieldAttr<"handle", I64Attr>,
                StructFieldAttr<"type", I64Attr>]> {
  let summary = "two 64-bit integers 'handle' and 'type'";
}

#endif // HLO_OPS_BASE_STRUCTS
