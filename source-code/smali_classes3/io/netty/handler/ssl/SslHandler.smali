.class public Lio/netty/handler/ssl/SslHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;,
        Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;,
        Lio/netty/handler/ssl/SslHandler$SslTasksRunner;,
        Lio/netty/handler/ssl/SslHandler$SslEngineType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static final MAX_PLAINTEXT_LENGTH:I = 0x4000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private closeNotify:Z

.field private volatile closeNotifyFlushTimeoutMillis:J

.field private volatile closeNotifyReadTimeoutMillis:J

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

.field private firedChannelRead:Z

.field private flushedBeforeHandshake:Z

.field private handshakePromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private handshakeStarted:Z

.field private volatile handshakeTimeoutMillis:J

.field private final jdkCompatibilityMode:Z

.field private needsFlush:Z

.field private outboundClosed:Z

.field private packetLength:I

.field private pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

.field private processTask:Z

.field private readDuringHandshake:Z

.field private sentFirstMessage:Z

.field private final singleBuffer:[Ljava/nio/ByteBuffer;

.field private final sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

.field private final startTls:Z

.field volatile wrapDataSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    const-string v0, "^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1

    .line 3
    sget-object v0, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    const/16 v0, 0x4000

    iput v0, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    const-string v0, "engine"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    const-string v0, "delegatedTaskExecutor"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->forEngine(Ljavax/net/ssl/SSLEngine;)Lio/netty/handler/ssl/SslHandler$SslEngineType;

    move-result-object p3

    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    invoke-virtual {p3, p1}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->jdkCompatibilityMode(Ljavax/net/ssl/SSLEngine;)Z

    move-result p1

    iput-boolean p1, p0, Lio/netty/handler/ssl/SslHandler;->jdkCompatibilityMode:Z

    iget-object p1, p3, Lio/netty/handler/ssl/SslHandler$SslEngineType;->cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->setCumulator(Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public static synthetic access$1100(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public static synthetic access$1202(Lio/netty/handler/ssl/SslHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    return p1
.end method

.method public static synthetic access$1300(Lio/netty/handler/ssl/SslHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->executeDelegatedTasks(Z)V

    return-void
.end method

.method public static synthetic access$1400(Lio/netty/handler/ssl/SslHandler;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    return-void
.end method

.method public static synthetic access$1500(Lio/netty/handler/ssl/SslHandler;)Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V

    return-void
.end method

.method public static synthetic access$1700(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public static synthetic access$1800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    invoke-static {p0}, Lio/netty/handler/ssl/SslHandler;->runAllDelegatedTasks(Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public static synthetic access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$2200(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public static synthetic access$2300(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$2400()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static synthetic access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslHandler;->addCloseListener(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public static synthetic access$2600(Lio/netty/handler/ssl/SslHandler;)J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    return-wide v0
.end method

.method public static synthetic access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object p0
.end method

.method public static synthetic access$2800(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->attemptCopyToCumulation(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$SslEngineType;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->toByteBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public static synthetic access$600(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailureTransportFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public static synthetic access$800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$900(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static addCloseListener(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    new-instance v0, Lio/netty/channel/ChannelPromiseNotifier;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Lio/netty/channel/ChannelPromise;

    aput-object p1, v2, v1

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelPromiseNotifier;-><init>(Z[Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iget-boolean v0, v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method private allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->allocateWrapBuffer(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method private applyHandshakeTimeout()V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    iget-wide v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    new-instance v4, Lio/netty/handler/ssl/SslHandler$5;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/netty/handler/ssl/SslHandler$5;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;J)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v1, v2, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ssl/SslHandler$6;

    invoke-direct {v2, p0, v1}, Lio/netty/handler/ssl/SslHandler$6;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    :cond_1
    :goto_0
    return-void
.end method

.method private static attemptCopyToCumulation(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z
    .locals 4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->isWritable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v1, p2, :cond_1

    :cond_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0, v3}, Lio/netty/buffer/ByteBuf;->ensureWritable(IZ)I

    move-result p2

    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->ensureWritableSuccess(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v3
.end method

.method private channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->discardSomeReadBytes()V

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private closeOutbound0(Lio/netty/channel/ChannelPromise;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v2, "{} flush() raised a masked exception."

    invoke-interface {p1, v2, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p3

    :try_start_0
    invoke-direct {p0, p1, p3}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    new-instance v3, Lio/netty/channel/ChannelPromiseNotifier;

    new-array v1, v1, [Lio/netty/channel/ChannelPromise;

    aput-object p2, v1, v0

    invoke-direct {v3, v0, v1}, Lio/netty/channel/ChannelPromiseNotifier;-><init>(Z[Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    new-instance p3, Lio/netty/handler/ssl/SslHandler$3;

    invoke-direct {p3, p0, p2}, Lio/netty/handler/ssl/SslHandler$3;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {p1, p3}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    if-nez v3, :cond_3

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    new-instance v4, Lio/netty/channel/ChannelPromiseNotifier;

    new-array v1, v1, [Lio/netty/channel/ChannelPromise;

    aput-object p2, v1, v0

    invoke-direct {v4, v0, v1}, Lio/netty/channel/ChannelPromiseNotifier;-><init>(Z[Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    new-instance p3, Lio/netty/handler/ssl/SslHandler$3;

    invoke-direct {p3, p0, p2}, Lio/netty/handler/ssl/SslHandler$3;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {p1, p3}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    :goto_2
    throw v2
.end method

.method private decodeJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    iget v0, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_3

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-static {p2, v1}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    if-le v1, v0, :cond_2

    iput v1, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    return-void

    :cond_2
    move v0, v1

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_4
    new-instance v0, Lio/netty/handler/ssl/NotSslRecordException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not an SSL/TLS record: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private decodeNonJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private executeDelegatedTasks(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;-><init>(Lio/netty/handler/ssl/SslHandler;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    throw p1
.end method

.method private finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    sget-object p2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    :goto_2
    if-eqz p4, :cond_3

    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    :cond_3
    if-eqz p5, :cond_4

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_4
    return-void
.end method

.method private flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, p2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->newPendingWritesNullException()Ljava/lang/IllegalStateException;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method private forceFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v0, p2}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "SSLException during trying to call SSLEngine.wrap(...) because of an previous SSLException, ignoring..."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    :goto_2
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    return-void

    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    throw v0
.end method

.method private handshake()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-direct {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    throw v1
.end method

.method private ignoreException(Ljava/lang/Throwable;)Z
    .locals 9

    const/4 v0, 0x1

    instance-of v1, p1, Ljavax/net/ssl/SSLException;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v1}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "io.netty."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    const-string v6, "read"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    sget-object v4, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5

    const-class v6, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_6

    const-string v6, "com.sun.nio.sctp.SctpChannel"

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    return v0

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_5
    :goto_1
    return v0

    :goto_2
    sget-object v6, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v6}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v2

    aput-object v5, v8, v0

    const/4 v5, 0x2

    aput-object v4, v8, v5

    const-string v4, "Unexpected exception while loading class {} classname {}"

    invoke-interface {v6, v4, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/2addr v3, v0

    goto :goto_0

    :cond_7
    return v2
.end method

.method private static inEventLoop(Ljava/util/concurrent/Executor;)Z
    .locals 1

    instance-of v0, p0, Lio/netty/util/concurrent/EventExecutor;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {p0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEncrypted(Lio/netty/buffer/ByteBuf;)Z
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer must have at least 5 readable bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static newPendingWritesNullException()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pendingUnencryptedWrites is null, handlerRemoved0 called?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyClosePromise(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/netty/util/concurrent/DefaultPromise;->trySuccess(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v0, Lio/netty/handler/ssl/SslCloseCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslCloseCompletionEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v1, Lio/netty/handler/ssl/SslCloseCompletionEvent;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/SslCloseCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :cond_1
    :goto_0
    return-void
.end method

.method private readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_1
    return-void
.end method

.method private releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lio/netty/util/concurrent/PromiseNotifier;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/netty/util/concurrent/Promise;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/PromiseNotifier;-><init>([Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->handshake()V

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->applyHandshakeTimeout()V

    :goto_0
    return-void
.end method

.method private static runAllDelegatedTasks(Ljavax/net/ssl/SSLEngine;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private runDelegatedTasks(Z)Z
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->inEventLoop(Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->executeDelegatedTasks(Z)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler;->runAllDelegatedTasks(Ljavax/net/ssl/SSLEngine;)V

    const/4 p1, 0x1

    return p1
.end method

.method private safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 6

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$7;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/netty/handler/ssl/SslHandler$7;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    :cond_1
    new-instance v0, Lio/netty/handler/ssl/SslHandler$8;

    invoke-direct {v0, p0, v1, p1, p3}, Lio/netty/handler/ssl/SslHandler$8;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method

.method private setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V
    .locals 3

    .line 2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    :try_start_1
    iget-object p3, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_0
    move-exception p3

    :try_start_2
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "possible truncation attack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "closing inbound before receiving peer\'s close_notify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "{} SSLEngine.closeInbound() raised an exception."

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p3, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p3, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p5, :cond_3

    :cond_2
    invoke-static {p1, p2, p4}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private setHandshakeFailureTransportFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "failure when writing TLS control frames"

    invoke-direct {v0, v1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {p2, v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    return-void

    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    throw p2
.end method

.method private setHandshakeSuccess()V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} HANDSHAKEN: {}"

    invoke-interface {v0, v3, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v1, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->readDuringHandshake:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->readDuringHandshake:Z

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_1
    return-void
.end method

.method private setHandshakeSuccessIfStillHandshaking()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startHandshakeProcessing()V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeStarted:Z

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->handshake()V

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->applyHandshakeTimeout()V

    :cond_1
    return-void
.end method

.method private static toByteBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p4

    invoke-direct {v7, v8, v0}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v9, 0x0

    move/from16 v11, p3

    move v13, v0

    move-object v12, v1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    const/4 v6, 0x1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_f

    iget-object v1, v7, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v4, v11

    move-object v10, v5

    move v5, v13

    const/4 v10, 0x1

    move-object v6, v12

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->unwrap(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v4

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v1

    add-int/2addr v11, v1

    sub-int/2addr v13, v1

    sget-object v5, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v10, :cond_a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v16, 0x1

    :goto_1
    sget-object v5, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v5, v5, v14

    if-eq v5, v10, :cond_6

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown handshake status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    invoke-direct {v7, v8, v10}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v13, :cond_7

    goto/16 :goto_6

    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v14, -0x1

    const/4 v15, 0x1

    goto :goto_0

    :cond_4
    if-nez v13, :cond_7

    goto/16 :goto_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    const/4 v15, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {v7, v10}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_7
    :goto_2
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v2, v5, :cond_9

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v3, v2, :cond_8

    if-nez v1, :cond_8

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_9
    :goto_3
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v1, :cond_10

    invoke-direct/range {p0 .. p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    iget-object v2, v7, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v1, :cond_b

    iput-boolean v10, v7, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    invoke-interface {v8, v12}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v2, :cond_c

    :try_start_2
    iget-object v2, v7, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_b
    :try_start_3
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :goto_4
    if-nez v1, :cond_e

    if-eqz v14, :cond_d

    goto :goto_5

    :cond_d
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two consecutive overflows but no content was consumed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SSLSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getApplicationBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maybe too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_5
    iget-object v3, v7, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-virtual {v3, v7, v2}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->calculatePendingData(Lio/netty/handler/ssl/SslHandler;I)I

    move-result v2

    invoke-direct {v7, v8, v2}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v14, v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    const/4 v10, 0x1

    :cond_10
    :goto_6
    :try_start_5
    iget-boolean v1, v7, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshake:Z

    if-eqz v1, :cond_11

    iget-object v1, v7, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_11

    iput-boolean v9, v7, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshake:Z

    goto :goto_7

    :cond_11
    if-eqz v15, :cond_12

    :goto_7
    invoke-direct {v7, v8, v10}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V

    :cond_12
    if-eqz v16, :cond_13

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_13
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-boolean v10, v7, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    invoke-interface {v8, v12}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_8

    :cond_14
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_15
    :goto_8
    sub-int/2addr v0, v13

    return v0

    :goto_9
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_16

    iput-boolean v10, v7, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    invoke-interface {v8, v12}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_a

    :cond_16
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_17
    :goto_a
    throw v0
.end method

.method private unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I

    return-void
.end method

.method private wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget-object v4, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iget-boolean v4, v4, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, p3, v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p1, v4, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_3

    :cond_1
    :goto_0
    :try_start_2
    instance-of p1, p3, Lio/netty/buffer/CompositeByteBuf;

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result p1

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v2, v3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, p1, v0

    move-object v2, p1

    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_2
    :try_start_3
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    invoke-virtual {p4, v3, v4}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v4

    invoke-virtual {p3, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p4, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    sget-object v4, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v4, v5, :cond_4

    iget-object p2, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    aput-object v1, p2, v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_3
    return-object v3

    :cond_4
    :try_start_4
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v3

    invoke-virtual {p4, v3}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_3
    iget-object p3, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    aput-object v1, p3, v0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_5
    throw p2
.end method

.method private wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 11

    .line 2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget v9, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v1, v7

    move-object v2, v1

    :goto_0
    :try_start_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    if-lez v9, :cond_0

    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v3, v0, v9, v2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->remove(Lio/netty/buffer/ByteBufAllocator;ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_1
    move-object v4, v2

    goto/16 :goto_9

    :cond_0
    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v3, v2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->removeFirst(Lio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-nez v3, :cond_1

    move-object v4, v2

    move-object v7, v3

    move-object v3, v1

    goto/16 :goto_8

    :cond_1
    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move-object v4, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v7, v3

    move-object v3, v1

    goto/16 :goto_9

    :goto_3
    :try_start_3
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-direct {p0, v0, v1, v3, v4}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v5, v6, :cond_3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "SSLEngine closed already"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v5, 0x0

    :try_start_5
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v1, p1, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    move v6, v8

    :goto_4
    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V

    return-void

    :catchall_2
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    :goto_5
    move-object v3, v4

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v7, v3

    goto :goto_5

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v5, v3, v2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->addFirst(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    move-object v5, v7

    goto :goto_6

    :cond_4
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v5, v2

    :goto_6
    :try_start_7
    sget-object v2, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8

    const/4 v0, 0x5

    if-ne v2, v0, :cond_5

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown handshake status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    :cond_7
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    :try_start_8
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v1, :cond_9

    move-object v3, v4

    move-object v10, v7

    goto :goto_7

    :cond_9
    move-object v10, v4

    move-object v3, v7

    :goto_7
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v5

    move v5, p2

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object v2, v7

    move-object v1, v10

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v4, v7

    move-object v3, v10

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v3, v4

    move-object v4, v7

    goto :goto_9

    :cond_a
    :try_start_a
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v1, :cond_b

    move-object v3, v4

    move-object v4, v5

    goto :goto_8

    :cond_b
    move-object v1, v4

    move-object v2, v5

    goto/16 :goto_0

    :cond_c
    move-object v3, v1

    move-object v4, v2

    :goto_8
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_d
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V

    return-void

    :catchall_7
    move-exception v0

    move-object v3, v7

    move-object v4, v3

    :goto_9
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_e
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V

    throw v0
.end method

.method private wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshake:Z

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    throw v0
.end method

.method private wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 9

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_f

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/16 v5, 0x800

    invoke-direct {p0, p1, v5, v3}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v6, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, v0, v5, v6, v2}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v6

    new-instance v7, Lio/netty/handler/ssl/SslHandler$2;

    invoke-direct {v7, p0, p1}, Lio/netty/handler/ssl/SslHandler$2;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v6, v7}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    if-eqz p2, :cond_2

    iput-boolean v3, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    :cond_2
    move-object v2, v1

    :cond_3
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v7, v3, :cond_c

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    const/4 v3, 0x4

    if-eq v7, v3, :cond_d

    const/4 v3, 0x5

    if-ne v7, v3, :cond_6

    if-eqz p2, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_4
    return v4

    :cond_5
    :try_start_1
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown handshake status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    if-nez p2, :cond_8

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_9
    return v3

    :cond_a
    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_b
    return v4

    :cond_c
    :try_start_3
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_2

    :cond_d
    :goto_1
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v3, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v5, :cond_0

    :cond_f
    :goto_2
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_10
    return v4

    :goto_3
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_11
    throw p1
.end method


# virtual methods
.method public applicationProtocol()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    instance-of v1, v0, Lio/netty/handler/ssl/ApplicationProtocolAccessor;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lio/netty/handler/ssl/ApplicationProtocolAccessor;

    invoke-interface {v0}, Lio/netty/handler/ssl/ApplicationProtocolAccessor;->getNegotiatedApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing()V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7

    new-instance v6, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v6}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    xor-int/lit8 v3, v0, 0x1

    iget-boolean v4, p0, Lio/netty/handler/ssl/SslHandler;->handshakeStarted:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    invoke-direct {p0, v6}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->closeOutbound()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    return-void
.end method

.method public closeOutbound()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/SslHandler$1;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p1
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean p3, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lio/netty/handler/ssl/SslHandler;->jdkCompatibilityMode:Z

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->decodeJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->decodeNonJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    :goto_0
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    return-void
.end method

.method public engine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->ignoreException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} Swallowing a harmless \'connection reset by peer / broken pipe\' error that occurred while writing close_notify in response to the peer\'s close_notify"

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/channel/Channel;->isActive()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :cond_2
    :goto_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->sentFirstMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->sentFirstMessage:Z

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->writeAndRemoveAll(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final getCloseNotifyFlushTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    return-wide v0
.end method

.method public final getCloseNotifyReadTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    return-wide v0
.end method

.method public getCloseNotifyTimeoutMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->getCloseNotifyFlushTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandshakeTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/Channel;I)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing()V

    :cond_0
    return-void
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Pending write on removal of SslHandler"

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    instance-of v0, p1, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_1

    check-cast p1, Lio/netty/util/ReferenceCounted;

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_1
    return-void
.end method

.method public handshakeFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->readDuringHandshake:Z

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public renegotiate()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslHandler;->renegotiate(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public renegotiate(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$4;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/SslHandler$4;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final setCloseNotifyFlushTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeoutMillis(J)V

    return-void
.end method

.method public final setCloseNotifyFlushTimeoutMillis(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeNotifyFlushTimeoutMillis: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " (expected: >= 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCloseNotifyReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyReadTimeoutMillis(J)V

    return-void
.end method

.method public final setCloseNotifyReadTimeoutMillis(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeNotifyReadTimeoutMillis: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " (expected: >= 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCloseNotifyTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeout(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public setCloseNotifyTimeoutMillis(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeoutMillis(J)V

    return-void
.end method

.method public setHandshakeTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeTimeoutMillis(J)V

    return-void
.end method

.method public setHandshakeTimeoutMillis(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handshakeTimeoutMillis: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " (expected: >= 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setWrapDataSize(I)V
    .locals 0

    iput p1, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    return-void
.end method

.method public sslCloseFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    instance-of p1, p2, Lio/netty/buffer/ByteBuf;

    if-nez p1, :cond_0

    new-instance p1, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lio/netty/buffer/ByteBuf;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p1, p2, v0}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-nez p1, :cond_1

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->newPendingWritesNullException()Ljava/lang/IllegalStateException;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, p2, p3}, Lio/netty/channel/AbstractCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    :goto_1
    return-void
.end method
