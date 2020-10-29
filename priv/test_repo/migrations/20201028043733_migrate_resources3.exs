defmodule AshPostgres.TestRepo.Migrations.MigrateResources3 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up() do
    create(
      unique_index(:multitenant_orgs, [:name],
        name: "multitenant_orgs_unique_by_name_unique_index"
      )
    )
  end

  def down() do
    drop_if_exists(
      unique_index(:multitenant_orgs, [:name],
        name: "multitenant_orgs_unique_by_name_unique_index"
      )
    )
  end
end