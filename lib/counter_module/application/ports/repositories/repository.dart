abstract class IRepository<T> {
  Future<T> get();
  Future<void> save(T data);
}
