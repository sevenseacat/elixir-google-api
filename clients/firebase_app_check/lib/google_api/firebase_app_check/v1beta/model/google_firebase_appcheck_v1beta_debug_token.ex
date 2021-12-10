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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDebugToken do
  @moduledoc """
  A *debug token* is a secret used during the development or integration testing of an app. It essentially allows the development or integration testing to bypass app attestation while still allowing App Check to enforce protection on supported production Firebase services.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. A human readable display name used to identify this debug token.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  *   `token` (*type:* `String.t`, *default:* `nil`) - Required. Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :token => String.t() | nil
        }

  field(:displayName)
  field(:name)
  field(:token)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDebugToken do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDebugToken.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaDebugToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
