; ModuleID = '2.c'
source_filename = "2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, i32* %a, align 4
  store i32 1, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %2 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %c, align 4
  %3 = load i32, i32* %b, align 4
  %cmp = icmp sgt i32 %3, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %d, align 4
  %5 = load i32, i32* %c, align 4
  %mul1 = mul nsw i32 %4, %5
  store i32 %mul1, i32* %f, align 4
  %6 = load i32, i32* %f, align 4
  %sub = sub nsw i32 %6, 3
  store i32 %sub, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %e, align 4
  %add2 = add nsw i32 %7, 1
  store i32 %add2, i32* %a, align 4
  %8 = load i32, i32* %d, align 4
  %div = sdiv i32 %8, 2
  store i32 %div, i32* %e, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %b, align 4
  store i32 %9, i32* %a, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load i32, i32* %a, align 4
  %cmp3 = icmp slt i32 %10, 9
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, i32* %a, align 4
  %add4 = add nsw i32 %11, 1
  store i32 %add4, i32* %a, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
