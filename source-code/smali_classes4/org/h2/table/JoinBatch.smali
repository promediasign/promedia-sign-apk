.class public final Lorg/h2/table/JoinBatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/table/JoinBatch$QueryRunnerUnion;,
        Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;,
        Lorg/h2/table/JoinBatch$QueryRunner;,
        Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;,
        Lorg/h2/table/JoinBatch$QueryRunnerBase;,
        Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;,
        Lorg/h2/table/JoinBatch$SingletonList;,
        Lorg/h2/table/JoinBatch$FakeLookupBatch;,
        Lorg/h2/table/JoinBatch$JoinRow;,
        Lorg/h2/table/JoinBatch$JoinFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY_CURSOR:Lorg/h2/index/Cursor;

.field static final EMPTY_FUTURE_CURSOR:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final additionalFilter:Lorg/h2/table/TableFilter;

.field batchedSubQuery:Z

.field private current:Lorg/h2/table/JoinBatch$JoinRow;

.field filters:[Lorg/h2/table/JoinBatch$JoinFilter;

.field private found:Z

.field private started:Z

.field top:Lorg/h2/table/JoinBatch$JoinFilter;

.field viewTopFutureCursor:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/h2/table/JoinBatch$1;

    invoke-direct {v0}, Lorg/h2/table/JoinBatch$1;-><init>()V

    sput-object v0, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    new-instance v1, Lorg/h2/util/DoneFuture;

    invoke-direct {v1, v0}, Lorg/h2/util/DoneFuture;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/h2/table/JoinBatch;->EMPTY_FUTURE_CURSOR:Ljava/util/concurrent/Future;

    return-void
.end method

.method public constructor <init>(ILorg/h2/table/TableFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    new-array p1, p1, [Lorg/h2/table/JoinBatch$JoinFilter;

    iput-object p1, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    iput-object p2, p0, Lorg/h2/table/JoinBatch;->additionalFilter:Lorg/h2/table/TableFilter;

    return-void

    :cond_0
    const-string p1, "Too many tables in join (at most 32 supported)."

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private batchedNext()Z
    .locals 7

    iget-object v0, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    iput-object v0, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    iget-object v0, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v0

    :goto_0
    iget-object v4, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v4, v3}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lorg/h2/table/JoinBatch;->fetchCurrent(I)V

    iget-object v4, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v4}, Lorg/h2/table/JoinBatch$JoinRow;->isDropped()Z

    move-result v4

    if-nez v4, :cond_5

    if-ne v3, v0, :cond_3

    return v2

    :cond_3
    iget-object v4, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/h2/table/JoinBatch$JoinFilter;->isBatchFull()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v4, v5}, Lorg/h2/table/JoinBatch$JoinFilter;->find(Lorg/h2/table/JoinBatch$JoinRow;)Lorg/h2/table/JoinBatch$JoinRow;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    :cond_4
    iget-object v5, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    iget v6, v4, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    invoke-virtual {v5, v6}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v3, v4, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    iget-object v5, v4, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    if-nez v5, :cond_8

    invoke-virtual {v4}, Lorg/h2/table/JoinBatch$JoinRow;->isDropped()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    iget-object v3, v3, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    iput-object v3, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    if-nez v3, :cond_6

    return v1

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v4, v3}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v4, v5}, Lorg/h2/table/JoinBatch$JoinFilter;->find(Lorg/h2/table/JoinBatch$JoinRow;)Lorg/h2/table/JoinBatch$JoinRow;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    goto :goto_1

    :cond_8
    iput-object v5, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    :goto_3
    iget-object v4, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v4, v3}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method public static createFakeIndexLookupBatch(Lorg/h2/table/TableFilter;)Lorg/h2/index/IndexLookupBatch;
    .locals 1

    new-instance v0, Lorg/h2/table/JoinBatch$FakeLookupBatch;

    invoke-direct {v0, p0}, Lorg/h2/table/JoinBatch$FakeLookupBatch;-><init>(Lorg/h2/table/TableFilter;)V

    return-object v0
.end method

