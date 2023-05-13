class Node {
  Node({required this.data, this.next});

  final int data;
  Node? next;
}

abstract class SinglyLinkedList {
  void addNode(int data);

  List<int> getAll();

  List<int> reversed();

  List<int> reversedRec();
}

class SinglyLinkedListImpl extends SinglyLinkedList {
  Node? head;

  @override
  void addNode(int data) {
    final newNode = Node(data: data);
    if (head == null) {
      head = newNode;

      return;
    }
    var last = head;
    while (last?.next != null) {
      last = last?.next;
    }
    last?.next = newNode;
  }

  @override
  List<int> getAll() {
    var res = <int>[];
    var current = head;
    while (current != null) {
      res.add(current.data);
      current = current.next;
    }

    return res;
  }

  @override
  List<int> reversed() {
    var res = <int>[];
    Node? prev;
    var current = head;

    while (current != null) {
      var next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    current = prev;
    while (current != null) {
      res.add(current.data);
      current = current.next;
    }

    return res;
  }

  @override
  List<int> reversedRec() {
    var res = <int>[];
    var current = recursive(head);
    while (current != null) {
      res.add(current.data);
      current = current.next;
    }

    return res;
  }

  Node? recursive(Node? headNode) {
    if (headNode == null || headNode.next == null) {
      return headNode;
    }
    final node = recursive(headNode.next);
    headNode.next?.next = headNode;
    headNode.next = null;

    return node;
  }
}
