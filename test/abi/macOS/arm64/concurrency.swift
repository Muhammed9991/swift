// RUN: %empty-directory(%t)
// RUN: %llvm-nm -g --defined-only -f just-symbols %stdlib_dir/arm64/libswift_Concurrency.dylib > %t/symbols
// RUN: %abi-symbol-checker %s %t/symbols
// RUN: diff -u %S/../../Inputs/macOS/arm64/concurrency/baseline %t/symbols

// REQUIRES: swift_stdlib_no_asserts
// REQUIRES: STDLIB_VARIANT=macosx-arm64

// *** DO NOT DISABLE OR XFAIL THIS TEST. *** (See comment below.)

// Welcome, Build Wrangler!
//
// This file lists APIs that have recently changed in a way that potentially
// indicates an ABI- or source-breaking problem.
//
// A failure in this test indicates that there is a potential breaking change in
// the Standard Library. If you observe a failure outside of a PR test, please
// reach out to the Standard Library team directly to make sure this gets
// resolved quickly! If your own PR fails in this test, you probably have an
// ABI- or source-breaking change in your commits. Please go and fix it.
//
// Please DO NOT DISABLE THIS TEST. In addition to ignoring the current set of
// ABI breaks, XFAILing this test also silences any future ABI breaks that may
// land on this branch, which simply generates extra work for the next person
// that picks up the mess.
//
// Instead of disabling this test, you'll need to extend the list of expected
// changes at the bottom. (You'll also need to do this if your own PR triggers
// false positives, or if you have special permission to break things.) You can
// find a diff of what needs to be added in the output of the failed test run.
// The order of lines doesn't matter, and you can also include comments to refer
// to any bugs you filed.
//
// Thank you for your help ensuring the stdlib remains compatible with its past!
//                                            -- Your friendly stdlib engineers

// _Concurrency Symbols

// associated type descriptor for Swift.AsyncIteratorProtocol.Failure
Added: _$s7FailureScITl

// associated type descriptor for Swift.AsyncSequence.Failure
Added: _$s7FailureSciTl

//  dispatch thunk of Swift.AsyncIteratorProtocol.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj

// async function pointer to dispatch thunk of Swift.AsyncIteratorProtocol.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu

// method descriptor for Swift.AsyncIteratorProtocol.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTq

// associated conformance descriptor for Swift.AsyncIteratorProtocol.Swift.AsyncIteratorProtocol.Failure: Swift.Error
Added: _$sScI7FailureScI_s5ErrorTn

// (extension in Swift):Swift.AsyncIteratorProtocol.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to (extension in Swift):Swift.AsyncIteratorProtocol.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.AsyncStream.Iterator.next(isolation: isolated Swift.Actor?) async -> A?
Added: _$sScS8IteratorV4next9isolationxSgScA_pSgYi_tYaF

// async function pointer to Swift.AsyncStream.Iterator.next(isolation: isolated Swift.Actor?) async -> A?
Added: _$sScS8IteratorV4next9isolationxSgScA_pSgYi_tYaFTu

// Swift.ThrowingTaskGroup.Iterator.next(isolation: isolated Swift.Actor?) async throws(B) -> A?
Added: _$sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF

// async function pointer to Swift.ThrowingTaskGroup.Iterator.next(isolation: isolated Swift.Actor?) async throws(B) -> A?
Added: _$sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu

// dispatch thunk of Swift.TaskExecutor.asUnownedTaskExecutor() -> Swift.UnownedTaskExecutor
Added: _$sSch21asUnownedTaskExecutors0bcD0VyFTj

// method descriptor for Swift.TaskExecutor.asUnownedTaskExecutor() -> Swift.UnownedTaskExecutor
Added: _$sSch21asUnownedTaskExecutors0bcD0VyFTq

// dispatch thunk of Swift.TaskExecutor.enqueue(Swift.UnownedJob) -> ()
Added: _$sSch7enqueueyyScJFTj

