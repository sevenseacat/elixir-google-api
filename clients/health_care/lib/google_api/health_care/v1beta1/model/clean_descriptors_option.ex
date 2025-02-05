# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.HealthCare.V1beta1.Model.CleanDescriptorsOption do
  @moduledoc """
  This option is based on the DICOM Standard's [Clean Descriptors Option](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part15/sect_E.3.5.html), and the `CleanText` `Action` is applied to all the specified fields. When cleaning text, the process attempts to transform phrases matching any of the tags marked for removal (action codes D, Z, X, and U) in the [Basic Profile](http://dicom.nema.org/medical/dicom/2018e/output/chtml/part15/chapter_E.html). These contextual phrases are replaced with the token "[CTX]". This option uses an additional `InfoType` during inspection.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.CleanDescriptorsOption do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.CleanDescriptorsOption.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.CleanDescriptorsOption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
