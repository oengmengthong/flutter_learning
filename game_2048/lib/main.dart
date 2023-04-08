// Sure, here's an updated implementation of the 2048 game using Flutter with null safety:

// ```dart
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2048 Cupcake',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '2048 Cupcake'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _size = 4;
  List<List<int?>> _grid = [];
  bool _gameOver = false;
  int _score = 0;

  @override
  void initState() {
    super.initState();
    initializeGrid();
    addRandomTile();
    addRandomTile();
  }

  void initializeGrid() {
    _grid = List.generate(_size, (_) => List.filled(_size, null));
  }

  void addRandomTile() {
    List<int> emptyTiles = [];
    for (int row = 0; row < _size; row++) {
      for (int col = 0; col < _size; col++) {
        if (_grid[row][col] == null) {
          emptyTiles.add(row * _size + col);
        }
      }
    }
    if (emptyTiles.isNotEmpty) {
      int randomIndex = Random().nextInt(emptyTiles.length);
      int randomTile = emptyTiles[randomIndex];
      int row = randomTile ~/ _size;
      int col = randomTile % _size;
      _grid[row][col] = Random().nextInt(10) == 0 ? 4 : 2;
    }
  }

  void resetGame() {
    setState(() {
      initializeGrid();
      addRandomTile();
      addRandomTile();
      _score = 0;
      _gameOver = false;
    });
  }

  void swipeLeft() {
    setState(() {
      bool moved = false;
      for (int row = 0; row < _size; row++) {
        int? previousValue;
        for (int col = 0; col < _size; col++) {
          if (_grid[row][col] != null) {
            if (previousValue == null) {
              previousValue = _grid[row][col];
            } else {
              if (previousValue == _grid[row][col]) {
                _grid[row][col - 1] = previousValue * 2;
                _score += previousValue * 2;
                _grid[row][col] = null;
                previousValue = null;
                moved = true;
              } else {
                previousValue = _grid[row][col];
              }
            }
          }
        }
        for (int col = 0; col < _size - 1; col++) {
          if (_grid[row][col] == null) {
            for (int nextCol = col + 1; nextCol < _size; nextCol++) {
              if (_grid[row][nextCol] != null) {
                _grid[row][col] = _grid[row][nextCol];
                _grid[row][nextCol] = null;
                moved = true;
                break;
              }
            }
          }
        }
      }
      if (moved) {
        addRandomTile();
      }
      checkGameOver();
    });
  }

  void swipeRight() {
    setState(() {
      bool moved = false;
      for (int row = 0; row < _size; row++) {
        int? previousValue;
        for (int col = _size - 1; col >= 0; col--) {
          if (_grid[row][col] != null) {
            if (previousValue == null) {
              previousValue = _grid[row][col];
            } else {
              if (previousValue == _grid[row][col]) {
                _grid[row][col + 1] = previousValue * 2;
                _score += previousValue * 2;
                _grid[row][col] = null;
                previousValue = null;
                moved = true;
              } else {
                previousValue = _grid[row][col];
              }
            }
          }
        }
        for (int col = _size - 1; col > 0; col--) {
          if (_grid[row][col] == null) {
            for (int nextCol = col - 1; nextCol >= 0; nextCol--) {
              if (_grid[row][nextCol] != null) {
                _grid[row][col] = _grid[row][nextCol];
                _grid[row][nextCol] = null;
                moved = true;
                break;
              }
            }
          }
        }
      }
      if (moved) {
        addRandomTile();
      }
      checkGameOver();
    });
  }

  void swipeUp() {
    setState(() {
      bool moved = false;
      for (int col = 0; col < _size; col++) {
        int? previousValue;
        for (int row = 0; row < _size; row++) {
          if (_grid[row][col] != null) {
            if (previousValue == null) {
              previousValue = _grid[row][col];
            } else {
              if (previousValue == _grid[row][col]) {
                _grid[row - 1][col] = previousValue * 2;
                _score += previousValue * 2;
                _grid[row][col] = null;
                previousValue = null;
                moved = true;
              } else {
                previousValue = _grid[row][col];
              }
            }
          }
        }
        for (int row = 0; row < _size - 1; row++) {
          if (_grid[row][col] == null) {
            for (int nextRow = row + 1; nextRow < _size; nextRow++) {
              if (_grid[nextRow][col] != null) {
                _grid[row][col] = _grid[nextRow][col];
                _grid[nextRow][col] = null;
                moved = true;
                break;
              }
            }
          }
        }
      }
      if (moved) {
        addRandomTile();
      }
      checkGameOver();
    });
  }

  void swipeDown() {
    setState(() {
      bool moved = false;
      for (int col = 0; col < _size; col++) {
        int? previousValue;
        for (int row = _size - 1; row >= 0; row--) {
          if (_grid[row][col] != null) {
            if (previousValue == null) {
              previousValue = _grid[row][col];
            } else {
              if (previousValue == _grid[row][col]) {
                _grid[row + 1][col] = previousValue * 2;
                _score += previousValue * 2;
                _grid[row][col] = null;
                previousValue = null;
                moved = true;
              } else {
                previousValue = _grid[row][col];
              }
            }
          }
        }
        for (int row = _size - 1; row > 0; row--) {
          if (_grid[row][col] == null) {
            for (int nextRow = row - 1; nextRow >= 0; nextRow--) {
              if (_grid[nextRow][col] != null) {
                _grid[row][col] = _grid[nextRow][col];
                _grid[nextRow][col] = null;
                moved = true;
                break;
              }
            }
          }
        }
      }
      if (moved) {
        addRandomTile();
      }
      checkGameOver();
    });
  }

  void checkGameOver() {
    bool hasEmptyTile = false;
    for (int row = 0; row < _size; row++) {
      for (int col = 0; col < _size; col++) {
        if (_grid[row][col] == null) {
          hasEmptyTile = true;
          break;
        }
      }
    }
    if (!hasEmptyTile) {
      bool canMerge = false;
      for (int row = 0; row < _size; row++) {
        for (int col = 0; col < _size - 1; col++) {
          if (_grid[row][col] == _grid[row][col + 1]) {
            canMerge = true;
            break;
          }
        }
      }
      for (int col = 0; col < _size; col++) {
        for (int row = 0; row < _size - 1; row++) {
          if (_grid[row][col] == _grid[row + 1][col]) {
            canMerge = true;
            break;
          }
        }
      }
      if (!canMerge) {
        _gameOver = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2048'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Score: $_score',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _size,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  int row = index ~/ _size;
                  int col = index % _size;
                  int? value = _grid[row][col];
                  return Container(
                    decoration: BoxDecoration(
                      color: value == null
                          ? Colors.grey[300]
                          : _tileColors[value]!,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        value == null ? '' : value.toString(),
                        style: TextStyle(
                          color: value != null && value >= 8
                              ? Colors.white
                              : Colors.grey[800],
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _size * _size,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _gameOver ? null : swipeLeft,
                  child: Icon(Icons.arrow_back),
                ),
                ElevatedButton(
                  onPressed: _gameOver ? null : swipeUp,
                  child: Icon(Icons.arrow_upward),
                ),
                ElevatedButton(
                  onPressed: _gameOver ? null : swipeDown,
                  child: Icon(Icons.arrow_downward),
                ),
                ElevatedButton(
                  onPressed: _gameOver ? null : swipeRight,
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            if (_gameOver)
              Text(
                'Game Over',
                style: TextStyle(fontSize: 24),
              ),
          ],
        ),
      ),
    );
  }
}

