defmodule ShoppingList do
  use GenServer
 
  # Client API
 
  def start_link do
    GenServer.start_link(__MODULE__, :ok, [])
  end
 
  def read(pid) do
    GenServer.call(pid, {:read})
  end
 
  def add(pid, item) do
    GenServer.cast(pid, {:add, item})
  end
 
  # Server Callbacks
 
  def init(:ok) do
    {:ok, []}
  end
 
  def handle_call({:read}, from, list) do
    IO.inspect(list)
    {:reply, list, list}
  end
 
  def handle_cast({:add, item}, list) do
    {:noreply, list ++ [item]}

  end

end

# Start the server
{:ok, pid} = ShoppingList.start_link
 
# Adding some items
ShoppingList.add(pid, "milk")
ShoppingList.add(pid, "bread")
ShoppingList.add(pid, "cheese")
 
# Read the items back
ShoppingList.read(pid)

