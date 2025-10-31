.class final Landroidx/window/core/FailedSpecification;
.super Landroidx/window/core/SpecificationComputer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/FailedSpecification$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/window/core/SpecificationComputer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final exception:Landroidx/window/core/WindowStrictModeException;

.field private final logger:Landroidx/window/core/Logger;

.field private final message:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final verificationMode:Landroidx/window/core/SpecificationComputer$VerificationMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/Logger;Landroidx/window/core/SpecificationComputer$VerificationMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/window/core/Logger;",
            "Landroidx/window/core/SpecificationComputer$VerificationMode;",
            ")V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    iput-object p1, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/window/core/FailedSpecification;->tag:Ljava/lang/String;

    iput-object p3, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    iput-object p4, p0, Landroidx/window/core/FailedSpecification;->logger:Landroidx/window/core/Logger;

    iput-object p5, p0, Landroidx/window/core/FailedSpecification;->verificationMode:Landroidx/window/core/SpecificationComputer$VerificationMode;

    new-instance p2, Landroidx/window/core/WindowStrictModeException;

    invoke-virtual {p0, p1, p3}, Landroidx/window/core/SpecificationComputer;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/window/core/WindowStrictModeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string p3, "stackTrace"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/StackTraceElement;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    iput-object p2, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compute()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->verificationMode:Landroidx/window/core/SpecificationComputer$VerificationMode;

    sget-object v1, Landroidx/window/core/FailedSpecification$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->logger:Landroidx/window/core/Logger;

    iget-object v1, p0, Landroidx/window/core/FailedSpecification;->tag:Ljava/lang/String;

    iget-object v2, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroidx/window/core/SpecificationComputer;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/window/core/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    throw v0
.end method

.method public require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/window/core/SpecificationComputer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "condition"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
