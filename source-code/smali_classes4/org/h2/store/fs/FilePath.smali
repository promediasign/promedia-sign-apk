.class public abstract Lorg/h2/store/fs/FilePath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultProvider:Lorg/h2/store/fs/FilePath;

.field private static providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation
.end field

.field private static tempRandom:Ljava/lang/String;

.field private static tempSequence:J


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-static {}, Lorg/h2/store/fs/FilePath;->registerDefaultProviders()V

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/h2/store/fs/FilePath;->defaultProvider:Lorg/h2/store/fs/FilePath;

    invoke-virtual {v0, p0}, Lorg/h2/store/fs/FilePath;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/h2/store/fs/FilePath;->providers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/store/fs/FilePath;

    if-nez v0, :cond_1

    sget-object v0, Lorg/h2/store/fs/FilePath;->defaultProvider:Lorg/h2/store/fs/FilePath;

    :cond_1
    invoke-virtual {v0, p0}, Lorg/h2/store/fs/FilePath;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getNextTempFileNamePart(Z)Ljava/lang/String;
    .locals 5

    const-class v0, Lorg/h2/store/fs/FilePath;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lorg/h2/store/fs/FilePath;->tempRandom:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7fffffff

    invoke-static {v1}, Lorg/h2/util/MathUtils;->randomInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/h2/store/fs/FilePath;->tempRandom:Ljava/lang/String;

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/h2/store/fs/FilePath;->tempRandom:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lorg/h2/store/fs/FilePath;->tempSequence:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lorg/h2/store/fs/FilePath;->tempSequence:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static register(Lorg/h2/store/fs/FilePath;)V
    .locals 2

    invoke-static {}, Lorg/h2/store/fs/FilePath;->registerDefaultProviders()V

    sget-object v0, Lorg/h2/store/fs/FilePath;->providers:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static registerDefaultProviders()V
    .locals 11

    sget-object v0, Lorg/h2/store/fs/FilePath;->providers:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/h2/store/fs/FilePath;->defaultProvider:Lorg/h2/store/fs/FilePath;

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v9, "org.h2.store.fs.FilePathZip"

    const-string v10, "org.h2.store.fs.FilePathRetryOnInterrupt"

    const-string v1, "org.h2.store.fs.FilePathDisk"

    const-string v2, "org.h2.store.fs.FilePathMem"

    const-string v3, "org.h2.store.fs.FilePathMemLZF"

    const-string v4, "org.h2.store.fs.FilePathNioMem"

    const-string v5, "org.h2.store.fs.FilePathNioMemLZF"

    const-string v6, "org.h2.store.fs.FilePathSplit"

    const-string v7, "org.h2.store.fs.FilePathNio"

    const-string v8, "org.h2.store.fs.FilePathNioMapped"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/store/fs/FilePath;

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/h2/store/fs/FilePath;->defaultProvider:Lorg/h2/store/fs/FilePath;

    if-nez v4, :cond_1

    sput-object v3, Lorg/h2/store/fs/FilePath;->defaultProvider:Lorg/h2/store/fs/FilePath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sput-object v0, Lorg/h2/store/fs/FilePath;->providers:Ljava/util/Map;

    :cond_3
    return-void
.end method

.method public static unregister(Lorg/h2/store/fs/FilePath;)V
    .locals 1

    invoke-static {}, Lorg/h2/store/fs/FilePath;->registerDefaultProviders()V

    sget-object v0, Lorg/h2/store/fs/FilePath;->providers:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePath;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract canWrite()Z
.end method

.method public abstract createDirectory()V
.end method

.method public abstract createFile()Z
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-static {p3}, Lorg/h2/store/fs/FilePath;->getNextTempFileNamePart(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/store/fs/FilePath;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/h2/store/fs/FilePath;->createFile()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "rw"

    invoke-virtual {p2, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-object p2

    :cond_1
    :goto_1
    const/4 p2, 0x1

    invoke-static {p2}, Lorg/h2/store/fs/FilePath;->getNextTempFileNamePart(Z)Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract delete()V
.end method

.method public abstract exists()Z
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract getParent()Lorg/h2/store/fs/FilePath;
.end method

.method public abstract getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract isAbsolute()Z
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract moveTo(Lorg/h2/store/fs/FilePath;Z)V
.end method

.method public abstract newDirectoryStream()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newInputStream()Ljava/io/InputStream;
.end method

.method public abstract newOutputStream(Z)Ljava/io/OutputStream;
.end method

.method public abstract open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
.end method

.method public abstract setReadOnly()Z
.end method

.method public abstract size()J
.end method

.method public abstract toRealPath()Lorg/h2/store/fs/FilePath;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public unwrap()Lorg/h2/store/fs/FilePath;
    .locals 0

    return-object p0
.end method
