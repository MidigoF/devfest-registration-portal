defmodule DevfestRegistrationPortal.CategoryTest do
  @moduledoc """
    Handles tests for codelab categories
  """
  use DevfestRegistrationPortalWeb.ConnCase

  alias DevfestRegistrationPortal.Codelabs
  alias DevfestRegistrationPortal.Codelabs.Category
  alias DevfestRegistrationPortal.Repo

  test "create_codelab_category/1 inserts the specified codelab category" do
    {:ok, category} = Codelabs.create_category(%{"name" => "DevOps"})

    assert Repo.get_by(Category, name: "DevOps") == category
  end
end
