# TicTacToe

Welcome to this game of Tic Tac Toe! Using my skills in Ruby and testing using RSPEC, the aim of the challenge is to make a functional two player game. The players should be able to input their choice of position and view the board. Best of luck!

## User Stories

To figure out how I wanted my game to work, I came up with the following user stories:

- As a User, So I can play against a friend, I want to start a game of Tic Tac Toe.
- As a User, So I can make a move, I want to pick a square to play in.
- As a User, So I can know my move has been accepted, I want to view the board as confirmation.
- As a User, So I know my opponent has played, I want to see the opponents move on the board.
- As a user, If a position has already been taken, I want to be able to pick again.
- As a User, To know who won, lost or if we drew, I would like to be shown the results

## How to Play

To start the game:

- Clone or fork the repo
- In terminal, change to the folder using `cd TicTacToe`
- Open `irb` and type `require './lib/game'`
- Choose whatever instance and make it equal to Game. For Example, `game = Game.new`
- Put your instance with .run to start. For Example, `game.run`

## Challenges Faced

Some of the challenges I faced included:

- How to print the board
- Storing the positions of the players using "X" and "O" and putting them on the board
- Looping the questions without it being too bulky
- Learning to test using StringIO

## Overall Thoughts

This was a nice challenge and an interesting one to get back into after taking a step away from Ruby for a while. I had at first managed to get this done with just one class but was not happy with how bulky it looked, so this has been my attempt to break it down into separate classes and add a board to the game which shows the players where they have played. Am still going to come back to this challenge as I want to build it into a game where players can use it online and pick their positions that way. Happy with this overall build at the current moment in time.
