
# 2-Player Math Game
The 2-Player Math Game is a command-line application built with Ruby where players take turns to answer simple math addition problems. It simulates a math game between two players, generating a new math question for each turn. The goal is to answer the questions correctly and avoid losing lives.

Gameplay
Each player starts with 3 lives.
For each turn, a math question is generated with two random numbers between 1 and 20.
The player whose turn it is will be prompted with the question and must provide the correct answer.
If the answer is correct, the player scores a point. Otherwise, they lose a life.
At the end of every turn, the game displays the current scores of both players.
The game continues until one of the players loses all their lives.
Once a player loses all their lives, the game announces the winner and the final score.
How to Run
Make sure you have Ruby installed on your system.

Clone this repository or download the project files.

Open your terminal or command prompt and navigate to the project directory.

Run the following command to start the game:

css
Copy code
ruby main.rb
Follow the on-screen prompts to play the game.

Enter the answer for each math question when prompted.

The game will display the scores after each turn.

Continue playing until one player loses all their lives.

The game will announce the winner and the final score.

File Structure
The project files are organized as follows:

main.rb: The main entry point of the game. Run this file to start the game.
math_game.rb: Contains the MathGame class responsible for managing the game logic.
player.rb: Contains the Player class representing a player in the game.
question.rb: Contains the Question class responsible for generating math questions.
Dependencies
The 2-Player Math Game has no external dependencies. It is built using only the standard Ruby libraries.

Contributing
Contributions to this project are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

License
This project is licensed under the MIT License.

