"""Rock-Paper-Scissors Game with Number Choices"""

import random;

# Game logic interface
obj Game {
    has attempts: int, wins: int = 0, losses: int = 0, draws: int = 0;
    def play;
}

# Rock-Paper-Scissors game object
obj RockPaperScissorsGame (Game) {
    def init;
    override def play;
    def process_round(player_choice: int, computer_choice: int);
}

# Entry point
with entry {
    game = RockPaperScissorsGame();
    game.play();
}

# Implementation: Game.play
impl Game.play {
    raise NotImplementedError("Subclasses must implement this method.");
}

# Implementation: RockPaperScissorsGame.init
impl RockPaperScissorsGame.init {
    self.attempts = 3;
    self.wins = 0;
    self.losses = 0;
    self.draws = 0;
}

# Implementation: RockPaperScissorsGame.play
impl RockPaperScissorsGame.play {
    choices = ["Rock", "Paper", "Scissors"];
    while self.attempts > 0 {
        print("Choose: 1) Rock  2) Paper  3) Scissors");
        input_val = input("Enter 1, 2, or 3: ");
        if input_val.isdigit() and int(input_val) >= 1 and int(input_val) <= 3 {
            player_choice = int(input_val);
            computer_choice = random.randint(1, 3);
            print("Computer chose:", choices[computer_choice - 1]);
            self.process_round(player_choice, computer_choice);
            self.attempts -= 1;
        } else {
            print("Invalid choice! Try again.");
        }
        print(f"Rounds left: {self.attempts}");
    }
    print(f"Game over! Wins: {self.wins}, Losses: {self.losses}, Draws: {self.draws}");
}

# Implementation: RockPaperScissorsGame.process_round
impl RockPaperScissorsGame.process_round(player_choice: int, computer_choice: int) {
    if player_choice == computer_choice {
        print("It's a draw!");
        self.draws += 1;
    } elif (player_choice == 1 and computer_choice == 3) or
          (player_choice == 2 and computer_choice == 1) or
          (player_choice == 3 and computer_choice == 2) {
        print("You win!");
        self.wins += 1;
    } else {
        print("You lose!");
        self.losses += 1;
    }
}
