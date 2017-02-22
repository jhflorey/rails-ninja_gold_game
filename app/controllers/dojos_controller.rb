class DojosController < ApplicationController
  def index

    if !session[:total_gold]
      session[:total_gold] = 0
      session[:activities] = []
    end

    @total_gold = session[:total_gold]
    @activities = session[:activities]

  end

  def farm
    gold = rand(10..20)
    session[:total_gold] += gold

    obj = {status: true, sentence: "Earned #{gold} golds from farm"}
    session[:activities].push(obj)




    redirect_to '/'
  end

  def cave
    gold = rand(5..10)
    session[:total_gold] += gold

    obj = {status: true, sentence: "Earned #{gold} golds from cave"}
    session[:activities].push(obj)

    redirect_to '/'
  end

  def house
    gold = rand(2..5)
    session[:total_gold] += gold

    obj = {status: true, sentence: "Earned #{gold} golds from house"}
    session[:activities].push(obj)

    redirect_to '/'
  end

  def casino
    gold = rand(0..50)
    gamble = rand(0..1)
    
    if gamble == 0
      session[:total_gold] += gold
      obj = {status: true, sentence: "Earned #{gold} golds from casino"}
      session[:activities].push(obj)

    else
      session[:total_gold] -= gold
      obj = {status: false, sentence: "Entered a casino and lost #{gold} golds ... Ouch.. "}
      session[:activities].push(obj)
    end

    redirect_to '/'
  end
end
