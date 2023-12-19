defmodule AshPostgres.TestRepo.Migrations.MigrateResources13 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    rename table(:posts), :title, to: :title_column
  end

  def down do
    rename table(:posts), :title_column, to: :title
  end
end