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

defmodule GoogleApi.DFAReporting.V35.Model.Rule do
  @moduledoc """
  A rule associates an asset with a targeting template for asset-level targeting. Applicable to INSTREAM_VIDEO creatives.

  ## Attributes

  *   `assetId` (*type:* `String.t`, *default:* `nil`) - A creativeAssets[].id. This should refer to one of the parent assets in this creative. This is a required field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A user-friendly name for this rule. This is a required field.
  *   `targetingTemplateId` (*type:* `String.t`, *default:* `nil`) - A targeting template ID. The targeting from the targeting template will be used to determine whether this asset should be served. This is a required field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetId => String.t() | nil,
          :name => String.t() | nil,
          :targetingTemplateId => String.t() | nil
        }

  field(:assetId)
  field(:name)
  field(:targetingTemplateId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.Rule do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.Rule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.Rule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
