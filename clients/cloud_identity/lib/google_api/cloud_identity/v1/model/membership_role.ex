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

defmodule GoogleApi.CloudIdentity.V1.Model.MembershipRole do
  @moduledoc """
  A membership role within the Cloud Identity Groups API. A `MembershipRole` defines the privileges granted to a `Membership`.

  ## Attributes

  *   `expiryDetail` (*type:* `GoogleApi.CloudIdentity.V1.Model.ExpiryDetail.t`, *default:* `nil`) - The expiry details of the `MembershipRole`. Expiry details are only supported for `MEMBER` `MembershipRoles`. May be set if `name` is `MEMBER`. Must not be set if `name` is any other value.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expiryDetail => GoogleApi.CloudIdentity.V1.Model.ExpiryDetail.t(),
          :name => String.t()
        }

  field(:expiryDetail, as: GoogleApi.CloudIdentity.V1.Model.ExpiryDetail)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIdentity.V1.Model.MembershipRole do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.MembershipRole.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIdentity.V1.Model.MembershipRole do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
