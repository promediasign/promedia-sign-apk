.class public final synthetic Lj$/util/function/Function$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/c;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;I)V

    return-object v0
.end method

.method public static $default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/c;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;I)V

    return-object v0
.end method

.method public static identity()Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TT;TT;>;"
        }
    .end annotation

    new-instance v0, Lj$/time/g;

    const/4 v1, 0x3

    .line 0
    invoke-direct {v0, v1}, Lj$/time/g;-><init>(I)V

    return-object v0
.end method
