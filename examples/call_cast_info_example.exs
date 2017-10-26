defmodule CallCastInfo do 
    @moduledoc """
    See how the difference between Call, Cast, Info 
    apply to Genstage, GenServer
    """
    @doc """

    """
    use GenServer


    # def handel_call(msg, _from, state) do 
    # 	{:reply, "Received in call: #{msg}", state}
    # end 

    # def handel_cast(msg, state) do 
    # 	:timer.sleep 2000
    # 	IO.puts "Received in cast: #{msg}"
    # 	{:noreply, state}
    # end 


    # def handle_info(msg, state) do 
    # 	IO.puts "Received in info: #{msg}"
    # 	{:noreply, state}
    # end 

    def handle_call(msg, _from, state) do
    	:timer.sleep 2000
	    {:reply, "Received in call: #{msg}", state}
	end

	def handle_cast(msg, state) do
	    :timer.sleep 2000
	    IO.puts "Received in cast: #{msg}"
	    {:noreply, state}
	end

	def handle_info(msg, state) do
	    IO.puts "Received in info: #{msg}"
	    {:noreply, state}
	end
end
