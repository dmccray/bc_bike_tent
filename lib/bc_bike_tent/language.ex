defmodule BcBikeTent.Language do
	use Ecto.Schema

	@primary_key {:language_t, :id, autogenerate: true}

	schema "bt_setup_languages" do
		field :descr, :string
		field :abbr, :string	
	end
end