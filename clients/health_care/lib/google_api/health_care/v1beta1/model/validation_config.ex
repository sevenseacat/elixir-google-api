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

defmodule GoogleApi.HealthCare.V1beta1.Model.ValidationConfig do
  @moduledoc """
  Contains the configuration for FHIR profiles and validation.

  ## Attributes

  *   `disableProfileValidation` (*type:* `boolean()`, *default:* `nil`) - Whether to disable profile validation for this FHIR store. Set this to true to disable checking incoming resources for conformance against StructureDefinitions in this FHIR store.
  *   `enabledImplementationGuides` (*type:* `list(String.t)`, *default:* `nil`) - A list of ImplementationGuide URLs in this FHIR store that are used to configure the profiles to use for validation. For example, to use the US Core profiles for validation, set `enabled_implementation_guides` to `["http://hl7.org/fhir/us/core/ImplementationGuide/ig"]`. If `enabled_implementation_guides` is empty or omitted, then incoming resources are only required to conform to the base FHIR profiles. Otherwise, a resource must conform to at least one profile listed in the `global` property of one of the enabled ImplementationGuides. The Cloud Healthcare API does not currently enforce all of the rules in a StructureDefinition. The following rules are supported: - min/max - minValue/maxValue - maxLength - type - fixed[x] - pattern[x] on simple types - slicing, when using "value" as the discriminator type When a URL cannot be resolved (for example, in a type assertion), the server does not return an error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableProfileValidation => boolean(),
          :enabledImplementationGuides => list(String.t())
        }

  field(:disableProfileValidation)
  field(:enabledImplementationGuides, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ValidationConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ValidationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ValidationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end