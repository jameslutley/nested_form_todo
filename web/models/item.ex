defmodule Todo.Item do
  use Todo.Web, :model

  schema "items" do
    field :body, :string
    belongs_to :list, Todo.List

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body])
    |> validate_required([:body])
  end
end