// method descriptor for Swift.TaskExecutor.enqueue(Swift.UnownedJob) -> ()
Added: _$sSch7enqueueyyScJFTq

// dispatch thunk of Swift.TaskExecutor.enqueue(__owned Swift.ExecutorJob) -> ()
Added: _$sSch7enqueueyys11ExecutorJobVnFTj

// method descriptor for Swift.TaskExecutor.enqueue(__owned Swift.ExecutorJob) -> ()
Added: _$sSch7enqueueyys11ExecutorJobVnFTq

// dispatch thunk of Swift.TaskExecutor.enqueue(__owned Swift.Job) -> ()
Added: _$sSch7enqueueyys3JobVnFTj

// method descriptor for Swift.TaskExecutor.enqueue(__owned Swift.Job) -> ()
Added: _$sSch7enqueueyys3JobVnFTq

// protocol descriptor for Swift.TaskExecutor
Added: _$sSchMp

// base conformance descriptor for Swift.TaskExecutor: Swift.Executor
Added: _$sSchScFTb

// protocol requirements base descriptor for Swift.TaskExecutor
Added: _$sSchTL

// (extension in Swift):Swift.TaskExecutor.asUnownedTaskExecutor() -> Swift.UnownedTaskExecutor
Added: _$sSchsE21asUnownedTaskExecutors0bcD0VyF

// Swift.AsyncThrowingStream.Iterator.next(isolation: isolated Swift.Actor?) async throws(B) -> A?
Added: _$sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF

// async function pointer to Swift.AsyncThrowingStream.Iterator.next(isolation: isolated Swift.Actor?) async throws(B) -> A?
Added: _$sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu

// Swift.UnsafeCurrentTask.unownedTaskExecutor.getter : Swift.UnownedTaskExecutor?
Added: _$sSct19unownedTaskExecutors07UnownedbC0VSgvg

// property descriptor for Swift.UnsafeCurrentTask.unownedTaskExecutor : Swift.UnownedTaskExecutor?
Added: _$sSct19unownedTaskExecutors07UnownedbC0VSgvpMV

// Swift.AsyncMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> B?
Added: _$ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> B?
Added: _$ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.AsyncFilterSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncFilterSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.AsyncPrefixSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncPrefixSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu

// static Swift.UnownedTaskExecutor.== infix(Swift.UnownedTaskExecutor, Swift.UnownedTaskExecutor) -> Swift.Bool
Added: _$ss19UnownedTaskExecutorV2eeoiySbAB_ABtFZ

// Swift.UnownedTaskExecutor.executor.modify : Builtin.Executor
Added: _$ss19UnownedTaskExecutorV8executorBevM

// Swift.UnownedTaskExecutor.executor.getter : Builtin.Executor
Added: _$ss19UnownedTaskExecutorV8executorBevg

// property descriptor for Swift.UnownedTaskExecutor.executor : Builtin.Executor
Added: _$ss19UnownedTaskExecutorV8executorBevpMV

// Swift.UnownedTaskExecutor.executor.setter : Builtin.Executor
Added: _$ss19UnownedTaskExecutorV8executorBevs

// Swift.UnownedTaskExecutor.init<A where A: Swift.TaskExecutor>(ordinary: __shared A) -> Swift.UnownedTaskExecutor
Added: _$ss19UnownedTaskExecutorV8ordinaryABxh_tcSchRzlufC

// Swift.UnownedTaskExecutor._executor.getter : Builtin.Executor
Added: _$ss19UnownedTaskExecutorV9_executorBevg

// property descriptor for Swift.UnownedTaskExecutor._executor : Builtin.Executor
Added: _$ss19UnownedTaskExecutorV9_executorBevpMV

// type metadata accessor for Swift.UnownedTaskExecutor
Added: _$ss19UnownedTaskExecutorVMa

// nominal type descriptor for Swift.UnownedTaskExecutor
Added: _$ss19UnownedTaskExecutorVMn

// type metadata for Swift.UnownedTaskExecutor
Added: _$ss19UnownedTaskExecutorVN

