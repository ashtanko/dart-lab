import 'package:dart_lab/reverse_linked_list/singly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group('simple linked list tests', () {
    test('when list is empty', () {
      final SinglyLinkedList list = SinglyLinkedListImpl();
      expect(list.getAll(), <int>[]);
    });

    test('when list has only one element', () {
      final SinglyLinkedList list = SinglyLinkedListImpl()..addNode(1);
      expect(list.getAll(), <int>[1]);
    });

    test('when list has several elements', () {
      final SinglyLinkedList list = SinglyLinkedListImpl()
        ..addNode(1)
        ..addNode(2)
        ..addNode(3);
      expect(list.getAll(), <int>[1, 2, 3]);
    });

    test('when list reversed iterative', () {
      final SinglyLinkedList list = SinglyLinkedListImpl()
        ..addNode(1)
        ..addNode(2)
        ..addNode(3);

      expect(list.reversed(), <int>[3, 2, 1]);
    });

    test('when list recursive', () {
      final SinglyLinkedList list = SinglyLinkedListImpl()
        ..addNode(1)
        ..addNode(2)
        ..addNode(3);

      expect(list.reversedRec(), <int>[3, 2, 1]);
    });
  });
}
