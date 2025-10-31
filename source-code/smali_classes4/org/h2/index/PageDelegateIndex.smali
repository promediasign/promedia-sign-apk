.class public Lorg/h2/index/PageDelegateIndex;
.super Lorg/h2/index/PageIndex;
.source "SourceFile"


# instance fields
.field private final mainIndex:Lorg/h2/index/PageDataIndex;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;ILjava/lang/String;Lorg/h2/index/IndexType;Lorg/h2/index/PageDataIndex;ZLorg/h2/engine/Session;)V
    .locals 6

    invoke-direct {p0}, Lorg/h2/index/PageIndex;-><init>()V

    invoke-virtual {p5}, Lorg/h2/index/PageDataIndex;->getMainIndexColumn()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/h2/table/Column;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object p5, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    if-eqz p6, :cond_0

    invoke-virtual {v0, p0, p7}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    return-void
.end method

.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    const-wide/high16 v3, -0x8000000000000000L

    const-wide/high16 v5, -0x8000000000000000L

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/PageDataIndex;->getKey(Lorg/h2/result/SearchRow;JJ)J

    move-result-wide v9

    iget-object v1, v0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    const-wide v3, 0x7fffffffffffffffL

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/PageDataIndex;->getKey(Lorg/h2/result/SearchRow;JJ)J

    move-result-wide v11

    iget-object v7, v0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 7

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    move-object v1, p1

    :goto_0
    invoke-virtual/range {v0 .. v6}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p2}, Lorg/h2/index/PageDataIndex;->getLastKey()J

    move-result-wide v4

    iget-object v0, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, v4

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    return-object p1
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 1

    invoke-virtual {p1}, Lorg/h2/table/Column;->getColumnId()I

    move-result p1

    iget-object v0, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getMainIndexColumn()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 10
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

    move-object v9, p0

    iget-object v0, v9, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lorg/h2/index/PageDataIndex;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/BaseIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, p1}, Lorg/h2/index/PageDataIndex;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFirstColumn(Lorg/h2/table/Column;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/index/PageDelegateIndex;->getColumnIndex(Lorg/h2/table/Column;)I

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
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/index/PageDelegateIndex;->mainIndex:Lorg/h2/index/PageDataIndex;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataIndex;->setMainIndexColumn(I)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

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

.method public writeRowCount()V
    .locals 0

    return-void
.end method
