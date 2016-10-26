class GameController < ApplicationController
  def user_plays_rock

    moves = ["Rock", "Paper", "Scissors"]
    computer_move2 = moves.sample

    if computer_move2 == "Rock"
    @result_var="You tied!"
    @label_color="warning"
  elsif computer_move2=="Paper"
    @result_var="You lost!"
    @label_color="danger"
  elsif computer_move2=="Scissors"
    @result_var="You won!"
    @label_color="success"
    end
@computer_move = computer_move2


render("game/play_rock.html.erb")

  end

  def user_plays_paper

    moves = ["Rock", "Paper", "Scissors"]
    computer_move2 = moves.sample

    if computer_move2 == "Rock"
    @result_var="You won!"
    @label_color="success"
  elsif computer_move2=="Paper"
    @result_var="You tied!"
    @label_color="warning"
  elsif computer_move2=="Scissors"
    @result_var="You lost!"
    @label_color="danger"

    end
@computer_move = computer_move2
render("game/play_paper.html.erb")

  end

  def user_plays_scissors

    moves = ["Rock", "Paper", "Scissors"]
    computer_move2 = moves.sample

    if computer_move2 == "Rock"
    @result_var="You lost!"
    @label_color="danger"
  elsif computer_move2=="Paper"
    @result_var="You won!"
    @label_color="success"
  elsif computer_move2=="Scissors"
    @result_var="You tied!"
    @label_color="warning"

    end
@computer_move = computer_move2
render("game/play_scissors.html.erb")

  end

end
