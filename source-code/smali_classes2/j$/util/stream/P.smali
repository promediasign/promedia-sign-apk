.class final Lj$/util/stream/p;
.super Lj$/util/stream/m2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;Lj$/util/stream/q2;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/p;->b:I

    iput-object p1, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/m2;-><init>(Lj$/util/stream/q2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/q2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/p;->b:I

    invoke-direct {p0, p1}, Lj$/util/stream/m2;-><init>(Lj$/util/stream/q2;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj$/util/stream/p;->b:I

    packed-switch v0, :pswitch_data_0

    .line 0
    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/A;

    iget-object v0, v0, Lj$/util/stream/A;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToDoubleFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/q2;->accept(D)V

    return-void

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/j0;

    iget-object v0, v0, Lj$/util/stream/j0;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToLongFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/q2;->accept(J)V

    return-void

    .line 0
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/Y;

    iget-object v0, v0, Lj$/util/stream/Y;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Lj$/util/stream/q2;->accept(I)V

    return-void

    .line 0
    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/f2;

    iget-object v0, v0, Lj$/util/stream/f2;->n:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/v;

    iget-object v0, v0, Lj$/util/stream/v;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 0
    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/v;

    iget-object v0, v0, Lj$/util/stream/v;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 0
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 1

    iget v0, p0, Lj$/util/stream/p;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/m2;->k()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    .line 0
    iput-object v0, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    invoke-interface {v0}, Lj$/util/stream/q2;->k()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public l(J)V
    .locals 2

    iget v0, p0, Lj$/util/stream/p;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/m2;->l(J)V

    return-void

    .line 0
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/q2;->l(J)V

    return-void

    .line 0
    :pswitch_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lj$/util/stream/p;->c:Ljava/lang/Object;

    iget-object p1, p0, Lj$/util/stream/m2;->a:Lj$/util/stream/q2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/q2;->l(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
