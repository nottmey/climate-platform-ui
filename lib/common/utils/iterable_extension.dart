extension IterableExtension<T> on Iterable<T> {
  Iterable<T> interpose(T Function() separatorBuilder) sync* {
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield separatorBuilder();
        yield iterator.current;
      }
    }
  }
}
