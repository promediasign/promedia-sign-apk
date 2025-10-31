.class public abstract Lcom/zaxxer/hikari/proxy/ConnectionProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zaxxer/hikari/proxy/IHikariConnectionProxy;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SQL_ERRORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

.field protected delegate:Ljava/sql/Connection;

.field private isAutoCommit:Z

.field private isAutoCommitDirty:Z

.field private isCatalogDirty:Z

.field private isCommitStateDirty:Z

.field private isConnectionStateDirty:Z

.field private isReadOnlyDirty:Z

.field private isTransactionIsolationDirty:Z

.field private lastAccess:J

.field private final leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

.field private final openStatements:Lcom/zaxxer/hikari/util/FastList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zaxxer/hikari/util/FastList<",
            "Ljava/sql/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private final parentPool:Lcom/zaxxer/hikari/pool/HikariPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->SQL_ERRORS:Ljava/util/Set;

    const-string v1, "57P01"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "57P02"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "57P03"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "01002"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "JZ0C0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "JZ0C1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/LeakTask;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iput-object p2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object p1, p2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iput-object p3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

    iput-boolean p4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    iget-wide p1, p2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    iput-wide p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    new-instance p1, Lcom/zaxxer/hikari/util/FastList;

    const-class p2, Ljava/sql/Statement;

    const/16 p3, 0x10

    invoke-direct {p1, p2, p3}, Lcom/zaxxer/hikari/util/FastList;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    return-void
.end method

.method private final closeOpenStatements()V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/util/FastList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v2, v1}, Lcom/zaxxer/hikari/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Statement;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {p0, v2}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/util/FastList;->clear()V

    :cond_2
    return-void
.end method

.method private final resetConnectionState()V
    .locals 9

    sget-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-boolean v3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isReadOnlyDirty:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommitDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isTransactionIsolationDirty:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCatalogDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    const/4 v1, 0x5

    aput-object v6, v7, v1

    const-string v1, "{} Resetting dirty on {} (readOnlyDirty={},autoCommitDirty={},isolationDirty={},catalogDirty={})"

    invoke-interface {v0, v1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isReadOnlyDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isReadOnly:Z

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setReadOnly(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommitDirty:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isTransactionIsolationDirty:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->transactionIsolation:I

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCatalogDirty:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v0, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v1, v0}, Ljava/sql/Connection;->setCatalog(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/sql/Statement;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/util/FastList;->add(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "08"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->SQL_ERRORS:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iput-boolean v0, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    sget-object v2, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object p1, v6, v0

    const-string v0, "Connection {} ({}) marked as broken because of SQLSTATE({}), ErrorCode({})."

    invoke-interface {v2, v0, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final close()V
    .locals 5

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    sget-object v1, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/LeakTask;->cancel()V

    :try_start_0
    invoke-direct {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->closeOpenStatements()V

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{} Performing rollback on {} due to dirty commit state."

    iget-object v3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->resetConnectionState()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    :cond_1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    :goto_1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-wide v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iput-wide v1, v0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v1, v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->releaseConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V

    goto :goto_4

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->aborted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    sget-object v0, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    iput-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    sget-object v1, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    iput-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-wide v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iput-wide v2, v1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v2, v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->releaseConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V

    throw v0

    :cond_3
    :goto_4
    return-void
.end method

.method public commit()V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->commit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    return-void
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public final getPoolBagEntry()Lcom/zaxxer/hikari/pool/PoolBagEntry;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    sget-object v1, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isWrapperFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    instance-of v1, v0, Ljava/sql/Wrapper;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->isWrapperFor(Ljava/lang/Class;)Z

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

.method public final markCommitStateDirty()V
    .locals 2

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    :goto_0
    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/CallableStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyCallableStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/CallableStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyCallableStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/CallableStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyCallableStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public rollback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    return-void
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->rollback(Ljava/sql/Savepoint;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    iput-boolean p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommitDirty:Z

    return-void
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setCatalog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object p1, p1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCatalogDirty:Z

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setReadOnly(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isReadOnly:Z

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isReadOnlyDirty:Z

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->transactionIsolation:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isTransactionIsolationDirty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s(%s) wrapping %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final untrackStatement(Ljava/sql/Statement;)V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/util/FastList;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public final unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    .line 13
    .line 14
    instance-of v1, v0, Ljava/sql/Wrapper;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    .line 24
    .line 25
    const-string v1, "Wrapped connection is not an instance of "

    .line 26
    .line 27
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
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
