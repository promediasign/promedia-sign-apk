.class public Lio/netty/channel/nio/NioEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    .line 3
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 3

    .line 4
    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object p5, v1, p4

    const/4 p4, 0x2

    aput-object v0, v1, p4

    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 2

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    aput-object p5, v0, p4

    const/4 p4, 0x2

    aput-object p6, v0, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 2

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    aput-object p5, v0, p4

    const/4 p4, 0x2

    aput-object p6, v0, p4

    const/4 p4, 0x3

    aput-object p7, v0, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1

    .line 7
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 3

    .line 8
    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    const/4 p3, 0x2

    aput-object v0, v1, p3

    invoke-direct {p0, p1, p2, v1}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 9
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1

    .line 10
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 3

    .line 11
    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    const/4 p3, 0x2

    aput-object v0, v1, p3

    invoke-direct {p0, p1, p2, v1}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 12
    const/4 v0, 0x0

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method


# virtual methods
.method public varargs newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;
    .locals 8

    .line 1
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lio/netty/channel/nio/NioEventLoop;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    move-object v4, v1

    check-cast v4, Ljava/nio/channels/spi/SelectorProvider;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Lio/netty/channel/SelectStrategyFactory;

    invoke-interface {v1}, Lio/netty/channel/SelectStrategyFactory;->newSelectStrategy()Lio/netty/channel/SelectStrategy;

    move-result-object v5

    const/4 v1, 0x2

    aget-object p2, p2, v1

    move-object v6, p2

    check-cast v6, Lio/netty/util/concurrent/RejectedExecutionHandler;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lio/netty/channel/nio/NioEventLoop;-><init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V

    return-object v0
.end method

.method public bridge synthetic newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/nio/NioEventLoopGroup;->newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object p1

    return-object p1
.end method

.method public rebuildSelectors()V
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    check-cast v1, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v1}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIoRatio(I)V
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    check-cast v1, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v1, p1}, Lio/netty/channel/nio/NioEventLoop;->setIoRatio(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
