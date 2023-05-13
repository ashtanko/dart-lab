class Node {
  Node({
    required this.data,
    this.next,
    this.prev,
  });

  final int data;
  Node? next;
  Node? prev;
}

abstract class DoublyLinkedList {
  void insertAfter();

  void insertBefore();

  void insertBeginning();

  void insertEnd();

  void remove();
}
