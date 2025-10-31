.class public Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;,
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;,
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field private final name2entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/mina/core/session/AbstractIoSession;

.field private final tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "connectFuture"

    const-class v2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    new-instance p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    new-instance v6, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "head"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    new-instance v8, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    new-instance v6, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;

    invoke-direct {v6, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    const-string v5, "tail"

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    iput-object v8, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {p1, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$1000(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public static synthetic access$1100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$1200(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public static synthetic access$1400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public static synthetic access$1500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public static synthetic access$700(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public static synthetic access$800(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public static synthetic access$900(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method private callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Unexpected exception from exceptionCaught handler."

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    invoke-interface {v0, p3}, Lorg/apache/mina/core/future/ConnectFuture;->setException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Other filter is using the same name \'"

    .line 13
    .line 14
    const-string v2, "\'"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
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

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Filter not found:"

    .line 15
    .line 16
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
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

.method private deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    .locals 7

    const-string v0, " in "

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    const/16 v2, 0x3a

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v4

    invoke-interface {v1, p0, v3, v4}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v4

    invoke-interface {v1, p0, v3, v4}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPostRemove(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPreRemove(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 9

    const-string v0, " in "

    new-instance v8, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    const/16 v1, 0x3a

    :try_start_0
    invoke-virtual {v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    invoke-interface {p3, p0, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {p1, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {p1, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {p3, p0, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPostAdd(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPreAdd(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-direct {p0, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireFilterClose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public fireMessageReceived(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    move-object v1, p1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBytes(JJ)V

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenMessages(Lorg/apache/mina/core/write/WriteRequest;J)V

    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->isEncoded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_0
    return-void
.end method

.method public fireSessionClosed()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->setClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public fireSessionCreated()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseIdleCount(Lorg/apache/mina/core/session/IdleStatus;J)V

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public fireSessionOpened()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :goto_0
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :goto_0
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNextFilter(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    return-object p1
.end method

.method public getNextFilter(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    return-object p1
.end method

.method public getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    return-object p1
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
