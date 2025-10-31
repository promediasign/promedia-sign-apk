.class final Lio/netty/util/Recycler$WeakOrderQueue$Head;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler$WeakOrderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Head"
.end annotation


# instance fields
.field private final availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field link:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private reclaimSpace(I)V
    .locals 1

    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public static reserveSpaceForLink(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public newLink()Lio/netty/util/Recycler$WeakOrderQueue$Link;
    .locals 1

    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reserveSpaceForLink(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public reclaimAllSpaceAndUnlink()V
    .locals 4

    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-object v0, v3

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    invoke-direct {p0, v2}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimSpace(I)V

    :cond_1
    return-void
.end method

.method public relink(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V
    .locals 1

    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimSpace(I)V

    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    return-void
.end method
