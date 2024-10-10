import turtle
import random

# Screen setup
screen = turtle.Screen()
screen.setup(width=500, height=400)
screen.title("Turtle Race")

# Create finish line
finish_line = turtle.Turtle()
finish_line.penup()
finish_line.goto(230, -180)
finish_line.pendown()
finish_line.right(90)
finish_line.forward(360)

# Create turtle racers
colors = ["red", "orange", "yellow", "green", "blue", "purple"]
turtles = []

for i in range(len(colors)):
  new_turtle = turtle.Turtle(shape="turtle")
  new_turtle.color(colors[i])
  new_turtle.penup()
  new_turtle.goto(-230, -100 + (i * 30))
  turtles.append(new_turtle)

# Race setup
is_race_on = False
user_bet = screen.textinput(title="Make your guess", prompt="Which turtle will win? Enter a color: ")

if user_bet:
  is_race_on = True

# Race logic
while is_race_on:
  for turtle in turtles:
    if turtle.xcor() > 230:
      is_race_on = False
      winning_color = turtle.pencolor()
      if winning_color == user_bet:
        print(f"You win! The {winning_color} turtle won.")
      else:
        print(f"You lose! The {winning_color} turtle won.")

    random_distance = random.randint(0, 10)
    turtle.forward(random_distance)

screen.exitonclick()
