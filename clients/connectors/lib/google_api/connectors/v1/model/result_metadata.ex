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

defmodule GoogleApi.Connectors.V1.Model.ResultMetadata do
  @moduledoc """
  Metadata of result field.

  ## Attributes

  *   `dataType` (*type:* `String.t`, *default:* `nil`) - The data type of the field.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A brief description of the field.
  *   `field` (*type:* `String.t`, *default:* `nil`) - Name of the result field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataType => String.t() | nil,
          :description => String.t() | nil,
          :field => String.t() | nil
        }

  field(:dataType)
  field(:description)
  field(:field)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.ResultMetadata do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.ResultMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.ResultMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
