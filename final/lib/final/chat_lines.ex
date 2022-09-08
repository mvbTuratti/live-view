defmodule Final.ChatLines do
  @moduledoc """
  The ChatLines context.
  """

  import Ecto.Query, warn: false
  alias Final.Repo

  alias Final.ChatLines.ChatLine

  @doc """
  Returns the list of chat_line.

  ## Examples

      iex> list_chat_line()
      [%ChatLine{}, ...]

  """
  def list_chat_line do
    Repo.all(ChatLine)
  end

  @doc """
  Gets a single chat_line.

  Raises `Ecto.NoResultsError` if the Chat line does not exist.

  ## Examples

      iex> get_chat_line!(123)
      %ChatLine{}

      iex> get_chat_line!(456)
      ** (Ecto.NoResultsError)

  """
  def get_chat_line!(id), do: Repo.get!(ChatLine, id)

  @doc """
  Creates a chat_line.

  ## Examples

      iex> create_chat_line(%{field: value})
      {:ok, %ChatLine{}}

      iex> create_chat_line(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_chat_line(attrs \\ %{}) do
    %ChatLine{}
    |> ChatLine.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a chat_line.

  ## Examples

      iex> update_chat_line(chat_line, %{field: new_value})
      {:ok, %ChatLine{}}

      iex> update_chat_line(chat_line, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_chat_line(%ChatLine{} = chat_line, attrs) do
    chat_line
    |> ChatLine.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a chat_line.

  ## Examples

      iex> delete_chat_line(chat_line)
      {:ok, %ChatLine{}}

      iex> delete_chat_line(chat_line)
      {:error, %Ecto.Changeset{}}

  """
  def delete_chat_line(%ChatLine{} = chat_line) do
    Repo.delete(chat_line)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking chat_line changes.

  ## Examples

      iex> change_chat_line(chat_line)
      %Ecto.Changeset{data: %ChatLine{}}

  """
  def change_chat_line(%ChatLine{} = chat_line, attrs \\ %{}) do
    ChatLine.changeset(chat_line, attrs)
  end

  def preload_chat(%ChatLine{} = chat, :chat_line) do
    Repo.preload(chat, :chat_line)
  end
end
