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

defmodule GoogleApi.Compute.V1.Model.SavedDisk do
  @moduledoc """
  An instance-attached disk resource.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `compute#savedDisk`) - [Output Only] Type of the resource. Always compute#savedDisk for attached disks.
  *   `sourceDisk` (*type:* `String.t`, *default:* `nil`) - Specifies a URL of the disk attached to the source instance.
  *   `storageBytes` (*type:* `String.t`, *default:* `nil`) - [Output Only] Size of the individual disk snapshot used by this machine image.
  *   `storageBytesStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :sourceDisk => String.t() | nil,
          :storageBytes => String.t() | nil,
          :storageBytesStatus => String.t() | nil
        }

  field(:kind)
  field(:sourceDisk)
  field(:storageBytes)
  field(:storageBytesStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SavedDisk do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SavedDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SavedDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
