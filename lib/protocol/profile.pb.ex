defmodule InpowerProfile.GetImpactingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t()
             }

  defstruct [:id]

  field :id, 1, type: :string
end

defmodule InpowerProfile.GetImpactingResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profiles: [InpowerProfile.Profile.t()]
             }

  defstruct [:profiles]

  field :profiles, 1, repeated: true, type: InpowerProfile.Profile
end

defmodule InpowerProfile.GetInspiredRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t()
             }

  defstruct [:id]

  field :id, 1, type: :string
end

defmodule InpowerProfile.GetInspiredResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profiles: [InpowerProfile.Profile.t()]
             }

  defstruct [:profiles]

  field :profiles, 1, repeated: true, type: InpowerProfile.Profile
end

defmodule InpowerProfile.GetProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               auth_id: String.t()
             }

  defstruct [:id, :auth_id]

  field :id, 1, type: :string
  field :auth_id, 2, type: :string
end

defmodule InpowerProfile.GetProfileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profile: InpowerProfile.Profile.t() | nil
             }

  defstruct [:profile]

  field :profile, 1, type: InpowerProfile.Profile
end

defmodule InpowerProfile.GetProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profiles: [InpowerProfile.ProfileRequest.t()]
             }

  defstruct [:profiles]

  field :profiles, 1, repeated: true, type: InpowerProfile.ProfileRequest
end

defmodule InpowerProfile.GetProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profiles: [InpowerProfile.Profile.t()]
             }

  defstruct [:profiles]

  field :profiles, 1, repeated: true, type: InpowerProfile.Profile
end

defmodule InpowerProfile.CreateProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               username: String.t(),
               fullname: String.t(),
               invite_code: String.t(),
               email: String.t(),
               phone: String.t(),
               type: String.t(),
               visibility: String.t(),
               profile_photo: String.t(),
               auth_id: String.t(),
               bio: String.t(),
               country_id: String.t(),
               selfie_img: String.t(),
               pronoun: String.t(),
               selfie_approval: String.t(),
               pronoun_visibility: String.t()
             }

  defstruct [
    :username,
    :fullname,
    :invite_code,
    :email,
    :phone,
    :type,
    :visibility,
    :profile_photo,
    :auth_id,
    :bio,
    :country_id,
    :selfie_img,
    :pronoun,
    :selfie_approval,
    :pronoun_visibility
  ]

  field :username, 1, type: :string
  field :fullname, 2, type: :string
  field :invite_code, 3, type: :string
  field :email, 4, type: :string
  field :phone, 5, type: :string
  field :type, 6, type: :string
  field :visibility, 7, type: :string
  field :profile_photo, 8, type: :string
  field :auth_id, 9, type: :string
  field :bio, 10, type: :string
  field :country_id, 11, type: :string
  field :selfie_img, 12, type: :string
  field :pronoun, 13, type: :string
  field :selfie_approval, 14, type: :string
  field :pronoun_visibility, 15, type: :string

end

defmodule InpowerProfile.CreateProfileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profile: InpowerProfile.Profile.t() | nil
             }

  defstruct [:profile]

  field :profile, 1, type: InpowerProfile.Profile
end

defmodule InpowerProfile.EditProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               fullname: String.t(),
               invite_code: String.t(),
               email: String.t(),
               phone: String.t(),
               type: String.t(),
               visibility: String.t(),
               profile_photo: String.t(),
               auth_id: String.t(),
               bio: String.t(),
               username: String.t(),
               country_id: String.t(),
               selfie_img: String.t(),
               pronoun: String.t(),
               selfie_approval: String.t(),
               pronoun_visibility: String.t()
             }

  defstruct [
    :id,
    :fullname,
    :invite_code,
    :email,
    :phone,
    :type,
    :visibility,
    :profile_photo,
    :auth_id,
    :bio,
    :username,
    :country_id,
    :selfie_img,
    :pronoun,
    :selfie_approval,
    :pronoun_visibility
  ]

  field :id, 1, type: :string
  field :fullname, 2, type: :string
  field :invite_code, 3, type: :string
  field :email, 4, type: :string
  field :phone, 5, type: :string
  field :type, 6, type: :string
  field :visibility, 7, type: :string
  field :profile_photo, 8, type: :string
  field :auth_id, 9, type: :string
  field :bio, 10, type: :string
  field :username, 11, type: :string
  field :country_id, 12, type: :string
  field :selfie_img, 13, type: :string
  field :pronoun, 14, type: :string
  field :selfie_approval, 15, type: :string
  field :pronoun_visibility, 16, type: :string


