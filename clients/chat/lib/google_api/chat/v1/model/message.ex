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

defmodule GoogleApi.Chat.V1.Model.Message do
  @moduledoc """
  A message in Google Chat.

  ## Attributes

  *   `actionResponse` (*type:* `GoogleApi.Chat.V1.Model.ActionResponse.t`, *default:* `nil`) - Input only. Parameters that a Chat app can use to configure how its response is posted.
  *   `annotations` (*type:* `list(GoogleApi.Chat.V1.Model.Annotation.t)`, *default:* `nil`) - Output only. Annotations associated with the text in this message.
  *   `argumentText` (*type:* `String.t`, *default:* `nil`) - Plain-text body of the message with all Chat app mentions stripped out.
  *   `attachment` (*type:* `list(GoogleApi.Chat.V1.Model.Attachment.t)`, *default:* `nil`) - User uploaded attachment.
  *   `cards` (*type:* `list(GoogleApi.Chat.V1.Model.Card.t)`, *default:* `nil`) - Deprecated: Use `cards_v2` instead. Rich, formatted and interactive cards that can be used to display UI elements such as: formatted texts, buttons, clickable images. Cards are normally displayed below the plain-text body of the message.
  *   `cardsV2` (*type:* `list(GoogleApi.Chat.V1.Model.CardWithId.t)`, *default:* `nil`) - Richly formatted and interactive cards that display UI elements and editable widgets, such as: - Formatted text - Buttons - Clickable images - Checkboxes - Radio buttons - Input widgets. Cards are usually displayed below the text-body of a Chat message, but can situationally appear other places, such as [dialogs](https://developers.google.com/chat/how-tos/dialogs). The `cardId` is a unique identifier among cards in the same message and for identifying user input values. Currently supported widgets include: - `TextParagraph` - `DecoratedText` - `Image` - `ButtonList` - `Divider`
  *   `clientAssignedMessageId` (*type:* `String.t`, *default:* `nil`) - A custom name for a Chat message assigned at creation. Must start with `client-` and contain only lowercase letters, numbers, and hyphens up to 63 characters in length. Specify this field to get, update, or delete the message with the specified value. For example usage, see [Name a created message](https://developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the message was created in Google Chat server.
  *   `fallbackText` (*type:* `String.t`, *default:* `nil`) - A plain-text description of the message's cards, used when the actual cards cannot be displayed (e.g. mobile notifications).
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the message was last edited by a user. If the message has never been edited, this field is empty.
  *   `matchedUrl` (*type:* `GoogleApi.Chat.V1.Model.MatchedUrl.t`, *default:* `nil`) - Output only. A URL in `spaces.messages.text` that matches a link preview pattern. For more information, refer to [Preview links](https://developers.google.com/chat/how-tos/preview-links).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`
  *   `sender` (*type:* `GoogleApi.Chat.V1.Model.User.t`, *default:* `nil`) - Output only. The user who created the message.
  *   `slashCommand` (*type:* `GoogleApi.Chat.V1.Model.SlashCommand.t`, *default:* `nil`) - Output only. Slash command information, if applicable.
  *   `space` (*type:* `GoogleApi.Chat.V1.Model.Space.t`, *default:* `nil`) - The space the message belongs to. When accessed with [user authentication](https://developers.google.com/chat/api/guides/auth/users), only the name of the Space is populated.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Plain-text body of the message. The first link to an image, video, web page, or other preview-able item generates a preview chip.
  *   `thread` (*type:* `GoogleApi.Chat.V1.Model.Thread.t`, *default:* `nil`) - The thread the message belongs to. For example usage, see [Start or reply to a message thread](/chat/api/guides/crudl/messages#start_or_reply_to_a_message_thread).
  *   `threadReply` (*type:* `boolean()`, *default:* `nil`) - Output only. When `true`, the message is a response in a reply thread. When `false`, the message is visible in the space's top-level conversation as either the first message of a thread or a message with no threaded replies. If the space doesn't support reply in threads, this field is always `false`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionResponse => GoogleApi.Chat.V1.Model.ActionResponse.t() | nil,
          :annotations => list(GoogleApi.Chat.V1.Model.Annotation.t()) | nil,
          :argumentText => String.t() | nil,
          :attachment => list(GoogleApi.Chat.V1.Model.Attachment.t()) | nil,
          :cards => list(GoogleApi.Chat.V1.Model.Card.t()) | nil,
          :cardsV2 => list(GoogleApi.Chat.V1.Model.CardWithId.t()) | nil,
          :clientAssignedMessageId => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :fallbackText => String.t() | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :matchedUrl => GoogleApi.Chat.V1.Model.MatchedUrl.t() | nil,
          :name => String.t() | nil,
          :sender => GoogleApi.Chat.V1.Model.User.t() | nil,
          :slashCommand => GoogleApi.Chat.V1.Model.SlashCommand.t() | nil,
          :space => GoogleApi.Chat.V1.Model.Space.t() | nil,
          :text => String.t() | nil,
          :thread => GoogleApi.Chat.V1.Model.Thread.t() | nil,
          :threadReply => boolean() | nil
        }

  field(:actionResponse, as: GoogleApi.Chat.V1.Model.ActionResponse)
  field(:annotations, as: GoogleApi.Chat.V1.Model.Annotation, type: :list)
  field(:argumentText)
  field(:attachment, as: GoogleApi.Chat.V1.Model.Attachment, type: :list)
  field(:cards, as: GoogleApi.Chat.V1.Model.Card, type: :list)
  field(:cardsV2, as: GoogleApi.Chat.V1.Model.CardWithId, type: :list)
  field(:clientAssignedMessageId)
  field(:createTime, as: DateTime)
  field(:fallbackText)
  field(:lastUpdateTime, as: DateTime)
  field(:matchedUrl, as: GoogleApi.Chat.V1.Model.MatchedUrl)
  field(:name)
  field(:sender, as: GoogleApi.Chat.V1.Model.User)
  field(:slashCommand, as: GoogleApi.Chat.V1.Model.SlashCommand)
  field(:space, as: GoogleApi.Chat.V1.Model.Space)
  field(:text)
  field(:thread, as: GoogleApi.Chat.V1.Model.Thread)
  field(:threadReply)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Message do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
