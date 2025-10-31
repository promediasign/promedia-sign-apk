.class public Lio/netty/buffer/PooledByteBufAllocator;
.super Lio/netty/buffer/AbstractByteBufAllocator;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocatorMetricProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

.field private static final DEFAULT_CACHE_TRIM_INTERVAL:I

.field private static final DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

.field private static final DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

.field private static final DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

.field static final DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

.field private static final DEFAULT_MAX_ORDER:I

.field private static final DEFAULT_NORMAL_CACHE_SIZE:I

.field private static final DEFAULT_NUM_DIRECT_ARENA:I

.field private static final DEFAULT_NUM_HEAP_ARENA:I

.field private static final DEFAULT_PAGE_SIZE:I

.field private static final DEFAULT_SMALL_CACHE_SIZE:I

.field private static final DEFAULT_TINY_CACHE_SIZE:I

.field private static final DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

.field private static final MAX_CHUNK_SIZE:I = 0x40000000

.field private static final MIN_PAGE_SIZE:I = 0x1000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final chunkSize:I

.field private final directArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final directArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "[B>;"
        }
    .end annotation
.end field

.field private final metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

.field private final normalCacheSize:I

.field private final smallCacheSize:I

.field private final threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

.field private final tinyCacheSize:I

.field private final trimTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-class v0, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "io.netty.allocator.pageSize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    const/16 v0, 0x2000

    :goto_0
    sput v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    const-string v4, "io.netty.allocator.maxOrder"

    const/16 v5, 0xb

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v4

    :try_start_1
    invoke-static {v0, v4}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_1
    sput v5, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lio/netty/util/NettyRuntime;->availableProcessors()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sget v6, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    shl-int v7, v6, v5

    int-to-long v8, v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    int-to-long v12, v7

    div-long/2addr v10, v12

    const-wide/16 v14, 0x2

    div-long/2addr v10, v14

    const-wide/16 v16, 0x3

    div-long v10, v10, v16

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v0, v10

    const-string v4, "io.netty.allocator.numHeapArenas"

    invoke-static {v4, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maxDirectMemory()J

    move-result-wide v10

    div-long/2addr v10, v12

    div-long/2addr v10, v14

    div-long v10, v10, v16

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    const-string v7, "io.netty.allocator.numDirectArenas"

    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    const-string v8, "io.netty.allocator.tinyCacheSize"

    const/16 v9, 0x200

    invoke-static {v8, v9}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    const-string v9, "io.netty.allocator.smallCacheSize"

    const/16 v10, 0x100

    invoke-static {v9, v10}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    const-string v10, "io.netty.allocator.normalCacheSize"

    const/16 v11, 0x40

    invoke-static {v10, v11}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    const-string v11, "io.netty.allocator.maxCachedBufferCapacity"

    const v12, 0x8000

    invoke-static {v11, v12}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v11

    sput v11, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    const-string v12, "io.netty.allocator.cacheTrimInterval"

    invoke-static {v12, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    const-string v12, "io.netty.allocation.cacheTrimIntervalMillis"

    invoke-static {v12}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v13

    const-string v4, "io.netty.allocator.cacheTrimIntervalMillis"

    if-eqz v13, :cond_0

    sget-object v13, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis"

    invoke-interface {v13, v14}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    invoke-static {v4}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const-wide/16 v13, 0x0

    invoke-static {v4, v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    :goto_2
    sput-wide v12, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    goto :goto_3

    :cond_1
    const-wide/16 v13, 0x0

    invoke-static {v12, v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    goto :goto_2

    :goto_3
    const-string v4, "io.netty.allocator.useCacheForAllThreads"

    const/4 v12, 0x1

    invoke-static {v4, v12}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    const-string v12, "io.netty.allocator.directMemoryCacheAlignment"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    const-string v12, "io.netty.allocator.maxCachedByteBuffersPerChunk"

    const/16 v13, 0x3ff

    invoke-static {v12, v13}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    sget-object v13, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v13}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "-Dio.netty.allocator.numHeapArenas: {}"

    invoke-interface {v13, v14, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "-Dio.netty.allocator.numDirectArenas: {}"

    invoke-interface {v13, v7, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.pageSize: {}"

    if-nez v3, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v0, v7, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "-Dio.netty.allocator.maxOrder: {}"

    if-nez v2, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    shl-int v0, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "-Dio.netty.allocator.chunkSize: {}"

    invoke-interface {v13, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "-Dio.netty.allocator.tinyCacheSize: {}"

    invoke-interface {v13, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "-Dio.netty.allocator.smallCacheSize: {}"

    invoke-interface {v13, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "-Dio.netty.allocator.normalCacheSize: {}"

    invoke-interface {v13, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "-Dio.netty.allocator.maxCachedBufferCapacity: {}"

    invoke-interface {v13, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.cacheTrimInterval: {}"

    invoke-interface {v13, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-wide v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.cacheTrimIntervalMillis: {}"

    invoke-interface {v13, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.useCacheForAllThreads: {}"

    invoke-interface {v13, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}"

    invoke-interface {v13, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    .line 2
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6

    .line 3
    sget v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v5, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v6, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    sget v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIII)V

    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    sget-boolean v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    sget v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIIZI)V

    return-void
.end method

.method public constructor <init>(ZIIIIIIIZ)V
    .locals 11

    .line 6
    sget v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIIZI)V

    return-void
.end method

.method public constructor <init>(ZIIIIIIIZI)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p10

    invoke-direct/range {p0 .. p1}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    new-instance v1, Lio/netty/buffer/PooledByteBufAllocator$1;

    invoke-direct {v1, v7}, Lio/netty/buffer/PooledByteBufAllocator$1;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    new-instance v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    move/from16 v2, p9

    invoke-direct {v1, v7, v2}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;-><init>(Lio/netty/buffer/PooledByteBufAllocator;Z)V

    iput-object v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    move/from16 v1, p6

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    move/from16 v1, p7

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    move/from16 v1, p8

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    invoke-static/range {p4 .. p5}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I

    move-result v1

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    const-string v1, "nHeapArena"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    const-string v1, "nDirectArena"

    invoke-static {v8, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    const-string v1, "directMemoryCacheAlignment"

    invoke-static {v9, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    if-lez v9, :cond_1

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->isDirectMemoryCacheAlignmentSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directMemoryCacheAlignment is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    neg-int v1, v9

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_6

    invoke-static/range {p4 .. p4}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-lez v0, :cond_3

    invoke-static/range {p2 .. p2}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    new-instance v13, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_1
    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    if-ge v14, v0, :cond_2

    new-instance v15, Lio/netty/buffer/PoolArena$HeapArena;

    iget v5, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v10

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolArena$HeapArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    aput-object v15, v0, v14

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object v11, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :goto_3
    if-lez v8, :cond_5

    invoke-static/range {p3 .. p3}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    new-instance v8, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    if-ge v12, v0, :cond_4

    new-instance v11, Lio/netty/buffer/PoolArena$DirectArena;

    iget v5, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v10

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolArena$DirectArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    aput-object v11, v0, v12

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_5
    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    goto :goto_6

    :cond_5
    iput-object v11, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :goto_6
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocatorMetric;

    invoke-direct {v0, v7}, Lio/netty/buffer/PooledByteBufAllocatorMetric;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directMemoryCacheAlignment: "

    const-string v2, " (expected: power of two)"

    .line 7
    invoke-static {v9, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic access$000(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    return-object p0
.end method

.method public static synthetic access$200(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    return p0
.end method

.method public static synthetic access$300(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return p0
.end method

.method public static synthetic access$400(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return p0
.end method

.method public static synthetic access$500()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    return v0
.end method

.method public static synthetic access$600()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    return v0
.end method

.method public static synthetic access$700()J
    .locals 2

    sget-wide v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    return-wide v0
.end method

.method public static synthetic access$800(Lio/netty/buffer/PooledByteBufAllocator;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static defaultMaxOrder()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    return v0
.end method

.method public static defaultNormalCacheSize()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    return v0
.end method

.method public static defaultNumDirectArena()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    return v0
.end method

.method public static defaultNumHeapArena()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    return v0
.end method

.method public static defaultPageSize()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    return v0
.end method

.method public static defaultPreferDirect()Z
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v0

    return v0
.end method

.method public static defaultSmallCacheSize()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    return v0
.end method

.method public static defaultTinyCacheSize()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    return v0
.end method

.method public static defaultUseCacheForAllThreads()Z
    .locals 1

    sget-boolean v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    return v0
.end method

.method public static isDirectMemoryCacheAlignmentSupported()Z
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    return v0
.end method

.method private static newArenaArray(I)[Lio/netty/buffer/PoolArena;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation

    new-array p0, p0, [Lio/netty/buffer/PoolArena;

    return-object p0
.end method

.method private static usedMemory([Lio/netty/buffer/PoolArena;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolArena<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v6, p0, v3

    invoke-virtual {v6}, Lio/netty/buffer/PoolArena;->numActiveBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v4
.end method

.method private static validateAndCalculateChunkSize(II)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0xe

    .line 3
    .line 4
    if-gt p1, v1, :cond_2

    .line 5
    .line 6
    move v2, p0

    .line 7
    move v1, p1

    .line 8
    :goto_0
    if-lez v1, :cond_1

    .line 9
    .line 10
    const/high16 v3, 0x20000000

    .line 11
    .line 12
    if-gt v2, v3, :cond_0

    .line 13
    .line 14
    shl-int/2addr v2, v0

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/high16 v2, 0x40000000    # 2.0f

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x3

    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object p0, v3, v4

    .line 39
    .line 40
    aput-object p1, v3, v0

    .line 41
    .line 42
    const/4 p0, 0x2

    .line 43
    aput-object v2, v3, p0

    .line 44
    .line 45
    const-string p0, "pageSize (%d) << maxOrder (%d) must not exceed %d"

    .line 46
    .line 47
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_1
    return v2

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "maxOrder: "

    .line 59
    .line 60
    const-string v1, " (expected: 0-14)"

    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
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
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
.end method

.method private static validateAndCalculatePageShifts(I)I
    .locals 3

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    const-string v1, "pageSize: "

    .line 4
    .line 5
    if-lt p0, v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v0, p0, -0x1

    .line 8
    .line 9
    and-int/2addr v0, p0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    rsub-int/lit8 p0, p0, 0x1f

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v2, " (expected: power of 2)"

    .line 22
    .line 23
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v2, " (expected: 4096)"

    .line 34
    .line 35
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
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


# virtual methods
.method public final chunkSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    return v0
.end method

.method public directArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    return-object v0
.end method

.method public dumpStats()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " heap arena(s):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    array-length v0, v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " direct arena(s):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_3

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public freeThreadLocalCache()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->remove()V

    return-void
.end method

.method public hasThreadLocalCache()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->isSet()Z

    move-result v0

    return v0
.end method

.method public heapArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    return-object v0
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic metric()Lio/netty/buffer/ByteBufAllocatorMetric;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator;->metric()Lio/netty/buffer/PooledByteBufAllocatorMetric;

    move-result-object v0

    return-object v0
.end method

.method public metric()Lio/netty/buffer/PooledByteBufAllocatorMetric;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

    return-object v0
.end method

.method public newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->newUnsafeDirectByteBuf(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/buffer/UnpooledDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lio/netty/buffer/UnpooledHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public normalCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return v0
.end method

.method public numDirectArenas()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numHeapArenas()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numThreadLocalCaches()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    iget-object v4, v4, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v3
.end method

.method public smallCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return v0
.end method

.method public final threadCache()Lio/netty/buffer/PoolThreadCache;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    return-object v0
.end method

.method public tinyCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    return v0
.end method

.method public trimCurrentThreadCache()Z
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->getIfExists()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache;->trim()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final usedDirectMemory()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final usedHeapMemory()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method
