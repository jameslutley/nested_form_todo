defmodule Todo.List do
  use Todo.Web, :model

  schema "lists" do
    field :name, :string
    has_many :items, Todo.Item, on_delete: :delete_all

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> cast_assoc(:items, required: true)
    |> validate_required([:name])
  end
end
