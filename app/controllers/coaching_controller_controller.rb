class CoachingControllerController < ApplicationController

  ASKS = [
    { query: "hello", answer: "wesh" },
    { query: "how are you", answer: "fine" }
  ]

  def ask
    @asks = ASKS
  end

  def answer
    #@asks = ASKS
    @query = params[:query]
    @asks = ASKS.select {|a| a[:query] == @query }
  end
end
