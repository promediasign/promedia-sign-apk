.class public Lch/qos/logback/classic/net/SocketReceiver;
.super Lch/qos/logback/classic/net/ReceiverBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;


# static fields
.field private static final DEFAULT_ACCEPT_CONNECTION_DELAY:I = 0x1388


# instance fields
.field private acceptConnectionTimeout:I

.field private address:Ljava/net/InetAddress;

.field private connectorTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private receiverId:Ljava/lang/String;

.field private reconnectionDelay:I

.field private remoteHost:Ljava/lang/String;

.field private volatile socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/classic/net/ReceiverBase;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->acceptConnectionTimeout:I

    return-void
.end method

.method private activateConnector(Lch/qos/logback/core/net/SocketConnector;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/net/SocketConnector;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    invoke-interface {v0}, Lch/qos/logback/core/Context;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lch/qos/logback/classic/net/SocketReceiver;->newConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;

    move-result-object p1

    invoke-interface {p1, p0}, Lch/qos/logback/core/net/SocketConnector;->setExceptionHandler(Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;)V

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SocketReceiver;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p2

    invoke-interface {p1, p2}, Lch/qos/logback/core/net/SocketConnector;->setSocketFactory(Ljavax/net/SocketFactory;)V

    return-object p1
.end method

.method private dispatchEvents(Lch/qos/logback/classic/LoggerContext;)V
    .locals 6

    const-string v0, "connection closed"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    iget v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->acceptConnectionTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v2, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;

    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "connection established"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-interface {v3}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v4

    invoke-interface {v3}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/qos/logback/classic/Logger;->isEnabledFor(Lch/qos/logback/classic/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Lch/qos/logback/classic/Logger;->callAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto/16 :goto_6

    :catch_2
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-object v2, v1

    goto :goto_4

    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "unknown event class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    goto :goto_5

    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "connection failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    :goto_4
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "end-of-stream detected"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_5
    return-void

    :goto_6
    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    throw p1
.end method

.method private waitForConnectorToReturnASocket()Ljava/net/Socket;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->connectorTask:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    iput-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->connectorTask:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public connectionFailed(Lch/qos/logback/core/net/SocketConnector;Ljava/lang/Exception;)V
    .locals 1

    instance-of p1, p2, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_0

    const-string p1, "connector interrupted"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    instance-of p1, p2, Ljava/net/ConnectException;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "connection refused"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "unspecified error"

    goto :goto_1

    :goto_2
    return-void
.end method

.method public getRunnableTask()Ljava/lang/Runnable;
    .locals 0

    return-object p0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public newConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;
    .locals 8

    new-instance v7, Lch/qos/logback/core/net/DefaultSocketConnector;

    int-to-long v3, p3

    int-to-long v5, p4

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/core/net/DefaultSocketConnector;-><init>(Ljava/net/InetAddress;IJJ)V

    return-object v7
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->address:Ljava/net/InetAddress;

    iget v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    iget v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4, v3}, Lch/qos/logback/classic/net/SocketReceiver;->createConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/net/SocketReceiver;->activateConnector(Lch/qos/logback/core/net/SocketConnector;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->connectorTask:Ljava/util/concurrent/Future;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lch/qos/logback/classic/net/SocketReceiver;->waitForConnectorToReturnASocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->dispatchEvents(Lch/qos/logback/classic/LoggerContext;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    const-string v0, "shutting down"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setAcceptConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->acceptConnectionTimeout:I

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    return-void
.end method

.method public setReconnectionDelay(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    return-void
.end method

.method public shouldStart()Z
    .locals 6

    .line 1
    iget v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "No port was configured for receiver. For more information, please visit http://logback.qos.ch/codes.html#receiver_no_port"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    const-string v3, "No host name or address was configured for receiver. For more information, please visit http://logback.qos.ch/codes.html#receiver_no_host"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    const/16 v3, 0x7530

    .line 31
    .line 32
    iput v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    .line 33
    .line 34
    :cond_2
    if-nez v0, :cond_3

    .line 35
    .line 36
    :try_start_0
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v4, "unknown host: "

    .line 48
    .line 49
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v4, "receiver "

    .line 71
    .line 72
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, ":"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    .line 86
    .line 87
    const-string v5, ": "

    .line 88
    .line 89
    invoke-static {v5, v4, v3}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iput-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    .line 94
    .line 95
    :cond_4
    if-nez v0, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const/4 v1, 0x0

    .line 99
    :goto_2
    return v1
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
.end method
