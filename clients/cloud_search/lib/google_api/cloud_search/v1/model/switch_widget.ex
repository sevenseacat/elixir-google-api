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

defmodule GoogleApi.CloudSearch.V1.Model.SwitchWidget do
  @moduledoc """


  ## Attributes

  *   `controlType` (*type:* `String.t`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the switch widget which is will be used in FormInput.
  *   `onChange` (*type:* `GoogleApi.CloudSearch.V1.Model.FormAction.t`, *default:* `nil`) - 
  *   `selected` (*type:* `boolean()`, *default:* `nil`) - 
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value is what is passed back in apps script callback.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :controlType => String.t() | nil,
          :name => String.t() | nil,
          :onChange => GoogleApi.CloudSearch.V1.Model.FormAction.t() | nil,
          :selected => boolean() | nil,
          :value => String.t() | nil
        }

  field(:controlType)
  field(:name)
  field(:onChange, as: GoogleApi.CloudSearch.V1.Model.FormAction)
  field(:selected)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.SwitchWidget do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.SwitchWidget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.SwitchWidget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
