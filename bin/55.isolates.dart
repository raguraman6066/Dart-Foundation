//1.what are isolates.
//dart uses isolates for concurrency or parallel execution.
//dart dont have multithread.
//dart handle multithread concepts using isolates.
//each isolate has own memory heap.
//run independently of other isolates.
//communicates via message passing.
//2. why not thread.
//dart is single threaded by default, shared memory concurrency is error prone.
//isolates avoid race conditions and deadlocks.
//safe for parallel execution.
//3.how isolates work:
//each isolate runs on separate thread.
//communication is done through ports: 1.send port 2.receive port.
//no shared memory.
//4.use cases= heave computations, parsing large files.(json), background processing(uploading and downloading files or data), keeping ui smooth in flutter app(no freeze).
import 'dart:isolate';
import 'dart:math';

void main(List<String> args) async {
  final numberList = List.generate(100000, (_) => Random().nextInt(100000));
  final sortedNumbers = await Isolate.run(() {
    numberList.sort();
    return numberList;
  });
  print("sorted number ${sortedNumbers.take(10).toList()}");
}
