defmodule PhoenixVideoStream.VideoTest do
  use PhoenixVideoStream.ModelCase

  alias PhoenixVideoStream.Video

  @valid_attrs %{title: "Test Video", video_file: %Plug.Upload{path: "test/fixtures/test.mp4", filename: "test.mp4"}}
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
