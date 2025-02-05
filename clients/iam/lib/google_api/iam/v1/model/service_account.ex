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

defmodule GoogleApi.IAM.V1.Model.ServiceAccount do
  @moduledoc """
  An IAM service account. A service account is an account for an application or a virtual machine (VM) instance, not a person. You can use a service account to call Google APIs. To learn more, read the [overview of service accounts](https://cloud.google.com/iam/help/service-accounts/overview). When you create a service account, you specify the project ID that owns the service account, as well as a name that must be unique within the project. IAM uses these values to create an email address that identifies the service //

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A user-specified, human-readable description of the service account. The maximum length is 256 UTF-8 bytes.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the service account is disabled.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A user-specified, human-readable name for the service account. The maximum length is 100 UTF-8 bytes.
  *   `email` (*type:* `String.t`, *default:* `nil`) - Output only. The email address of the service account.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Deprecated. Do not use.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the service account. Use one of the following formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` * `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you can use the `-` wildcard character instead of the project ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}` * `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the `-` wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to get the service account `projects/-/serviceAccounts/fake@example.com`, which does not exist, the response contains an HTTP `403 Forbidden` error instead of a `404 Not Found` error.
  *   `oauth2ClientId` (*type:* `String.t`, *default:* `nil`) - Output only. The OAuth 2.0 client ID for the service account.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the project that owns the service account.
  *   `uniqueId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique, stable numeric ID for the service account. Each service account retains its unique ID even if you delete the service account. For example, if you delete a service account, then create a new service account with the same name, the new service account has a different unique ID than the deleted service account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :disabled => boolean() | nil,
          :displayName => String.t() | nil,
          :email => String.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :oauth2ClientId => String.t() | nil,
          :projectId => String.t() | nil,
          :uniqueId => String.t() | nil
        }

  field(:description)
  field(:disabled)
  field(:displayName)
  field(:email)
  field(:etag)
  field(:name)
  field(:oauth2ClientId)
  field(:projectId)
  field(:uniqueId)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.ServiceAccount do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.ServiceAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.ServiceAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