// protocol conformance descriptor for Swift.UnownedTaskExecutor : Swift.Equatable in Swift
Added: _$ss19UnownedTaskExecutorVSQsMc

// Swift.UnownedTaskExecutor.init(Builtin.Executor) -> Swift.UnownedTaskExecutor
Added: _$ss19UnownedTaskExecutorVyABBecfC

// Swift.AsyncFlatMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> B.Element?
Added: _$ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncFlatMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> B.Element?
Added: _$ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.withUnsafeCurrentTask<A>(body: (Swift.UnsafeCurrentTask?) async throws -> A) async throws -> A
Added: _$ss21withUnsafeCurrentTask4bodyxxSctSgYaKXE_tYaKlF

// async function pointer to Swift.withUnsafeCurrentTask<A>(body: (Swift.UnsafeCurrentTask?) async throws -> A) async throws -> A
Added: _$ss21withUnsafeCurrentTask4bodyxxSctSgYaKXE_tYaKlFTu

// Swift.AsyncDropFirstSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncDropFirstSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.AsyncDropWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncDropWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.AsyncCompactMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> B?
Added: _$ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncCompactMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> B?
Added: _$ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.AsyncPrefixWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF

// async function pointer to Swift.AsyncPrefixWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws(A.Failure) -> A.Element?
Added: _$ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu

// Swift.AsyncThrowingMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> B?
Added: _$ss24AsyncThrowingMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYaKF

// async function pointer to Swift.AsyncThrowingMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> B?
Added: _$ss24AsyncThrowingMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYaKFTu

// Swift.globalConcurrentExecutor.getter : Swift.TaskExecutor
Added: _$ss24globalConcurrentExecutorSch_pvg

// Swift._getGenericSerialExecutor() -> Builtin.Executor
Added: _$ss25_getGenericSerialExecutorBeyF

// Swift._getUndefinedTaskExecutor() -> Builtin.Executor
Added: _$ss25_getUndefinedTaskExecutorBeyF

// Swift.withTaskExecutorPreference<A where A: Swift.Sendable>(_: Swift.TaskExecutor?, operation: @Sendable () async throws -> A) async throws -> A
Added: _$ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlF

// async function pointer to Swift.withTaskExecutorPreference<A where A: Swift.Sendable>(_: Swift.TaskExecutor?, operation: @Sendable () async throws -> A) async throws -> A
Added: _$ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTu

// Swift.AsyncThrowingFilterSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> A.Element?
Added: _$ss27AsyncThrowingFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYaKF

// async function pointer to Swift.AsyncThrowingFilterSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> A.Element?
Added: _$ss27AsyncThrowingFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYaKFTu

// Swift.AsyncThrowingFlatMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> B.Element?
Added: _$ss28AsyncThrowingFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYaKF

// async function pointer to Swift.AsyncThrowingFlatMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> B.Element?
Added: _$ss28AsyncThrowingFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYaKFTu

// Swift.AsyncThrowingDropWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> A.Element?
Added: _$ss30AsyncThrowingDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYaKF

// async function pointer to Swift.AsyncThrowingDropWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> A.Element?
Added: _$ss30AsyncThrowingDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYaKFTu

// Swift.AsyncThrowingCompactMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> B?
Added: _$ss31AsyncThrowingCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYaKF

// async function pointer to Swift.AsyncThrowingCompactMapSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> B?
Added: _$ss31AsyncThrowingCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYaKFTu

// Swift.AsyncThrowingPrefixWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> A.Element?
Added: _$ss32AsyncThrowingPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYaKF

// async function pointer to Swift.AsyncThrowingPrefixWhileSequence.Iterator.next(isolation: isolated Swift.Actor?) async throws -> A.Element?
Added: _$ss32AsyncThrowingPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYaKFTu

Added: _swift_job_run_on_serial_and_task_executor
Added: _swift_job_run_on_task_executor
Added: _swift_task_getPreferredTaskExecutor
Added: _swift_task_popTaskExecutorPreference
Added: _swift_task_pushTaskExecutorPreference
