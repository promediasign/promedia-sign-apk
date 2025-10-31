.class public Lorg/h2/message/TraceWriterAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/message/TraceWriter;


# instance fields
.field private final logger:Lorg/slf4j/Logger;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "h2database"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result p1

    return p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->name:Ljava/lang/String;

    return-void
.end method

.method public write(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/message/TraceWriterAdapter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceWriterAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/message/TraceWriterAdapter;->name:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/message/TraceWriterAdapter;->name:Ljava/lang/String;

    const-string v3, ":"

    .line 2
    invoke-static {v0, v2, v3, p2, v1}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, v1, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