.method public static createViewIndexLookupBatch(Lorg/h2/index/ViewIndex;)Lorg/h2/index/IndexLookupBatch;
    .locals 3

    invoke-virtual {p0}, Lorg/h2/index/ViewIndex;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->isUnion()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;

    invoke-direct {v0, p0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;-><init>(Lorg/h2/index/ViewIndex;)V

    invoke-virtual {v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchUnion;->initialize()Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2

    :cond_1
    check-cast v0, Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getJoinBatch()Lorg/h2/table/JoinBatch;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/JoinBatch;->getLookupBatch(I)Lorg/h2/index/IndexLookupBatch;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/h2/table/JoinBatch;->batchedSubQuery:Z

    invoke-direct {v0, p0}, Lorg/h2/table/JoinBatch;->viewIndexLookupBatch(Lorg/h2/index/ViewIndex;)Lorg/h2/index/IndexLookupBatch;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v2
.end method

.method private fetchCurrent(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v8, p1

    iget-object v1, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v1, v8}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-nez v8, :cond_3

    :cond_1
    iget-object v1, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v1}, Lorg/h2/table/JoinBatch$JoinRow;->drop()V

    return-void

    :cond_2
    iget-object v3, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v3, v8}, Lorg/h2/table/JoinBatch$JoinRow;->isFuture(I)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lorg/h2/table/JoinBatch;->get(Ljava/util/concurrent/Future;)Lorg/h2/index/Cursor;

    move-result-object v11

    iget-object v1, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x2

    move/from16 v2, p1

    move-object v3, v11

    invoke-virtual/range {v1 .. v7}, Lorg/h2/table/JoinBatch$JoinRow;->updateRow(ILjava/lang/Object;JJ)V

    move-object v1, v11

    const/4 v2, 0x1

    :cond_3
    iget-object v3, v0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    aget-object v11, v3, v8

    check-cast v1, Lorg/h2/index/Cursor;

    iget-object v12, v11, Lorg/h2/table/JoinBatch$JoinFilter;->join:Lorg/h2/table/JoinBatch$JoinFilter;

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/h2/index/Cursor;->next()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    if-eqz v2, :cond_1

    invoke-virtual {v11}, Lorg/h2/table/JoinBatch$JoinFilter;->isOuterJoin()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v11}, Lorg/h2/table/JoinBatch$JoinFilter;->getNullRow()Lorg/h2/result/Row;

    move-result-object v3

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x3

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/h2/table/JoinBatch$JoinRow;->updateRow(ILjava/lang/Object;JJ)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    if-nez v1, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v11, v3}, Lorg/h2/table/JoinBatch$JoinFilter;->isOk(Z)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lorg/h2/table/JoinBatch$JoinFilter;->collectSearchRows()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v12}, Lorg/h2/table/JoinBatch$JoinFilter;->isOuterJoin()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v2, v8}, Lorg/h2/table/JoinBatch$JoinRow;->copyBehind(I)Lorg/h2/table/JoinBatch$JoinRow;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-interface {v1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v3

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x3

    move-object v1, v2

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/h2/table/JoinBatch$JoinRow;->updateRow(ILjava/lang/Object;JJ)V

    :cond_a
    if-eqz v9, :cond_b

    iget-object v13, v0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    iget v14, v12, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    sget-object v15, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x2

    invoke-virtual/range {v13 .. v19}, Lorg/h2/table/JoinBatch$JoinRow;->updateRow(ILjava/lang/Object;JJ)V

    :cond_b
    return-void
.end method

.method private static get(Ljava/util/concurrent/Future;)Lorg/h2/index/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;)",
            "Lorg/h2/index/Cursor;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/index/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    sget-object p0, Lorg/h2/table/JoinBatch;->EMPTY_CURSOR:Lorg/h2/index/Cursor;

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private start()V
    .locals 10

    new-instance v0, Lorg/h2/table/JoinBatch$JoinRow;

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/h2/table/JoinBatch$JoinRow;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    iget-boolean v0, p0, Lorg/h2/table/JoinBatch;->batchedSubQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/JoinBatch;->viewTopFutureCursor:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lorg/h2/table/JoinBatch;->get(Ljava/util/concurrent/Future;)Lorg/h2/index/Cursor;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/table/JoinBatch;->top:Lorg/h2/table/JoinBatch$JoinFilter;

    iget-object v0, v0, Lorg/h2/table/JoinBatch$JoinFilter;->filter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getIndexCursor()Lorg/h2/index/IndexCursor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object v2

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getIndexConditions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/index/IndexCursor;->find(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V

    move-object v5, v1

    :goto_0
    iget-object v3, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    iget-object v0, p0, Lorg/h2/table/JoinBatch;->top:Lorg/h2/table/JoinBatch$JoinFilter;

    iget v4, v0, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x2

    invoke-virtual/range {v3 .. v9}, Lorg/h2/table/JoinBatch$JoinRow;->updateRow(ILjava/lang/Object;JJ)V

    new-instance v0, Lorg/h2/table/JoinBatch$JoinRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/h2/table/JoinBatch$JoinRow;-><init>([Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    iput-object v1, v0, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    iput-object v0, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    return-void
.end method

.method private viewIndexLookupBatch(Lorg/h2/index/ViewIndex;)Lorg/h2/index/IndexLookupBatch;
    .locals 1

    new-instance v0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;

    invoke-direct {v0, p0, p1}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatch;-><init>(Lorg/h2/table/JoinBatch;Lorg/h2/index/ViewIndex;)V

    return-object v0
.end method


# virtual methods
.method public getLookupBatch(I)Lorg/h2/index/IndexLookupBatch;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/table/JoinBatch$JoinFilter;->lookupBatch:Lorg/h2/index/IndexLookupBatch;

    return-object p1
.end method

.method public getValue(ILorg/h2/table/Column;)Lorg/h2/value/Value;
    .locals 2

    iget-object v0, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/table/JoinBatch$JoinRow;->row(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v1, p1}, Lorg/h2/table/JoinBatch$JoinRow;->isRow(I)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v0, Lorg/h2/result/Row;

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/h2/index/Cursor;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lorg/h2/table/Column;->getColumnId()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "value is null: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public next()Z
    .locals 3

    iget-boolean v0, p0, Lorg/h2/table/JoinBatch;->started:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/table/JoinBatch;->start()V

    iput-boolean v1, p0, Lorg/h2/table/JoinBatch;->started:Z

    :cond_0
    iget-object v0, p0, Lorg/h2/table/JoinBatch;->additionalFilter:Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/h2/table/JoinBatch;->batchedNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/h2/table/JoinBatch;->found:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/h2/table/JoinBatch;->batchedNext()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iput-boolean v1, p0, Lorg/h2/table/JoinBatch;->found:Z

    iget-object v0, p0, Lorg/h2/table/JoinBatch;->additionalFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    :cond_4
    iget-object v0, p0, Lorg/h2/table/JoinBatch;->additionalFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iput-boolean v2, p0, Lorg/h2/table/JoinBatch;->found:Z

    goto :goto_0
.end method

.method public register(Lorg/h2/table/TableFilter;Lorg/h2/index/IndexLookupBatch;)V
    .locals 2

    new-instance v0, Lorg/h2/table/JoinBatch$JoinFilter;

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->top:Lorg/h2/table/JoinBatch$JoinFilter;

    invoke-direct {v0, p2, p1, v1}, Lorg/h2/table/JoinBatch$JoinFilter;-><init>(Lorg/h2/index/IndexLookupBatch;Lorg/h2/table/TableFilter;Lorg/h2/table/JoinBatch$JoinFilter;)V

    iput-object v0, p0, Lorg/h2/table/JoinBatch;->top:Lorg/h2/table/JoinBatch$JoinFilter;

    iget-object p1, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    iget p2, v0, Lorg/h2/table/JoinBatch$JoinFilter;->id:I

    aput-object v0, p1, p2

    return-void
.end method

.method public reset(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/table/JoinBatch;->started:Z

    iput-boolean v0, p0, Lorg/h2/table/JoinBatch;->found:Z

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->filters:[Lorg/h2/table/JoinBatch$JoinFilter;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lorg/h2/table/JoinBatch$JoinFilter;->reset(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/table/JoinBatch;->additionalFilter:Lorg/h2/table/TableFilter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->reset()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JoinBatch->\nprev->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ncurr->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nnext->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/JoinBatch;->current:Lorg/h2/table/JoinBatch$JoinRow;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
