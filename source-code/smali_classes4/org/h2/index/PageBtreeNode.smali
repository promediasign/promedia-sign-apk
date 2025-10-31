.class public Lorg/h2/index/PageBtreeNode;
.super Lorg/h2/index/PageBtree;
.source "SourceFile"


# static fields
.field private static final CHILD_OFFSET_PAIR_LENGTH:I = 0x6

.field private static final MAX_KEY_LENGTH:I = 0xa


# instance fields
.field private childPageIds:[I

.field private final pageStoreInternalCount:Z

.field private rowCount:I

.field private rowCountStored:I


# direct methods
.method private constructor <init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageBtree;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    const/4 p2, -0x1

    iput p2, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iput p2, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->pageStoreInternalCount:Z

    iput-boolean p1, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    return-void
.end method

.method private addChild(IILorg/h2/result/SearchRow;)V
    .locals 8

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-boolean v2, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    invoke-virtual {v0, v1, p3, v2}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/h2/index/PageBtree;->offsets:[I

    sub-int/2addr v2, v3

    aget v2, v4, v2

    :goto_0
    sub-int v4, v2, v0

    iget v5, p0, Lorg/h2/index/PageBtree;->start:I

    add-int/lit8 v5, v5, 0x6

    const/4 v6, 0x0

    if-ge v4, v5, :cond_4

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    iput-boolean v3, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    move v2, v1

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v5, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v3}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    sub-int/2addr v4, v3

    aget v0, v0, v4

    move v2, v0

    :goto_2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v4, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v4, p3, v3}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    sget-boolean v4, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v4, :cond_4

    sub-int v4, v2, v0

    iget v5, p0, Lorg/h2/index/PageBtree;->start:I

    add-int/lit8 v5, v5, 0x6

    if-lt v4, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_3
    sub-int/2addr v2, v0

    iget v4, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-lez v4, :cond_6

    if-ge p1, v4, :cond_6

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lorg/h2/index/PageBtree;->offsets:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    :goto_4
    sub-int v2, v1, v0

    :cond_6
    iget-object v1, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    invoke-static {v1, v4, p1, p3}, Lorg/h2/store/Page;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lorg/h2/result/SearchRow;

    iput-object p3, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iget-object p3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-static {p3, v1, p1, v2}, Lorg/h2/store/Page;->insert([IIII)[I

    move-result-object p3

    iput-object p3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    add-int/2addr p1, v3

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/2addr v1, v3

    neg-int v0, v0

    invoke-static {p3, p1, v1, v0}, Lorg/h2/store/Page;->add([IIII)V

    iget-object p3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/2addr v0, v3

    invoke-static {p3, v0, p1, p2}, Lorg/h2/store/Page;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget p1, p0, Lorg/h2/index/PageBtree;->start:I

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lorg/h2/index/PageBtree;->start:I

    iget-boolean p1, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    add-int/2addr p1, v2

    iput p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    :cond_7
    iget p1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    iput-boolean v6, p0, Lorg/h2/index/PageBtree;->written:Z

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/Page;->changeCount:J

    return-void
.end method

.method private addChildTry(Lorg/h2/result/SearchRow;)I
    .locals 4

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v3, p1, v1}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result p1

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    sub-int/2addr v0, p1

    :goto_1
    iget p1, p0, Lorg/h2/index/PageBtree;->start:I

    add-int/lit8 p1, p1, 0x6

    if-ge v0, p1, :cond_3

    iget p1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_3
    return v2
.end method

.method private check()V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;
    .locals 2

    new-instance v0, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageBtreeNode;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iput p2, v0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-direct {v0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    iget-object p0, v0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    iput p0, v0, Lorg/h2/index/PageBtree;->start:I

    sget-object p0, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    iput-object p0, v0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iget-boolean p0, v0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput p0, v0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    :cond_0
    return-object v0
.end method

.method public static read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/index/PageBtreeNode;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageBtreeNode;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    invoke-direct {v0}, Lorg/h2/index/PageBtreeNode;->read()V

    return-object v0
.end method

.method private read()V
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    iget-object v3, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget-object v4, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v4}, Lorg/h2/store/Data;->readInt()I

    move-result v4

    aput v4, v3, v0

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-nez v0, :cond_1

    sget-object v3, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    goto :goto_1

    :cond_1
    new-array v3, v0, [Lorg/h2/result/SearchRow;

    :goto_1
    iput-object v3, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    invoke-static {v0}, Lorg/h2/util/Utils;->newIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    :goto_2
    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readShortInt()S

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->check()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtree;->start:I

    iput-boolean v2, p0, Lorg/h2/index/PageBtree;->written:Z

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fae

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private removeChild(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 17
    .line 18
    aget v1, v1, p1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->getRowCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    neg-int v0, v0

    .line 29
    invoke-direct {p0, v0}, Lorg/h2/index/PageBtreeNode;->updateRowCount(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    .line 34
    .line 35
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    .line 46
    .line 47
    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 48
    .line 49
    if-gez v0, :cond_1

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, ""

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 59
    .line 60
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 64
    .line 65
    if-le v0, p1, :cond_3

    .line 66
    .line 67
    if-lez p1, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 70
    .line 71
    add-int/lit8 v1, p1, -0x1

    .line 72
    .line 73
    aget v0, v0, v1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    .line 77
    .line 78
    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 87
    .line 88
    aget v2, v1, p1

    .line 89
    .line 90
    sub-int/2addr v0, v2

    .line 91
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    invoke-static {v1, p1, v2, v0}, Lorg/h2/store/Page;->add([IIII)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object v0, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    .line 99
    .line 100
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, [Lorg/h2/result/SearchRow;

    .line 109
    .line 110
    iput-object v0, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    .line 111
    .line 112
    iget-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 113
    .line 114
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([III)[I

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 123
    .line 124
    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 125
    .line 126
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x2

    .line 129
    .line 130
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([III)[I

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    .line 135
    .line 136
    iget p1, p0, Lorg/h2/index/PageBtree;->start:I

    .line 137
    .line 138
    add-int/lit8 p1, p1, -0x6

    .line 139
    .line 140
    iput p1, p0, Lorg/h2/index/PageBtree;->start:I

    .line 141
    .line 142
    return-void
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
.end method

.method private updateRowCount(I)V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    :cond_0
    iget p1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    if-eq p1, v1, :cond_2

    iput v1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-boolean p1, p0, Lorg/h2/index/PageBtree;->written:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_2
    return-void
.end method

.method private writeData()V
    .locals 6

    iget-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeShortInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/h2/index/PageBtreeIndex;->writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    return-void
.end method

.method private writeHead()V
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-boolean v1, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeShortInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method public addRowTry(Lorg/h2/result/SearchRow;)I
    .locals 7

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/h2/index/PageBtree;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v2

    iget-object v3, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/h2/index/PageBtree;->addRowTry(Lorg/h2/result/SearchRow;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v1}, Lorg/h2/index/PageBtreeNode;->updateRowCount(I)V

    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    return v5

    :cond_0
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3, v0}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    iget-object v6, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v1, p0, v6}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    invoke-direct {p0, v0}, Lorg/h2/index/PageBtreeNode;->addChildTry(Lorg/h2/result/SearchRow;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, v4}, Lorg/h2/index/PageBtree;->split(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v4

    invoke-direct {p0, v2, v4, v0}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0
.end method

.method public find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, v0}, Lorg/h2/index/PageBtree;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v0

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/index/PageBtreeNode;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/index/PageBtree;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-void
.end method

.method public freeRecursive()V
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/PageBtree;->freeRecursive()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    return-object v0
.end method

.method public getLastLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->getLastLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    return-object v0
.end method

.method public getRowCount()I
    .locals 6

    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4, v3}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v3, v0, v4, v2, v5}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    :cond_1
    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    return v0
.end method

.method public init(Lorg/h2/index/PageBtree;Lorg/h2/result/SearchRow;Lorg/h2/index/PageBtree;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    sget-object v1, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    iput-object v1, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    sget-object v1, Lorg/h2/util/Utils;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lorg/h2/index/PageBtree;->offsets:[I

    invoke-virtual {p3}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    iget-boolean p2, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result p1

    invoke-virtual {p3}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->check()V

    return-void
.end method

.method public last(Lorg/h2/index/PageBtreeCursor;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/index/PageBtree;->last(Lorg/h2/index/PageBtreeCursor;)V

    return-void
.end method

.method public moveChild(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/store/Page;->changeCount:J

    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aput p2, p1, v1

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-static {v1, p2, v2}, Lorg/h2/index/PageBtreeNode;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iput v2, v1, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iget v2, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    iput v2, v1, Lorg/h2/index/PageBtreeNode;->rowCount:I

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iput-object v2, v1, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    iget-object v2, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iput-object v2, v1, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    iput v2, v1, Lorg/h2/index/PageBtree;->entryCount:I

    iget-object v2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    iput-object v2, v1, Lorg/h2/index/PageBtree;->offsets:[I

    iget-boolean v2, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    iput-boolean v2, v1, Lorg/h2/index/PageBtree;->onlyPosition:Z

    iget v2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    iput v2, v1, Lorg/h2/index/PageBtree;->parentPageId:I

    iget v2, p0, Lorg/h2/index/PageBtree;->start:I

    iput v2, v1, Lorg/h2/index/PageBtree;->start:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget v1, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageBtreeIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    instance-of v1, p1, Lorg/h2/index/PageBtreeNode;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Lorg/h2/index/PageBtreeNode;->moveChild(II)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, p1

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void

    :cond_2
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public nextPage(Lorg/h2/index/PageBtreeCursor;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    if-ne v3, p2, :cond_0

    :cond_1
    if-le v1, v2, :cond_3

    iget p2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0, p2}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    check-cast p2, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/h2/index/PageBtreeNode;->nextPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void

    :cond_3
    iget-object p2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v2, v1

    invoke-virtual {p2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/index/PageBtree;->getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method public previousPage(Lorg/h2/index/PageBtreeCursor;I)V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, p2, :cond_0

    :cond_1
    if-gez v0, :cond_3

    iget p2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez p2, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0, p2}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    check-cast p2, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/h2/index/PageBtreeNode;->previousPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void

    :cond_3
    iget-object p2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v0, v1, v0

    invoke-virtual {p2, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/index/PageBtree;->getLastLeaf()Lorg/h2/index/PageBtreeLeaf;

    move-result-object p2

    iget v0, p2, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method public remapChildren()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2, v1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/h2/index/PageBtree;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v2

    iget-object v3, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/h2/index/PageBtree;->remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v5}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v5, p0, v6}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lorg/h2/index/PageBtreeNode;->updateRowCount(I)V

    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/h2/store/Page;->changeCount:J

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v4}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v4

    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/h2/store/PageStore;->free(I)V

    iget v3, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v3, v1, :cond_1

    return-object p1

    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 p1, v2, -0x1

    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v2}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    :goto_0
    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-object v0

    :cond_3
    iget p1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ne v2, p1, :cond_4

    return-object v4

    :cond_4
    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget p1, p1, v2

    invoke-direct {p0, v2}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    invoke-direct {p0, v2, p1, v4}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    iget-object p1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, p1, v2

    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v3

    aput v4, p1, v2

    aput v1, p1, v3

    goto :goto_0
.end method

.method public setRowCountStored(I)V
    .locals 2

    if-gez p1, :cond_0

    iget-boolean v0, p0, Lorg/h2/index/PageBtreeNode;->pageStoreInternalCount:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/h2/index/PageBtreeNode;->rowCount:I

    iget v0, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lorg/h2/index/PageBtreeNode;->rowCountStored:I

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-boolean p1, p0, Lorg/h2/index/PageBtree;->written:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeHead()V

    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_2
    return-void
.end method

.method public split(I)Lorg/h2/index/PageBtree;
    .locals 6

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageBtreeNode;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v1, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-boolean v1, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aget v1, v1, p1

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    :goto_0
    iget v3, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge p1, v3, :cond_1

    iget v3, v0, Lorg/h2/index/PageBtree;->entryCount:I

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    add-int/lit8 v5, p1, 0x1

    aget v4, v4, v5

    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lorg/h2/index/PageBtreeNode;->addChild(IILorg/h2/result/SearchRow;)V

    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    sub-int/2addr p1, v2

    aget v3, v3, p1

    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeNode;->removeChild(I)V

    iget-object v4, p0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    aput v3, v4, p1

    iget-object p1, v0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    if-nez p1, :cond_2

    new-array p1, v2, [I

    iput-object p1, v0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    :cond_2
    iget-object p1, v0, Lorg/h2/index/PageBtreeNode;->childPageIds:[I

    const/4 v2, 0x0

    aput v1, p1, v2

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeNode;->remapChildren()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] b-tree node table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->check()V

    invoke-direct {p0}, Lorg/h2/index/PageBtreeNode;->writeData()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
