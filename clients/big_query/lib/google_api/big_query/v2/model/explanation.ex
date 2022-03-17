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

defmodule GoogleApi.BigQuery.V2.Model.Explanation do
  @moduledoc """
  Explanation for a single feature.

  ## Attributes

  *   `attribution` (*type:* `float()`, *default:* `nil`) - Attribution of feature.
  *   `featureName` (*type:* `String.t`, *default:* `nil`) - Full name of the feature. For non-numerical features, will be formatted like .. Overall size of feature name will always be truncated to first 120 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attribution => float() | nil,
          :featureName => String.t() | nil
        }

  field(:attribution)
  field(:featureName)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Explanation do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Explanation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Explanation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end