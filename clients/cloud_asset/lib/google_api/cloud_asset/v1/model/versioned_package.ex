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

defmodule GoogleApi.CloudAsset.V1.Model.VersionedPackage do
  @moduledoc """
  Information related to the a standard versioned package. This includes package info for APT, Yum, Zypper, and Googet package managers.

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - The system architecture this package is intended for.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The name of the package.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the package.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t(),
          :packageName => String.t(),
          :version => String.t()
        }

  field(:architecture)
  field(:packageName)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.VersionedPackage do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.VersionedPackage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.VersionedPackage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end