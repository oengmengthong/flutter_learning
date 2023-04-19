import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      
      useMaterial3: true,
    ),
    home: TodoListScreen(),
  ));
}

class Todo {
  final String id; // new field
  final String title;
  final String note;
  final DateTime dateTime;
  bool isDone;

  Todo({
    required this.id, // include id in constructor
    required this.title,
    required this.note,
    required this.dateTime,
    this.isDone = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id, // include id in map
      'title': title,
      'note': note,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'isDone': isDone,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'],
      title: map['title'],
      note: map['note'],
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
      isDone: map['isDone'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));
}

class TodoListManager {
  final SharedPreferences _prefs;

  TodoListManager(this._prefs);

  List<Todo> getTodos() {
    final String todosJson = _prefs.getString('todos') ?? '[]';
    final List<dynamic> todosList = json.decode(todosJson);
    final List<Todo> todos = todosList.map((e) => Todo.fromMap(e)).toList();
    return todos;
  }

  Future<void> addOrUpdate(Todo todo) async {
    final List<Todo> todos = getTodos();
    final index = todos.indexWhere((element) => element.id == todo.id);
    if (index >= 0) {
      todos[index] = todo;
    } else {
      todos.add(todo);
    }
    await _prefs.setString(
        'todos', json.encode(todos.map((e) => e.toMap()).toList()));
  }

  Future<void> delete(Todo todo) async {
    final List<Todo> todos = getTodos();
    todos.removeWhere((element) => element.id == todo.id);
    await _prefs.setString(
        'todos', json.encode(todos.map((e) => e.toMap()).toList()));
  }

  Future<void> deleteAll() async {
    await _prefs.clear();
  }

  List<Todo> search(String query) {
    final List<Todo> todos = getTodos();
    final List<Todo> result = todos
        .where((element) =>
            element.title.toLowerCase().contains(query.toLowerCase()) ||
            element.note.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return result;
  }
}

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({Key? key}) : super(key: key);
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  // final _titleController = TextEditingController();
  // final _noteController = TextEditingController();
  // final _dateTimeController = TextEditingController();
  final _searchController = TextEditingController();
  late final TodoListManager _todoListManager;
  List<Todo> _todos = [];

  @override
  void initState() {
    super.initState();
    // _todoListManager = TodoListManager();
    _loadTodos();
  }

  Future<void> _toggleTodoDone(Todo todo) async {
    todo.isDone = !todo.isDone;
    await _todoListManager.addOrUpdate(todo);
    setState(() {
      _todos = _todoListManager.getTodos();
    });
  }

  Future<void> _loadTodos() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _todoListManager = TodoListManager(prefs);
      _todos = _todoListManager.getTodos();
    });
  }

  Future<void> _deleteTodo(Todo todo) async {
    await _todoListManager.delete(todo);
    setState(() {
      _todos = _todoListManager.getTodos();
    });
  }

  Future<void> _deleteAllTodo() async {
    await _todoListManager.deleteAll();
    setState(() {
      _todos = _todoListManager.getTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: [
          IconButton(onPressed: _deleteAllTodo, icon: Icon(Icons.delete_forever)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _todos = _todoListManager.search(value);
                });
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(16),
              itemCount: _todos.length,
              itemBuilder: (BuildContext context, int index) {
                final todo = _todos[index];
                return Card(
                  child: ListTile(
                    title: Text(
                      todo.title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Checkbox(
                      value: todo.isDone,
                      onChanged: (value) => _toggleTodoDone(todo),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          todo.note,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.calendar_today),
                            Text(
                              DateFormat.yMd().add_jm().format(todo.dateTime),
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _deleteTodo(todo),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddTodoPage(
                          todo: todo,
                          onTodoAdded: (todo) async {
                            await _todoListManager.addOrUpdate(todo);
                            setState(() {
                              _todos = _todoListManager.getTodos();
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTodoPage(
                onTodoAdded: (todo) async {
                  await _todoListManager.addOrUpdate(todo);
                  setState(() {
                    _todos = _todoListManager.getTodos();
                  });
                },
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddTodoPage extends StatefulWidget {
  final void Function(Todo) onTodoAdded;
  final Todo? todo;

  const AddTodoPage({
    Key? key,
    required this.onTodoAdded,
    this.todo,
  }) : super(key: key);

  @override
  _AddTodoPageState createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _noteController = TextEditingController();
  final _dateTimeController = TextEditingController();
  final _uuid = Uuid();
  bool _isDone = false;

  void _saveTodo() {
    if (_formKey.currentState!.validate()) {
      final todo = Todo(
        id: widget.todo == null ? _uuid.v4() : widget.todo!.id,
        title: _titleController.text,
        note: _noteController.text,
        dateTime: DateFormat('M/d/yyyy h:mm a').parse(_dateTimeController.text),
      );
      widget.onTodoAdded(todo);
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.todo != null) {
      _titleController.text = widget.todo!.title;
      _noteController.text = widget.todo!.note;
      _dateTimeController.text =
          DateFormat.yMd().add_jm().format(widget.todo!.dateTime);
      _isDone = widget.todo!.isDone;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo == null ? 'Add Todo' : 'Edit Todo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Title cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _noteController,
                  decoration: const InputDecoration(
                    labelText: 'Note',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _dateTimeController,
                  decoration: const InputDecoration(
                    labelText: 'Date and Time',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Date and Time cannot be empty';
                    }
                    return null;
                  },
                  onTap: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2100),
                    );
                    if (selectedDate != null) {
                      TimeOfDay? selectedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (selectedTime != null) {
                        DateTime selectedDateTime = DateTime(
                          selectedDate.year,
                          selectedDate.month,
                          selectedDate.day,
                          selectedTime.hour,
                          selectedTime.minute,
                        );
                        _dateTimeController.text =
                            DateFormat.yMd().add_jm().format(selectedDateTime);
                      }
                    }
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _saveTodo,
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