end
defmodule InpowerProfile.GetUsersReactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
              profile_id: String.t(),
              post_id: String.t()
             }

  defstruct [
    :profile_id,
    :post_id
  ]

  field :profile_id, 1, type: :string
  field :post_id, 2, type: :string
end


defmodule InpowerProfile.GetUsersReactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               reaction: InpowerProfile.Reaction.t() | nil
             }

  defstruct [:reaction]

  field :reaction, 1, type: InpowerProfile.Reaction
end

defmodule InpowerProfile.UpdateReactionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
              profile_id: String.t(),
              post_id: String.t(),
              type: String.t()
             }

  defstruct [
    :profile_id,
    :post_id,
    :type
  ]

  field :profile_id, 1, type: :string
  field :post_id, 2, type: :string
  field :type, 3, type: :string
end

defmodule InpowerProfile.UpdateReactionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               reaction: InpowerProfile.Reaction.t() | nil
             }

  defstruct [:reaction]

  field :reaction, 1, type: InpowerProfile.Reaction
end

defmodule InpowerProfile.Reaction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profile_id: String.t(),
               post_id: String.t(),
               type: [String.t()]
             }

  defstruct [
    :profile_id,
    :post_id,
    :type
  ]

  field :profile_id, 1, type: :string
  field :post_id, 2, type: :string
  field :type, 3, repeated: true, type: :string
end

defmodule InpowerProfile.EditProfileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profile: InpowerProfile.EditProfile.t() | nil
             }

  defstruct [:profile]

  field :profile, 1, type: InpowerProfile.EditProfile
end

defmodule InpowerProfile.ProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               user_id: String.t()
             }

  defstruct [:user_id]

  field :user_id, 1, type: :string
end

defmodule InpowerProfile.EditProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               fullname: String.t(),
               invite_code: String.t(),
               email: String.t(),
               phone: String.t(),
               type: String.t(),
               visibility: String.t(),
               profile_photo: String.t(),
               auth_id: String.t(),
               bio: String.t(),
               username: String.t(),
               followed: boolean,
               impacting_count: integer,
               inspired_count: integer,
               selfie_img: String.t(),
               pronoun: String.t(),
               country: InpowerProfile.Country.t() | nil,
               saved_posts: [String.t()],
               blocked_users: [String.t()],
               selfie_approval: String.t(),
               pronoun_visibility: String.t()
             }

  defstruct [
    :id,
    :fullname,
    :invite_code,
    :email,
    :phone,
    :type,
    :visibility,
    :profile_photo,
    :auth_id,
    :bio,
    :username,
    :followed,
    :impacting_count,
    :inspired_count,
    :selfie_img,
    :pronoun,
    :country,
    :saved_posts,
    :blocked_users,
    :selfie_approval,
    :pronoun_visibility
  ]

  field :id, 1, type: :string
  field :fullname, 2, type: :string
  field :invite_code, 3, type: :string
  field :email, 4, type: :string
  field :phone, 5, type: :string
  field :type, 6, type: :string
  field :visibility, 7, type: :string
  field :profile_photo, 8, type: :string
  field :auth_id, 9, type: :string
  field :bio, 10, type: :string
  field :username, 11, type: :string
  field :followed, 12, type: :bool
  field :impacting_count, 13, type: :int32
  field :inspired_count, 14, type: :int32
  field :selfie_img, 15, type: :string
  field :pronoun, 16, type: :string
  field :country, 17, type: InpowerProfile.Country
  field :saved_posts, 18, repeated: true, type: :string
  field :blocked_users, 19, repeated: true, type: :string
  field :selfie_approval, 20, type: :string
  field :pronoun_visibility, 21, type: :string


end