class Tile {
  int? value;

  Tile({required this.value});

  bool operator ==(other) {
    return other is Tile && value == other.value;
  }

  @override
  int get hashCode => value.hashCode;
}

class Board {
  late List<List<Tile>> _grid;
  late int _size;

  List<List<Tile>> get grid => _grid;

  Board({required int size}) {
    _size = size;
    _grid = List.generate(
      size,
      (i) => List.generate(
        size,
        (j) => Tile(value: null),
      ),
    );
  }

  void addTile() {
    List<Tile> emptyTiles = [];

    for (int i = 0; i < _size; i++) {
      for (int j = 0; j < _size; j++) {
        if (_grid[i][j].value == null) {
          emptyTiles.add(_grid[i][j]);
        }
      }
    }

    if (emptyTiles.isEmpty) {
      return;
    }

    Tile tile = emptyTiles[Random().nextInt(emptyTiles.length)];
    tile.value = Random().nextBool() ? 2 : 4;
  }

  bool swipeLeft() {
    bool moved = false;

    for (int i = 0; i < _size; i++) {
      List<Tile> row = _grid[i];

      int j = 0;
      while (j < _size - 1) {
        if (row[j].value == null) {
          j++;
          continue;
        }

        int k = j + 1;
        while (k < _size && row[k].value == null) {
          k++;
        }

        if (k == _size) {
          break;
        }

        if (row[j].value == row[k].value) {
          row[j].value = row[j].value! * 2;
          row[k].value = null;
          moved = true;
        }

        j = k;
      }

      List<Tile> newRow = [];
      for (int j = 0; j < _size; j++) {
        if (row[j].value != null) {
          newRow.add(Tile(value: row[j].value));
        }
      }

      while (newRow.length < _size) {
        newRow.add(Tile(value: null));
      }

      if (newRow != row) {
        moved = true;
      }

      _grid[i] = newRow;
    }

    return moved;
  }

