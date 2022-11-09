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

defmodule GoogleApi.Content.V21.Model.DatafeedTarget do
  @moduledoc """


  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - Deprecated. Use `feedLabel` instead. The country where the items in the feed will be included in the search index, represented as a CLDR territory code.
  *   `excludedDestinations` (*type:* `list(String.t)`, *default:* `nil`) - The list of destinations to exclude for this target (corresponds to cleared check boxes in Merchant Center).
  *   `feedLabel` (*type:* `String.t`, *default:* `nil`) - Feed label for the DatafeedTarget. Either `country` or `feedLabel` is required. If both `feedLabel` and `country` is specified, the values must match.
  *   `includedDestinations` (*type:* `list(String.t)`, *default:* `nil`) - The list of destinations to include for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in `excludedDestinations`.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The two-letter ISO 639-1 language of the items in the feed. Must be a valid language for `targets[].country`.
  *   `targetCountries` (*type:* `list(String.t)`, *default:* `nil`) - The countries where the items may be displayed. Represented as a CLDR territory code. Will be ignored for "product inventory" feeds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t() | nil,
          :excludedDestinations => list(String.t()) | nil,
          :feedLabel => String.t() | nil,
          :includedDestinations => list(String.t()) | nil,
          :language => String.t() | nil,
          :targetCountries => list(String.t()) | nil
        }

  field(:country)
  field(:excludedDestinations, type: :list)
  field(:feedLabel)
  field(:includedDestinations, type: :list)
  field(:language)
  field(:targetCountries, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.DatafeedTarget do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.DatafeedTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.DatafeedTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
