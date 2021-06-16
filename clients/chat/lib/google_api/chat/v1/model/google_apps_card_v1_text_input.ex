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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput do
  @moduledoc """
  A text input is a UI item where users can input text. A text input can also have an onChange action and suggestions.

  ## Attributes

  *   `autoCompleteAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - The refresh function that returns suggestions based on the user's input text. If the callback is not specified, autocomplete is done in client side based on the initial suggestion items.
  *   `hintText` (*type:* `String.t`, *default:* `nil`) - The hint text.
  *   `initialSuggestions` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Suggestions.t`, *default:* `nil`) - The initial suggestions made before any user input.
  *   `label` (*type:* `String.t`, *default:* `nil`) - At least one of label and hintText must be specified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the text input which is used in formInput.
  *   `onChangeAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - The onChange action, for example, invoke a function.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The style of the text, for example, a single line or multiple lines.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The default value when there is no input from the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoCompleteAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :hintText => String.t() | nil,
          :initialSuggestions => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Suggestions.t() | nil,
          :label => String.t() | nil,
          :name => String.t() | nil,
          :onChangeAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :type => String.t() | nil,
          :value => String.t() | nil
        }

  field(:autoCompleteAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:hintText)
  field(:initialSuggestions, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Suggestions)
  field(:label)
  field(:name)
  field(:onChangeAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end