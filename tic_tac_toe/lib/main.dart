import 'package:flutter/material.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TicTacToeHomePage(title: 'Tic Tac Toe'),
    );
  }
}

class TicTacToeHomePage extends StatefulWidget {
  const TicTacToeHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _TicTacToeHomePageState createState() => _TicTacToeHomePageState();
}

class _TicTacToeHomePageState extends State<TicTacToeHomePage> {
  List<String> _gameBoard = List.generate(9, (index) => "");
  bool _player1Turn = true;
  String _winner = "";

  void _makeMove(int index) {
    setState(() {
      if (_gameBoard[index] == "") {
        if (_player1Turn) {
          _gameBoard[index] = "X";
        } else {
          _gameBoard[index] = "O";
        }
        _player1Turn = !_player1Turn;
        _checkForWinner();
      }
    });
  }

  void _checkForWinner() {
    // Check rows
    for (int i = 0; i < 9; i += 3) {
      if (_gameBoard[i] != "" &&
          _gameBoard[i] == _gameBoard[i + 1] &&
          _gameBoard[i] == _gameBoard[i + 2]) {
        _winner = _gameBoard[i];
      }
    }
    // Check columns
    for (int i = 0; i < 3; i++) {
      if (_gameBoard[i] != "" &&
          _gameBoard[i] == _gameBoard[i + 3] &&
          _gameBoard[i] == _gameBoard[i + 6]) {
        _winner = _gameBoard[i];
      }
    }
    // Check diagonals
    if (_gameBoard[0] != "" &&
        _gameBoard[0] == _gameBoard[4] &&
        _gameBoard[0] == _gameBoard[8]) {
      _winner = _gameBoard[0];
    }
    if (_gameBoard[2] != "" &&
        _gameBoard[2] == _gameBoard[4] &&
        _gameBoard[2] == _gameBoard[6]) {
      _winner = _gameBoard[2];
    }
    // Check for draw
    if (!_gameBoard.contains("") && _winner == "") {
      _winner = "Draw";
    }
  }

  void _resetGame() {
    setState(() {
      _gameBoard = List.generate(9, (index) => "");
      _player1Turn = true;
      _winner = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _makeMove(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        _gameBoard[index],
                        style: const TextStyle(fontSize: 48),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          if (_winner != "")
            Column(
              children: [
                Text(
                  _winner == "Draw" ? "It's a draw!" : "Winner: $_winner",
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: _resetGame,
                  child: const Text("Play again"),
                ),
              ],
            ),
        ],
      ),
    );
  }
}