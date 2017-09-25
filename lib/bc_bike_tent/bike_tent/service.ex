defmodule BcBikeTent.BikeTent.Service do
	use Ecto.Schema
	import Ecto.Changeset
	alias BcBikeTent.BikeTent.Service

	schema "bt_services" do
		field :service_dt, :date
		field :client_name, :string
		field :email_address, :string
		field :claimed_bool, :boolean
		field :problem, :string

		belongs_to :language, BcBikeTent.BikeTent.Language, [foreign_key: :language_t, references: :language_t]
		belongs_to :mechanic, BcBikeTent.BikeTent.Mechanic
	end

	def changeset(%Service{} = service, attrs) do
		service
		#make sure to put the foreign_ids in the cast (i.e. mechanic_id and language_t) if you want to set them when creating and updating
		|> cast(attrs, [:service_dt, :client_name, :email_address, :claimed_bool, :problem, :mechanic_id, :language_t])
		#|> cast_assoc(:mechanic, required: false) 
		#|> cast_assoc(:language, required: false)
	end
end