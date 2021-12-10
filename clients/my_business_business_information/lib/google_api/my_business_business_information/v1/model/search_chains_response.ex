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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.SearchChainsResponse do
  @moduledoc """
  Response message for Locations.SearchChains.

  ## Attributes

  *   `chains` (*type:* `list(GoogleApi.MyBusinessBusinessInformation.V1.Model.Chain.t)`, *default:* `nil`) - Chains that match the queried chain_display_name in SearchChainsRequest. If there are no matches, this field will be empty. Results are listed in order of relevance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chains => list(GoogleApi.MyBusinessBusinessInformation.V1.Model.Chain.t()) | nil
        }

  field(:chains, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.Chain, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.SearchChainsResponse do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.SearchChainsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.SearchChainsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
