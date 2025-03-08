class DiceController < ApplicationController

  def homepage
    render({:template => "dice_roll_templates/homepage"})
  end

  def two_six
    @first_die = rand(1..6)
    @second_die = rand(1..6)
    
    render({:template => "dice_roll_templates/two_six"})
  end

  def two_ten
    @first_die = rand(1..10)
    @second_die = rand(1..10)

    render({:template => "dice_roll_templates/two_ten"})
  end

  def one_twenty
    @first_die = rand(1..20)

    render({:template => "dice_roll_templates/one_twenty"})
  end

  def five_four
    @first_die = rand(1..4)
    @second_die = rand(1..4)
    @third_die = rand(1..4)
    @fourth_die = rand(1..4)
    @fifth_die = rand(1..4)

    render({:template => "dice_roll_templates/five_four"})
  end

  def rand_num 
    @dice = params.fetch("dice").to_i
    @sides = params.fetch("sides").to_i

    @rolls = []

    @dice.times do 
      die = rand(1..@sides)

      @rolls.push(die)
    end 

    render({ :template => "dice_templates/rand_num"})
  end

end
