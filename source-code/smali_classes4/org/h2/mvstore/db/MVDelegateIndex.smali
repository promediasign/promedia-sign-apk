.class public Lorg/h2/mvstore/db/MVDelegateIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"

# interfaces
.implements Lorg/h2/mvstore/db/MVIndex;


# instance fields
.field private final mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/index/IndexType;)V
    .locals 9

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    invoke-virtual {p4}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMainIndexColumn()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/h2/table/Column;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object p4, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    return-void
.end method

.method public addBufferedRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/h2/result/Row;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 3

    iget-object v0, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    sget-object v1, Lorg/h2/mvstore/db/MVPrimaryIndex;->MIN:Lorg/h2/value/ValueLong;

    invoke-virtual {v0, p2, v1, v1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getKey(Lorg/h2/result/SearchRow;Lorg/h2/value/ValueLong;Lorg/h2/value/ValueLong;)Lorg/h2/value/ValueLong;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    sget-object v2, Lorg/h2/mvstore/db/MVPrimaryIndex;->MAX:Lorg/h2/value/ValueLong;

    invoke-virtual {v0, p3, v2, v1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getKey(Lorg/h2/result/SearchRow;Lorg/h2/value/ValueLong;Lorg/h2/value/ValueLong;)Lorg/h2/value/ValueLong;

    move-result-object p3

    iget-object v0, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/db/MVPrimaryIndex;->find(Lorg/h2/engine/Session;Lorg/h2/value/ValueLong;Lorg/h2/value/ValueLong;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/db/MVPrimaryIndex;->findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 1

    invoke-virtual {p1}, Lorg/h2/table/Column;->getColumnId()I

    move-result p1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMainIndexColumn()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation

    iget-object p1, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountApproximation()J

    move-result-wide v2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/BaseIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide p1

    const-wide/16 p3, 0xa

    mul-long p1, p1, p3

    long-to-double p1, p1

    return-wide p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFirstColumn(Lorg/h2/table/Column;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVDelegateIndex;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/h2/mvstore/db/MVDelegateIndex;->mainIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->setMainIndexColumn(I)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    .line 2
    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
