# Game Description
The project demonstrates a clean implementation of a CLI game. The core logic relies on Enums to define the available moves (Rock, Paper, Scissors), which makes the code more robust and readable. It handles user input dynamically through a while loop, processes the AI's move using a Random generator, and uses a conditional logic engine to determine the winner in each round.

## Technical Highlights of the Implementation:

- Type Safety with Enums: Instead of using raw strings, I implemented enum types to represent game moves. This ensured type safety and eliminated potential errors across the logic.

- Stochastic Opponent: Leveraged the dart:math library to simulate the computer's decision-making process through randomization.

- CLI Data Flow: Managed user input and output streams using stdin and stdout for a seamless terminal experience.

- Clean Logic Engine: Wrote a structured evaluation system to handle the game's win/loss/draw conditions within a persistent execution loop.