  bool swipeRight() {
    bool moved = false;

    for (int i = 0; i < _size; i++) {
      List<Tile> row = _grid[i];

      int j = _size - 1;
      while (j > 0) {
        if (row[j].value == null) {
          j--;
          continue;
        }

        int k = j - 1;
        while (k >= 0 && row[k].value == null) {
          k--;
        }

        if (k < 0) {
          break;
        }

        if (row[j].value == row[k].value) {
          row[j].value = row[j].value! * 2;
          row[k].value = null;
          moved = true;
        }

        j = k;
      }

      List<Tile> newRow = [];
      for (int j = 0; j < _size; j++) {
        if (row[j].value != null) {
          newRow.add(Tile(value: row[j].value));
        }
      }

      while (newRow.length < _size) {
        newRow.insert(0, Tile(value: null));
      }

      if (newRow != row) {
        moved = true;
      }

      _grid[i] = newRow;
    }

    return moved;
  }

  bool swipeUp() {
    bool moved = false;

    for (int j = 0; j < _size; j++) {
      List<Tile> col = _grid.map((row) => row[j]).toList();

      int i = 0;
      while (i < _size - 1) {
        if (col[i].value == null) {
          i++;
          continue;
        }

        int k = i + 1;
        while (k < _size && col[k].value == null) {
          k++;
        }

        if (k == _size) {
          break;
        }

        if (col[i].value == col[k].value) {
          col[i].value = col[i].value! * 2;
          col[k].value = null;
          moved = true;
        }

        i = k;
      }

      List<Tile> newCol = [];
      for (int i = 0; i < _size; i++) {
        if (col[i].value != null) {
          newCol.add(Tile(value: col[i].value));
        }
      }

      while (newCol.length < _size) {
        newCol.add(Tile(value: null));
      }

      List<List<Tile>> newGrid = List.generate(
        _size,
        (i) => List.generate(
          _size,
          (j) => _grid[j][i],
        ),
      );

      if (newCol != col) {
        moved = true;
      }

      newGrid[j] = newCol;

      _grid = List.generate(
        _size,
        (i) => List.generate(
          _size,
          (j) => newGrid[j][i],
        ),
      );
    }

    return moved;
  }

  bool swipeDown() {
    bool moved = false;

    for (int j = 0; j < _size; j++) {
      List<Tile> col = _grid.map((row) => row[j]).toList();

      int i = _size - 1;
      while (i > 0) {
        if (col[i].value == null) {
          i--;
          continue;
        }

        int k = i - 1;
        while (k >= 0 && col[k].value == null) {
          k--;
        }

        if (k < 0) {
          break;
        }

        if (col[i].value == col[k].value) {
          col[i].value = col[i].value! * 2;
          col[k].value = null;
          moved = true;
        }

        i = k;
      }

      List<Tile> newCol = [];
      for (int i = 0; i < _size; i++) {
        if (col[i].value != null) {
          newCol.add(Tile(value: col[i].value));
        }
      }

      while (newCol.length < _size) {
        newCol.insert(0, Tile(value: null));
      }

      List<List<Tile>> newGrid = List.generate(
        _size,
        (i) => List.generate(
          _size,
          (j) => _grid[j][i],
        ),
      );

      if (newCol != col) {
        moved = true;
      }

      newGrid[j] = newCol;

      _grid = List.generate(
        _size,
        (i) => List.generate(
          _size,
          (j) => newGrid[j][i],
        ),
      );
    }

    return moved;
  }
}

// void main() {
//   Board board = Board(size: 4);

//   board.addTile();
//   board.addTile();

//   while (true) {
//     print(board.grid);

//     String input = stdin.readLineSync() ?? '';

//     bool moved = false;

//     if (input == 'a') {
//       moved = board.swipeLeft();
//     } else if (input == 'd') {
//       moved = board.swipeRight();
//     } else if (input == 'w') {
//       moved = board.swipeUp();
//     } else if (input == 's') {
//       moved = board.swipeDown();
//     }

//     if (moved) {
//       board.addTile();
//     }
//   }
// }

Map<int, Color> _tileColors = {
  2: Colors.grey[300]!,
  4: Colors.grey[400]!,
  8: Colors.orange[400]!,
  16: Colors.orange[600]!,
  32: Colors.deepOrange[400]!,
  64: Colors.deepOrange[600]!,
  128: Colors.red[400]!,
  256: Colors.red[600]!,
  512: Colors.purple[400]!,
  1024: Colors.purple[600]!,
  2048: Colors.blue[400]!,
  4096: Colors.blue[600]!,
};