defmodule InpowerProfile.Profile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               fullname: String.t(),
               invite_code: String.t(),
               email: String.t(),
               phone: String.t(),
               type: String.t(),
               visibility: String.t(),
               profile_photo: String.t(),
               auth_id: String.t(),
               bio: String.t(),
               username: String.t(),
               followed: boolean,
               impacting_count: integer,
               inspired_count: integer,
               selfie_img: String.t(),
               pronoun: String.t(),
               country: InpowerProfile.Country.t() | nil,
               saved_posts: [InpowerProfile.Post.t()], # [String.t()],
               blocked_users: [String.t()],
               country_id: String.t(),
               verified: boolean,
               selfie_approval: String.t(),
               pronoun_visibility: String.t()

             }

  defstruct [
    :id,
    :fullname,
    :invite_code,
    :email,
    :phone,
    :type,
    :visibility,
    :profile_photo,
    :auth_id,
    :bio,
    :username,
    :followed,
    :impacting_count,
    :inspired_count,
    :selfie_img,
    :pronoun,
    :country,
    :saved_posts,
    :blocked_users,
    :country_id,
    :verified,
    :selfie_approval,
    :pronoun_visibility
  ]

  field :id, 1, type: :string
  field :fullname, 2, type: :string
  field :invite_code, 3, type: :string
  field :email, 4, type: :string
  field :phone, 5, type: :string
  field :type, 6, type: :string
  field :visibility, 7, type: :string
  field :profile_photo, 8, type: :string
  field :auth_id, 9, type: :string
  field :bio, 10, type: :string
  field :username, 11, type: :string
  field :followed, 12, type: InpowerProfile.Follow
  field :impacting_count, 13, type: :int32
  field :inspired_count, 14, type: :int32
  field :selfie_img, 15, type: :string
  field :pronoun, 16, type: :string
  field :country, 17, type: InpowerProfile.Country
  field :saved_posts, 18, repeated: true, type: InpowerProfile.Post #:string
  field :blocked_users, 19, repeated: true, type: :string
  field :country_id, 20, type: :string
  field :verified, 21, type: :bool
  field :selfie_approval, 22, type: :string
  field :pronoun_visibility, 23, type: :string



end

defmodule InpowerProfile.FollowProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               profile_id: String.t(),
               follow_id: String.t()
             }

  defstruct [:profile_id, :follow_id]

  field :profile_id, 1, type: :string
  field :follow_id, 2, type: :string
end

defmodule InpowerProfile.FollowProfileResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               follow: InpowerProfile.Follow.t() | nil
             }

  defstruct [:follow]

  field :follow, 1, type: InpowerProfile.Follow
end

defmodule InpowerProfile.Follow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               profile_id: String.t(),
               follow_id: String.t(),
               status: String.t()
             }

  defstruct [:id, :profile_id, :follow_id, :status]

  field :id, 1, type: :string
  field :profile_id, 2, type: :string
  field :follow_id, 3, type: :string
  field :status, 4, type: :string
end

defmodule InpowerProfile.Country do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               name: String.t()
             }

  defstruct [:id, :name]

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule InpowerProfile.SavePostRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               post_id: String.t(),
               user_id: String.t()
             }

  defstruct [:post_id, :user_id]

  field :post_id, 1, type: :string
  field :user_id, 2, type: :string
end

defmodule InpowerProfile.SavePostResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               status: String.t()
             }

  defstruct [:status]

  field :status, 1, type: :string
end

defmodule InpowerProfile.SavedPostsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               page_no: integer,
               per_page: integer,
               user_id: String.t()
             }

  defstruct [:page_no, :per_page, :user_id]

  field :page_no, 1, type: :int32
  field :per_page, 2, type: :int32
  field :user_id, 3, type: :string
end

defmodule InpowerProfile.SavedPostsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               saved_posts: InpowerProfile.SavedPostResponsePaged.t() | nil
             }

  defstruct [:saved_posts]

  field :saved_posts, 1, type: InpowerProfile.SavedPostResponsePaged
end

defmodule InpowerProfile.SavedPostResponsePaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               first_page: integer,
               has_next: boolean,
               has_prev: boolean,
               list: [InpowerProfile.Profile.t()] | nil,
               next_page: integer,
               page: integer,
               prev_page: integer,
             }

  defstruct [:first_page, :has_next, :has_prev, :next_page, :page, :prev_page, :list]

  field :first_page, 1, type: :int32
  field :has_next, 2, type: :bool
  field :has_prev, 3, type: :bool
  field :list, 4, repeated: true, type: InpowerProfile.Profile
  field :next_page, 5, type: :int32
  field :page, 6, type: :int32
  field :prev_page, 7, type: :int32
end

defmodule InpowerProfile.Post do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               active: boolean,
               anonymous: boolean,
               content: String.t(),
               group_id: [String.t()],
               id: String.t(),
               user_id: String.t(),
               media: [InpowerProfile.MediaResponse.t()],
               polls: InpowerProfile.PollsResponse.t() | nil,
               sensitive: boolean,
               title: String.t(),
               updated_at: String.t(),
               inserted_at: String.t()
             }

  defstruct [
    :active,
    :anonymous,
    :content,
    :group_id,
    :id,
    :user_id,
    :media,
    :polls,
    :sensitive,
    :title,
    :updated_at,
    :inserted_at
  ]

  field :active, 1, type: :bool
  field :anonymous, 2, type: :bool
  field :content, 3, type: :string
  field :group_id, 4, repeated: true, type: :string
  field :id, 5, type: :string
  field :user_id, 6, type: :string
  field :media, 7, repeated: true, type: InpowerProfile.MediaResponse
  field :polls, 8, type: InpowerProfile.PollsResponse
  field :sensitive, 9, type: :bool
  field :title, 10, type: :string
  field :updated_at, 11, type: :string
  field :inserted_at, 12, type: :string
