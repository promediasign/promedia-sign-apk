.class public Lorg/apache/mina/filter/keepalive/KeepAliveFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# instance fields
.field private final IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private final WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

.field private volatile forwardEvent:Z

.field private final interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

.field private final messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

.field private volatile requestInterval:I

.field private volatile requestTimeout:I

.field private volatile requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 6

    .line 2
    sget-object v3, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6

    .line 3
    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "waitingForResponse"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ignoreReaderIdleOnce"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    iput-object p2, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    iput-object p3, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    invoke-virtual {p0, p4}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestInterval(I)V

    invoke-virtual {p0, p5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestTimeout(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "policy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "interestedIdleStatus"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "messageFactory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6

    .line 5
    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    return-void
.end method

.method private handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method private isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private markStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setWriterIdleTime(I)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getInterestedIdleStatus()Lorg/apache/mina/core/session/IdleStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    return-object v0
.end method

.method public getMessageFactory()Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    return-object v0
.end method

.method public getRequestInterval()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    return v0
.end method

.method public getRequestTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    return v0
.end method

.method public getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    return-object v0
.end method

.method public isForwardEvent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :cond_2
    return-void

    :goto_1
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t add the same filter instance more than once. Create another instance and add it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getRequest(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->markStatus(Lorg/apache/mina/core/session/IoSession;)V

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    if-eqz v0, :cond_4

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    :cond_4
    return-void
.end method

.method public setForwardEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    return-void
.end method

.method public setRequestInterval(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "keepAliveRequestInterval must be a positive integer: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
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
.end method

.method public setRequestTimeout(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "keepAliveRequestTimeout must be a positive integer: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
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
.end method

.method public setRequestTimeoutHandler(Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeoutHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
