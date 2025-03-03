// RUN: %target-swift-frontend -emit-silgen -enable-experimental-feature NoncopyableGenerics -disable-availability-checking -module-name main %s | %FileCheck %s

struct NC: ~Copyable {}

struct RudeStruct<T: ~Copyable>: Copyable {
    let thing: Int
}

enum RudeEnum<T: ~Copyable>: Copyable {
  case holder(Int)
  case whatever
}

struct CondCopyableStruct<T: ~Copyable> {}

enum CondCopyableEnum<T: ~Copyable> {
  case some(T)
  case none
}

// MARK: ensure certain types are treated as trivial (no ownership in func signature).

// CHECK: sil hidden [ossa] @$s4main5checkyyAA10RudeStructVySiGF : $@convention(thin) (RudeStruct<Int>) -> () {
func check(_ t: RudeStruct<Int>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA10RudeStructVyAA2NCVGF : $@convention(thin) (RudeStruct<NC>) -> () {
func check(_ t: RudeStruct<NC>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA8RudeEnumOySiGF : $@convention(thin) (RudeEnum<Int>) -> () {
func check(_ t: RudeEnum<Int>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA8RudeEnumOyAA2NCVGF : $@convention(thin) (RudeEnum<NC>) -> () {
func check(_ t: RudeEnum<NC>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA18CondCopyableStructVySiGF : $@convention(thin) (CondCopyableStruct<Int>) -> () {
func check(_ t: CondCopyableStruct<Int>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA18CondCopyableStructVyAA2NCVGF : $@convention(thin) (@guaranteed CondCopyableStruct<NC>) -> () {
func check(_ t: borrowing CondCopyableStruct<NC>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA16CondCopyableEnumOySiGF : $@convention(thin) (CondCopyableEnum<Int>) -> () {
func check(_ t: CondCopyableEnum<Int>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA16CondCopyableEnumOyAA2NCVGF : $@convention(thin) (@guaranteed CondCopyableEnum<NC>) -> () {
func check(_ t: borrowing CondCopyableEnum<NC>) {}

// CHECK: sil hidden [ossa] @$s4main5checkyyAA16CondCopyableEnumOyxGlF : $@convention(thin) <T> (@in_guaranteed CondCopyableEnum<T>) -> () {
func check<T>(_ t: CondCopyableEnum<T>) {}

// CHECK: sil hidden [ossa] @$s4main13check_noClashyyAA16CondCopyableEnumOyxGlF : $@convention(thin) <U where U : ~Copyable> (@in_guaranteed CondCopyableEnum<U>) -> () {
func check_noClash<U: ~Copyable>(_ t: borrowing CondCopyableEnum<U>) {}

struct MyStruct<T: ~Copyable>: ~Copyable {
    var x: T
}

extension MyStruct: Copyable where T: Copyable {}

enum MyEnum<T: ~Copyable>: ~Copyable {
    case x(T)
    case knoll
}

extension MyEnum: Copyable where T: Copyable {}

enum Trivial {
    case a, b, c
}

// CHECK-LABEL: sil{{.*}} @{{.*}}13trivialStruct
func trivialStruct() -> Int {
    // CHECK: [[ALLOC:%.*]] = alloc_stack $MyStruct<Trivial>
    // CHECK-NOT: destroy_addr [[ALLOC]] :
    // CHECK: dealloc_stack [[ALLOC]] :
     return MemoryLayout.size(ofValue: MyStruct(x: Trivial.a))
}
// CHECK-LABEL: sil{{.*}} @{{.*}}11trivialEnum
func trivialEnum() -> Int {
    // CHECK: [[ALLOC:%.*]] = alloc_stack $MyEnum<Trivial>
    // CHECK-NOT: destroy_addr [[ALLOC]] :
    // CHECK: dealloc_stack [[ALLOC]] :
     return MemoryLayout.size(ofValue: MyEnum.x(Trivial.a))
}

struct MyAssortment {
    var a: MyStruct<Trivial>
    var b: MyEnum<Trivial>
}

// CHECK-LABEL: sil{{.*}} @{{.*}}4frob
func frob(x: MyAssortment) -> Int {
    // CHECK: [[ALLOC:%.*]] = alloc_stack $MyAssortment
    // CHECK-NOT: destroy_addr [[ALLOC]] :
    // CHECK: dealloc_stack [[ALLOC]] :
    return MemoryLayout.size(ofValue: x)
}

extension MyEnum: _BitwiseCopyable
    where T: Copyable & _BitwiseCopyable {}