end

defmodule InpowerProfile.MediaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               src: String.t(),
               order: integer,
               caption: String.t(),
               active: boolean,
               post_id: String.t(),
               height: String.t(),
               width: String.t()
             }

  defstruct [:id, :src, :type, :order, :caption, :active, :post_id, :height, :width]

  field :id, 1, type: :string
  field :src, 2, type: :string
  field :order, 3, type: :int32
  field :caption, 4, type: :string
  field :active, 5, type: :bool
  field :post_id, 6, type: :string
  field :height, 7, type: :string
  field :width, 8, type: :string
end

defmodule InpowerProfile.PollsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               active: boolean,
               id: String.t(),
               poll_options: [InpowerProfile.PollOptionsResponse.t()],
               post_id: String.t(),
               summary: String.t(),
               title: String.t()
             }

  defstruct [:active, :id, :poll_options, :post_id, :summary, :title]

  field :active, 1, type: :bool
  field :id, 2, type: :string
  field :poll_options, 3, repeated: true, type: InpowerProfile.PollOptionsResponse
  field :post_id, 4, type: :string
  field :summary, 5, type: :string
  field :title, 6, type: :string
end

defmodule InpowerProfile.PollOptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               active: boolean,
               context: String.t(),
               id: String.t(),
               polls_id: String.t(),
               poll_votes: [InpowerProfile.PollVotesResponse.t()]
             }

  defstruct [:active, :context, :id, :polls_id, :poll_votes]

  field :active, 1, type: :bool
  field :context, 2, type: :string
  field :id, 3, type: :string
  field :polls_id, 4, type: :string
  field :poll_votes, 5, repeated: true, type: InpowerProfile.PollVotesResponse
end

defmodule InpowerProfile.PollVotesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               id: String.t(),
               active: boolean,
               user_id: String.t(),
               context: String.t(),
               poll_options_id: String.t()
             }

  defstruct [:id, :active, :user_id, :context, :poll_options_id]

  field :id, 1, type: :string
  field :active, 2, type: :bool
  field :user_id, 3, type: :string
  field :context, 4, type: :string
  field :poll_options_id, 5, type: :string
end

defmodule InpowerProfile.BlockUserRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               user_id: String.t(),
               block_user_id: String.t()
             }

  defstruct [:user_id, :block_user_id]

  field :user_id, 1, type: :string
  field :block_user_id, 2, type: :string
end

defmodule InpowerProfile.BlockUserResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               status: String.t()
             }

  defstruct [:status]

  field :status, 1, type: :string
end

defmodule InpowerProfile.CheckBlockedUserRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               user_id: String.t(),
               block_user_id: String.t()
             }

  defstruct [:user_id, :block_user_id]

  field :user_id, 1, type: :string
  field :block_user_id, 2, type: :string
end

defmodule InpowerProfile.CheckBlockedUserResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               status: boolean
             }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule InpowerProfile.CheckUserConnectedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               user_id: String.t(),
               follower_user_id: String.t()
             }

  defstruct [:user_id, :follower_user_id]

  field :user_id, 1, type: :string
  field :follower_user_id, 2, type: :string
end

defmodule InpowerProfile.CheckUserConnectedResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               status: boolean
             }

  defstruct [:status]

  field :status, 1, type: :bool
end

defmodule InpowerProfile.CheckUsersRelationshipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               my_user_id: String.t(),
               other_user_id: String.t()
             }

  defstruct [:my_user_id, :other_user_id]

  field :my_user_id, 1, type: :string
  field :other_user_id, 2, type: :string
end

defmodule InpowerProfile.CheckUsersRelationshipResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               is_connected: boolean,
               is_blocked: boolean
             }

  defstruct [:is_connected, :is_blocked]

  field :is_connected, 1, type: :bool
  field :is_blocked, 2, type: :bool
end

defmodule InpowerProfile.BlockedUsersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               page_no: integer,
               per_page: integer,
               user_id: String.t()
             }

  defstruct [:page_no, :per_page, :user_id]

  field :page_no, 1, type: :int32
  field :per_page, 2, type: :int32
  field :user_id, 3, type: :string
end

