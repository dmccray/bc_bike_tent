defmodule BcBikeTent.BikeTent.Language do
	use Ecto.Schema
	import Ecto.Changeset
	alias BcBikeTent.BikeTent.Language

	@primary_key {:language_t, :id, autogenerate: true}

	schema "bt_setup_languages" do
		field :descr, :string
		field :abbr, :string	
	end

	def changeset(%Language{} = language, attrs) do
		language
		|> cast(attrs, [:descr, :abbr])
		|> validate_required([:descr])
	end
end