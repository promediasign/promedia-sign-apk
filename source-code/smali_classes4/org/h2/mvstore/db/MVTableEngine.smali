.class public Lorg/h2/mvstore/db/MVTableEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/api/TableEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;,
        Lorg/h2/mvstore/db/MVTableEngine$Store;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lorg/h2/engine/Database;)Lorg/h2/mvstore/db/MVTableEngine$Store;
    .locals 9

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getFileEncryptionKey()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getDatabasePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/mvstore/MVStore$Builder;

    invoke-direct {v2}, Lorg/h2/mvstore/MVStore$Builder;-><init>()V

    new-instance v3, Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-direct {v3}, Lorg/h2/mvstore/db/MVTableEngine$Store;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    const-string v5, ".mv.db"

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/mvstore/MVStoreTool;->compactCleanUp(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVStore$Builder;->fileName(Ljava/lang/String;)Lorg/h2/mvstore/MVStore$Builder;

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getPageSize()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/h2/mvstore/MVStore$Builder;->pageSplitSize(I)Lorg/h2/mvstore/MVStore$Builder;

    invoke-virtual {p0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore$Builder;->readOnly()Lorg/h2/mvstore/MVStore$Builder;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_4

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v5, v1, [C

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v1, :cond_3

    add-int v7, v4, v4

    aget-byte v8, v0, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v6

    aget-byte v6, v0, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lorg/h2/mvstore/MVStore$Builder;->encryptionKey([C)Lorg/h2/mvstore/MVStore$Builder;

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->compressData:Z

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore$Builder;->compress()Lorg/h2/mvstore/MVStore$Builder;

    const/high16 v0, 0x10000

    invoke-virtual {v2, v0}, Lorg/h2/mvstore/MVStore$Builder;->pageSplitSize(I)Lorg/h2/mvstore/MVStore$Builder;

    :cond_5
    new-instance v0, Lorg/h2/mvstore/db/MVTableEngine$1;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/db/MVTableEngine$1;-><init>(Lorg/h2/engine/Database;)V

    invoke-virtual {v2, v0}, Lorg/h2/mvstore/MVStore$Builder;->backgroundExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lorg/h2/mvstore/MVStore$Builder;

    :cond_6
    invoke-virtual {v3, p0, v2, v4}, Lorg/h2/mvstore/db/MVTableEngine$Store;->open(Lorg/h2/engine/Database;Lorg/h2/mvstore/MVStore$Builder;Z)V

    invoke-virtual {p0, v3}, Lorg/h2/engine/Database;->setMvStore(Lorg/h2/mvstore/db/MVTableEngine$Store;)V

    return-object v3
.end method


# virtual methods
.method public bridge synthetic createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTableEngine;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/TableBase;

    move-result-object p1

    return-object p1
.end method

.method public createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/TableBase;
    .locals 2

    .line 2
    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/db/MVTableEngine;->init(Lorg/h2/engine/Database;)Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    new-instance v1, Lorg/h2/mvstore/db/MVTable;

    invoke-direct {v1, p1, v0}, Lorg/h2/mvstore/db/MVTable;-><init>(Lorg/h2/command/ddl/CreateTableData;Lorg/h2/mvstore/db/MVTableEngine$Store;)V

    iget-object p1, p1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/db/MVTable;->init(Lorg/h2/engine/Session;)V

    iget-object p1, v0, Lorg/h2/mvstore/db/MVTableEngine$Store;->tableMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVTable;->getMapName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
