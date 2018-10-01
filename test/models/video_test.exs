defmodule PhoenixVideoStream.VideoTest do
  use PhoenixVideoStream.ModelCase

  alias PhoenixVideoStream.Video

  @valid_attrs %{content_type: "some content_type", filename: "some filename", path: "some path", title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Video.changeset(%Video{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Video.changeset(%Video{}, @invalid_attrs)
    refute changeset.valid?
  end
end
