import 'dart:collection';
import 'dart:io';
import 'dart:math';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
    List inputs;
    List<int> nodes = [];
    List<List<int>> edges = [];
    inputs = readLineSync().split(' ');
    int N = int.parse(inputs[0]); // the total number of nodes in the level, including the gateways
    int L = int.parse(inputs[1]); // the number of links
    int E = int.parse(inputs[2]); // the number of exit gateways

    for (int i = 0; i < N; i++) {
      nodes.add(i);
    }

    Graph graph = Graph(nodes);

    for (int i = 0; i < L; i++) {
        inputs = readLineSync().split(' ');
        int N1 = int.parse(inputs[0]); // N1 and N2 defines a link between these nodes
        int N2 = int.parse(inputs[1]);
        edges.add([N1, N2]);
        //graph.addEdges(N1, N2);
    }

    for (int j = 0; j < N; j++) {
      int start = edges[j][0];
      int end = edges[j][1];
      graph.addEdges(start, end);
    }

    print(graph.graph);

    for (int i = 0; i < E; i++) {
        int EI = int.parse(readLineSync()); // the index of a gateway node
    }

    // game loop
    while (true) {
        int SI = int.parse(readLineSync()); // The index of the node on which the Bobnet agent is positioned this turn

        // Example: 0 1 are the indices of the nodes you wish to sever the link between
        print('0 1');
    }
}

class Graph {
  /// Adjacency List representation using dynamic list and HashMap
  HashMap graph = new HashMap<int, List<dynamic>>();
  List<int> nodes;

  void makeGraph() {
    /// initialise all nodes with empty lists.
    /// each node will have a list as value which stores
    /// the nodes to which it is connected to
    for (int i = 0; i < this.nodes.length; i++) {
      this.graph[nodes[i]] = [];
    }
  }

  Graph(this.nodes) {
    this.makeGraph();
  }

  int get numberOfNodesInGraph {
    return this.nodes.length;
  }

  HashMap get graphDataStructure {
    return this.graph;
  }

  void addNodes(int newNode) {
    this.nodes.add(newNode);
    this.graph[newNode] = [];
  }

  void addEdges(int start, int end) {
    this.graph[start].add(end);
  }
}

List<int> breadthFirstSearch(Graph graph, int numberOfNodes, int startNode) {
  Queue queue = new Queue<int>();
  List<int> answer = [];
  queue.add(startNode);
  while (queue.isNotEmpty) {
    int node = queue.removeFirst();
    answer.add(node);
    for (int child in graph.graph[node]) {
      queue.add(child);
    }
  }
  return answer;
}
