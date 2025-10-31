.class public Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->setDefaults(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$reconnect$3(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method public static synthetic b(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$null$2(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$connect$1(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method private static connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->connectionComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->build()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;->bootstrap()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    invoke-virtual {v0, p3}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Ls0/a;

    invoke-direct {v1, p0, p1, p2, p3}, Ls0/a;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$null$0(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method private static synthetic lambda$connect$1(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V
    .locals 7

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_1

    new-instance v2, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v2, p4}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lg1/h;

    const/4 v6, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lg1/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 6

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method private static synthetic lambda$null$2(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isReconnect()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p4

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 1
    :cond_0
    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setCurrentTransportConfig(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object p0

    new-instance p4, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-direct {p4, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;-><init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V

    invoke-static {p1, p0, p4, p3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eq p5, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    sget-object p3, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object p4, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 5
    :cond_3
    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    if-eqz p2, :cond_6

    new-instance p0, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    if-nez p5, :cond_4

    const-string p1, "Reconnect was cancelled."

    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p5}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_3

    :cond_6
    :goto_1
    return-void
.end method

.method private static synthetic lambda$reconnect$3(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Ls0/b;

    invoke-direct {v1, p0, p1, p2, p3}, Ls0/b;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    invoke-static {v0, v1}, Lio/netty/handler/ssl/a;->u(Ljava/util/concurrent/CompletableFuture;Ls0/b;)V

    return-void
.end method

.method private static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-direct {v6, p6, p4, p3, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;-><init>(Lio/netty/channel/EventLoop;ILcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    invoke-static {p0, p1, p2, v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    invoke-interface {p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isReconnect()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance p1, LD/i;

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, v6

    move-object v2, p0

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, LD/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p3

    invoke-interface {p6, p1, p3, p4, p2}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isResubscribeIfSessionExpired()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setResubscribeIfSessionExpired(Z)V

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isRepublishIfSessionExpired()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setRepublishIfSessionExpired(Z)V

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->afterOnDisconnected()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    sget-object p3, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    if-eqz p5, :cond_1

    invoke-virtual {p5, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p3, 0x0

    :try_start_0
    throw p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p3

    sget-object p4, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "Unexpected exception thrown by disconnected listener."

    invoke-interface {p4, v0, p3}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 8

    .line 2
    invoke-virtual {p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getAttempts()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    :cond_0
    return-void
.end method

.method public static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/EventLoop;)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 8
    .line 9
    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;-><init>(Lio/reactivex/SingleObserver;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getDisposable()Lio/reactivex/disposables/Disposable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->acquireEventLoop()Lio/netty/channel/EventLoop;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {p1, v1, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eq v3, v1, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->alreadyConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 52
    .line 53
    .line 54
    return-void
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
.end method
