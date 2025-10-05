# Rock-Paper-Scissors Game with Number Choices

A simple command-line Rock-Paper-Scissors game implemented in Jaclang, featuring object-oriented design and game statistics tracking.

**GitHub Repository:** [https://github.com/sabtron-coder/genai.git](https://github.com/sabtron-coder/genai.git)

## Description

This project is a command-line implementation of the classic Rock-Paper-Scissors game, developed in the Jaclang programming language. It serves as Assignment 1 for the GenerativeAI Project by The Open University of Kenya in collaboration with BCS Technology.

The game allows a user to play against the computer for a set number of rounds. It features input validation, clear round-by-round feedback, and a final summary of wins, losses, and draws.

## Installation & Running

### Prerequisites
- Jaclang environment installed on your system.
- A terminal or command-line interface.

### Steps to Run the Game
1.  **Clone the repository:**
    ```bash
    git clone https://github.com/sabtron-coder/genai.git
    ```
2.  **Navigate to the project directory** where the `.jac` file is located.
3.  **Execute the game file** using the Jaclang interpreter.
    ```bash
    jac rock.jac
    ```

## How to Play

1.  Run the game from your terminal.
2.  You will be prompted to choose between Rock, Paper, or Scissors by entering a number:
    -   Enter `1` for **Rock**
    -   Enter `2` for **Paper**
    -   Enter `3` for **Scissors**
3.  The computer will make a random choice.
4.  The result of the round (Win, Lose, or Draw) will be displayed.
5.  The game consists of 3 rounds. After the final round, your total score will be shown.

## Game Rules

-   **Rock** crushes **Scissors**
-   **Scissors** cuts **Paper**
-   **Paper** covers **Rock**
-   If both choices are the same, the round is a **Draw**.

## Code Structure

The application is built using Jaclang's object-oriented paradigm:

-   **`obj Game`**: An interface or base object that defines the essential properties (`attempts`, `wins`, `losses`, `draws`) and a `play` method that must be implemented by subclasses.
-   **`obj RockPaperScissorsGame (Game)`**: The main game object that inherits from `Game`. It contains the core logic for:
    -   `init`: Initializing the game state.
    -   `play`: Running the main game loop, handling user input, and displaying results.
    -   `process_round`: Determining the winner of each round based on player and computer choices.
-   **`with entry`**: The main entry point of the application, which creates an instance of the game and starts it.
-   **`impl` blocks**: These blocks contain the implementation for the methods defined in the objects, separating the interface from the implementation logic.

---

Developed as part of the Generative AI course by The Open University of Kenya and BCS Technology International Pty Ltd, Australia.