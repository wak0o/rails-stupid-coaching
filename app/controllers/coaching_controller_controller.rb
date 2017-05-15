class CoachingControllerController < ApplicationController

  ASKS = [
    { query: "I am going to work right now!", answer: "Good boy !" },
    { query: "I met a girl last night", answer: "I don't care, get dressed and go to work!" },
    { query: "Can I eat some pizza?", answer: "Silly question, get dressed and go to work!" },
  ]

  def ask
    @asks = ASKS
  end

  def answer
    @query = params[:query]
    @asks = ASKS.select {|a| a[:query] == @query }
  end
end