defmodule InpowerProfile.BlockedUsersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               blocked_users: InpowerProfile.BlockedUsersResponsePaged.t()
             }

  defstruct [:blocked_users]

  field :blocked_users, 1, type: InpowerProfile.BlockedUsersResponsePaged
end

defmodule InpowerProfile.BlockedUsersResponsePaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               first_page: integer,
               has_next: boolean,
               has_prev: boolean,
               next_page: integer,
               page: integer,
               prev_page: integer,
               list: [InpowerProfile.Profile.t()]
             }

  defstruct [:first_page, :has_next, :has_prev, :next_page, :page, :prev_page, :list]

  field :first_page, 1, type: :int32
  field :has_next, 2, type: :bool
  field :has_prev, 3, type: :bool
  field :next_page, 4, type: :int32
  field :page, 5, type: :int32
  field :prev_page, 6, type: :int32
  field :list, 7, repeated: true, type: InpowerProfile.Profile
end

defmodule InpowerProfile.UsersListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               page_no: integer,
               per_page: integer
             }

  defstruct [:page_no, :per_page]

  field :page_no, 1, type: :int32
  field :per_page, 2, type: :int32
end

defmodule InpowerProfile.UsersListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               users_list: InpowerProfile.UsersListResponsePaged.t() | nil
             }

  defstruct [:users_list]

  field :users_list, 1, type: InpowerProfile.UsersListResponsePaged
end

defmodule InpowerProfile.UsersListResponsePaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
               first_page: integer,
               has_next: boolean,
               has_prev: boolean,
               next_page: integer,
               page: integer,
               prev_page: integer,
               profiles_list: [InpowerProfile.Profile.t()]
             }

  defstruct [:first_page, :has_next, :has_prev, :next_page, :page, :prev_page, :profiles_list]

  field :first_page, 1, type: :int32
  field :has_next, 2, type: :bool
  field :has_prev, 3, type: :bool
  field :next_page, 4, type: :int32
  field :page, 5, type: :int32
  field :prev_page, 6, type: :int32
  field :profiles_list, 7, repeated: true, type: InpowerProfile.Profile
end


defmodule InpowerProfile.ProfileService.Service do
  @moduledoc false
  use GRPC.Service, name: "inpower_profile.ProfileService"

  rpc :GetProfile, InpowerProfile.GetProfileRequest, InpowerProfile.GetProfileResponse

  rpc :GetProfiles, InpowerProfile.GetProfilesRequest, InpowerProfile.GetProfilesResponse

  rpc :CreateProfile, InpowerProfile.CreateProfileRequest, InpowerProfile.CreateProfileResponse

  rpc :EditProfile, InpowerProfile.EditProfileRequest, InpowerProfile.EditProfileResponse

  rpc :UpdateReactions, InpowerProfile.UpdateReactionsRequest, InpowerProfile.UpdateReactionsResponse

  rpc :GetUsersReacts, InpowerProfile.GetUsersReactsRequest, InpowerProfile.GetUsersReactsResponse

  rpc :GetImpacting, InpowerProfile.GetImpactingRequest, InpowerProfile.GetImpactingResponse

  rpc :GetInspired, InpowerProfile.GetInspiredRequest, InpowerProfile.GetInspiredResponse

  rpc :FollowProfile, InpowerProfile.FollowProfileRequest, InpowerProfile.FollowProfileResponse

  rpc :UnFollowProfile, InpowerProfile.FollowProfileRequest, InpowerProfile.FollowProfileResponse

  rpc :SavePost, InpowerProfile.SavePostRequest, InpowerProfile.SavePostResponse

  rpc :GetUsersSavedPosts, InpowerProfile.SavedPostsRequest, InpowerProfile.SavedPostsResponse

  rpc :BlockUser, InpowerProfile.BlockUserRequest, InpowerProfile.BlockUserResponse

  rpc :CheckUserBlockedOrNot, InpowerProfile.CheckBlockedUserRequest, InpowerProfile.CheckBlockedUserResponse

  rpc :CheckUsersConnectedOrNot, InpowerProfile.CheckUserConnectedRequest, InpowerProfile.CheckUserConnectedResponse

  rpc :CheckUsersRelationship, InpowerProfile.CheckUsersRelationshipRequest, InpowerProfile.CheckUsersRelationshipResponse

  rpc :GetUserBlockedUsers, InpowerProfile.BlockedUsersRequest, InpowerProfile.BlockedUsersResponse

  rpc :GetUsersList, InpowerProfile.UsersListRequest, InpowerProfile.UsersListResponse
end

defmodule InpowerProfile.ProfileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: InpowerProfile.ProfileService.Service
end
