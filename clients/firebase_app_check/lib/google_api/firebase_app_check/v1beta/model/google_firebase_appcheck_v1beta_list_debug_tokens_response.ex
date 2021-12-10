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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaListDebugTokensResponse do
  @moduledoc """
  Response message for the ListDebugTokens method.

  ## Attributes

  *   `debugTokens` (*type:* `list(GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDebugToken.t)`, *default:* `nil`) - The DebugTokens retrieved.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If the result list is too large to fit in a single response, then a token is returned. If the string is empty or omitted, then this response is the last page of results. This token can be used in a subsequent call to ListDebugTokens to find the next group of DebugTokens. Page tokens are short-lived and should not be persisted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugTokens =>
            list(
              GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDebugToken.t()
            )
            | nil,
          :nextPageToken => String.t() | nil
        }

  field(:debugTokens,
    as: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDebugToken,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaListDebugTokensResponse do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaListDebugTokensResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaListDebugTokensResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
