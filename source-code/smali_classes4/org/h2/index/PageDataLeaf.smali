.class public Lorg/h2/index/PageDataLeaf;
.super Lorg/h2/index/PageData;
.source "SourceFile"


# instance fields
.field private columnCount:I

.field private firstOverflowPageId:I

.field private memoryData:I

.field private offsets:[I

.field private final optimizeUpdate:Z

.field private overflowRowSize:I

.field private rowRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private rows:[Lorg/h2/result/Row;

.field private start:I

.field private writtenData:Z


# direct methods
.method private constructor <init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageData;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeUpdate:Z

    iput-boolean p1, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    return-void
.end method

.method public static create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;
    .locals 2

    new-instance v0, Lorg/h2/index/PageDataLeaf;

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageDataLeaf;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    sget-object p1, Lorg/h2/result/Row;->EMPTY_ARRAY:[Lorg/h2/result/Row;

    iput-object p1, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    iput p2, v0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-virtual {p0}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object p0

    array-length p0, p0

    iput p0, v0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    invoke-direct {v0}, Lorg/h2/index/PageDataLeaf;->writeHead()V

    iget-object p0, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    iput p0, v0, Lorg/h2/index/PageDataLeaf;->start:I

    return-object v0
.end method

.method private findInsertionPoint(J)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageData;->find(J)I

    move-result v0

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/index/PageDataIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method private freeOverflow()V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageDataIndex;->getPageOverflow(I)Lorg/h2/index/PageDataOverflow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageDataOverflow;->free()V

    invoke-virtual {v0}, Lorg/h2/index/PageDataOverflow;->getNextOverflow()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method private getRowLength(Lorg/h2/result/Row;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private memoryChange(ZLorg/h2/result/Row;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getMemory()I

    move-result p2

    add-int/lit8 p2, p2, 0x14

    :goto_0
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->memoryData:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    neg-int p2, p2

    :goto_1
    add-int/2addr v0, p2

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->memoryData:I

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    add-int/lit16 v0, v0, 0xf0

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p2

    add-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lorg/h2/index/PageDataIndex;->memoryChange(I)V

    return-void
.end method

.method public static read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/index/PageDataLeaf;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageDataLeaf;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    invoke-direct {v0}, Lorg/h2/index/PageDataLeaf;->read()V

    return-object v0
.end method

.method private read()V
    .locals 5

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageData;->parentPageId:I

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readVarInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    move-result v1

    iput v1, p0, Lorg/h2/index/PageData;->entryCount:I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    new-array v2, v1, [J

    iput-object v2, p0, Lorg/h2/index/PageData;->keys:[J

    new-array v2, v1, [Lorg/h2/result/Row;

    iput-object v2, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entries: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 2
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    iget-object v3, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v3

    aput-wide v3, v1, v0

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget-object v3, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readShortInt()S

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->start:I

    iput-boolean v2, p0, Lorg/h2/index/PageData;->written:Z

    iput-boolean v2, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "page:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expected table:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " got:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fae

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readAllRows()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readRow(Lorg/h2/store/Data;II)Lorg/h2/result/Row;
    .locals 2

    new-array v0, p3, [Lorg/h2/value/Value;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->setPos(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, v0, p2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private removeRow(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    .line 14
    .line 15
    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getChangeCount()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p0, Lorg/h2/store/Page;->changeCount:J

    .line 26
    .line 27
    iget-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 44
    .line 45
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    iput v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 48
    .line 49
    if-gez v1, :cond_2

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 59
    .line 60
    invoke-static {v1, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget v1, p0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 68
    .line 69
    add-int/lit8 v1, v1, -0x4

    .line 70
    .line 71
    iput v1, p0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 72
    .line 73
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->freeOverflow()V

    .line 74
    .line 75
    .line 76
    iput v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 77
    .line 78
    iput v0, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    .line 82
    .line 83
    :cond_3
    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    .line 84
    .line 85
    aget-wide v2, v1, p1

    .line 86
    .line 87
    invoke-static {v2, v3}, Lorg/h2/store/Data;->getVarLongLen(J)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/lit8 v1, v1, 0x2

    .line 92
    .line 93
    if-lez p1, :cond_4

    .line 94
    .line 95
    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 96
    .line 97
    add-int/lit8 v3, p1, -0x1

    .line 98
    .line 99
    aget v2, v2, v3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 103
    .line 104
    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lorg/h2/store/PageStore;->getPageSize()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :goto_0
    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 113
    .line 114
    aget v4, v3, p1

    .line 115
    .line 116
    sub-int/2addr v2, v4

    .line 117
    iget-boolean v4, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    .line 118
    .line 119
    if-eqz v4, :cond_5

    .line 120
    .line 121
    iget-boolean v3, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    .line 122
    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    iget-object v3, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 126
    .line 127
    invoke-virtual {v3}, Lorg/h2/store/Data;->getBytes()[B

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v4, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 132
    .line 133
    iget v5, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 134
    .line 135
    aget v5, v4, v5

    .line 136
    .line 137
    add-int v6, v5, v2

    .line 138
    .line 139
    aget v4, v4, p1

    .line 140
    .line 141
    sub-int/2addr v4, v5

    .line 142
    invoke-static {v3, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v5, v6, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    iget v4, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 150
    .line 151
    aget v3, v3, v4

    .line 152
    .line 153
    iget-object v4, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 154
    .line 155
    invoke-virtual {v4}, Lorg/h2/store/Data;->getBytes()[B

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    add-int v5, v3, v2

    .line 160
    .line 161
    invoke-static {v4, v3, v5, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_1
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 165
    .line 166
    sub-int/2addr v0, v1

    .line 167
    iput v0, p0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 168
    .line 169
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 170
    .line 171
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 172
    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 174
    .line 175
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([III)[I

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 180
    .line 181
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 182
    .line 183
    invoke-static {v0, p1, v1, v2}, Lorg/h2/store/Page;->add([IIII)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lorg/h2/index/PageData;->keys:[J

    .line 187
    .line 188
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 189
    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([JII)[J

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iput-object v0, p0, Lorg/h2/index/PageData;->keys:[J

    .line 197
    .line 198
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 199
    .line 200
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 201
    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    .line 204
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, [Lorg/h2/result/Row;

    .line 209
    .line 210
    iput-object p1, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 211
    .line 212
    return-void
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

.method private writeData()V
    .locals 7

    iget-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    :cond_1
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->writeHead()V

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1, v0}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageData;->keys:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Lorg/h2/store/Data;->writeVarLong(J)V

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeShortInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    if-nez v1, :cond_7

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v4, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/h2/store/Data;->setPos(I)V

    invoke-virtual {p0, v1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    iget v5, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-interface {v3, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    :cond_7
    iput-boolean v2, p0, Lorg/h2/index/PageData;->written:Z

    return-void
.end method

.method private writeHead()V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method public addRowTry(Lorg/h2/result/Row;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v3}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 14
    .line 15
    .line 16
    invoke-direct/range {p0 .. p1}, Lorg/h2/index/PageDataLeaf;->getRowLength(Lorg/h2/result/Row;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 21
    .line 22
    invoke-virtual {v3}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lorg/h2/store/PageStore;->getPageSize()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v4, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    move v4, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 38
    .line 39
    sub-int/2addr v4, v5

    .line 40
    aget v4, v6, v4

    .line 41
    .line 42
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/h2/result/SearchRow;->getKey()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-static {v6, v7}, Lorg/h2/store/Data;->getVarLongLen(J)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const/4 v7, 0x2

    .line 51
    add-int/2addr v6, v7

    .line 52
    iget v8, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 53
    .line 54
    const/4 v9, 0x3

    .line 55
    if-lez v8, :cond_7

    .line 56
    .line 57
    sub-int/2addr v4, v2

    .line 58
    iget v8, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 59
    .line 60
    add-int/2addr v8, v6

    .line 61
    if-ge v4, v8, :cond_7

    .line 62
    .line 63
    invoke-interface/range {p1 .. p1}, Lorg/h2/result/SearchRow;->getKey()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-direct {v0, v1, v2}, Lorg/h2/index/PageDataLeaf;->findInsertionPoint(J)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget v2, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 72
    .line 73
    if-le v2, v5, :cond_6

    .line 74
    .line 75
    const/4 v3, 0x5

    .line 76
    if-ge v2, v3, :cond_1

    .line 77
    .line 78
    div-int/2addr v2, v7

    .line 79
    return v2

    .line 80
    :cond_1
    iget-object v2, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 81
    .line 82
    invoke-virtual {v2}, Lorg/h2/index/PageIndex;->isSortedInsertMode()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    if-ge v1, v7, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget v2, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 92
    .line 93
    add-int/lit8 v3, v2, -0x1

    .line 94
    .line 95
    if-le v1, v3, :cond_3

    .line 96
    .line 97
    add-int/lit8 v5, v2, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move v5, v1

    .line 101
    :goto_1
    return v5

    .line 102
    :cond_4
    iget v2, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 103
    .line 104
    div-int/2addr v2, v9

    .line 105
    if-ge v1, v2, :cond_5

    .line 106
    .line 107
    :goto_2
    move v1, v2

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    mul-int/lit8 v2, v2, 0x2

    .line 110
    .line 111
    if-lt v1, v2, :cond_6

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    :goto_3
    return v1

    .line 115
    :cond_7
    iget-object v4, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 116
    .line 117
    invoke-virtual {v4}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iget-object v7, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 122
    .line 123
    invoke-virtual {v4, v0, v7}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 124
    .line 125
    .line 126
    iget v4, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    if-nez v4, :cond_8

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    goto :goto_4

    .line 133
    :cond_8
    iget-boolean v4, v0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    .line 134
    .line 135
    if-nez v4, :cond_9

    .line 136
    .line 137
    invoke-direct/range {p0 .. p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    .line 138
    .line 139
    .line 140
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/h2/result/SearchRow;->getKey()J

    .line 141
    .line 142
    .line 143
    move-result-wide v10

    .line 144
    invoke-direct {v0, v10, v11}, Lorg/h2/index/PageDataLeaf;->findInsertionPoint(J)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    :goto_4
    iput-boolean v7, v0, Lorg/h2/index/PageData;->written:Z

    .line 149
    .line 150
    iget-object v8, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 151
    .line 152
    invoke-virtual {v8}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v8}, Lorg/h2/store/PageStore;->getChangeCount()J

    .line 157
    .line 158
    .line 159
    move-result-wide v10

    .line 160
    iput-wide v10, v0, Lorg/h2/store/Page;->changeCount:J

    .line 161
    .line 162
    if-nez v4, :cond_a

    .line 163
    .line 164
    move v8, v3

    .line 165
    goto :goto_5

    .line 166
    :cond_a
    iget-object v8, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 167
    .line 168
    add-int/lit8 v10, v4, -0x1

    .line 169
    .line 170
    aget v8, v8, v10

    .line 171
    .line 172
    :goto_5
    sub-int/2addr v8, v2

    .line 173
    iget v10, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 174
    .line 175
    add-int/2addr v10, v6

    .line 176
    iput v10, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 177
    .line 178
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 179
    .line 180
    iget v10, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 181
    .line 182
    invoke-static {v6, v10, v4, v8}, Lorg/h2/store/Page;->insert([IIII)[I

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    iput-object v6, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 187
    .line 188
    add-int/lit8 v10, v4, 0x1

    .line 189
    .line 190
    iget v11, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 191
    .line 192
    add-int/2addr v11, v5

    .line 193
    neg-int v12, v2

    .line 194
    invoke-static {v6, v10, v11, v12}, Lorg/h2/store/Page;->add([IIII)V

    .line 195
    .line 196
    .line 197
    iget-object v6, v0, Lorg/h2/index/PageData;->keys:[J

    .line 198
    .line 199
    iget v10, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 200
    .line 201
    invoke-interface/range {p1 .. p1}, Lorg/h2/result/SearchRow;->getKey()J

    .line 202
    .line 203
    .line 204
    move-result-wide v11

    .line 205
    invoke-static {v6, v10, v4, v11, v12}, Lorg/h2/store/Page;->insert([JIIJ)[J

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    iput-object v6, v0, Lorg/h2/index/PageData;->keys:[J

    .line 210
    .line 211
    iget-object v6, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 212
    .line 213
    iget v10, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 214
    .line 215
    invoke-static {v6, v10, v4, v1}, Lorg/h2/store/Page;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v6, [Lorg/h2/result/Row;

    .line 220
    .line 221
    iput-object v6, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 222
    .line 223
    iget v6, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 224
    .line 225
    add-int/2addr v6, v5

    .line 226
    iput v6, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 227
    .line 228
    iget-object v6, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 229
    .line 230
    invoke-virtual {v6}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v6, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 235
    .line 236
    .line 237
    iget-boolean v6, v0, Lorg/h2/index/PageDataLeaf;->optimizeUpdate:Z

    .line 238
    .line 239
    if-eqz v6, :cond_b

    .line 240
    .line 241
    iget-boolean v6, v0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    .line 242
    .line 243
    if-eqz v6, :cond_b

    .line 244
    .line 245
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 246
    .line 247
    if-lt v8, v6, :cond_b

    .line 248
    .line 249
    iget-object v6, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 250
    .line 251
    invoke-virtual {v6}, Lorg/h2/store/Data;->getBytes()[B

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    iget-object v10, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 256
    .line 257
    iget v11, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 258
    .line 259
    sub-int/2addr v11, v5

    .line 260
    aget v11, v10, v11

    .line 261
    .line 262
    add-int/2addr v11, v2

    .line 263
    aget v10, v10, v4

    .line 264
    .line 265
    sub-int v12, v11, v2

    .line 266
    .line 267
    sub-int v13, v10, v11

    .line 268
    .line 269
    add-int/2addr v13, v2

    .line 270
    invoke-static {v6, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    .line 272
    .line 273
    iget-object v6, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 274
    .line 275
    invoke-virtual {v6, v10}, Lorg/h2/store/Data;->setPos(I)V

    .line 276
    .line 277
    .line 278
    const/4 v6, 0x0

    .line 279
    :goto_6
    iget v10, v0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    .line 280
    .line 281
    if-ge v6, v10, :cond_b

    .line 282
    .line 283
    iget-object v10, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 284
    .line 285
    invoke-interface {v1, v6}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-virtual {v10, v11}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    .line 290
    .line 291
    .line 292
    add-int/lit8 v6, v6, 0x1

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_b
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 296
    .line 297
    const/4 v10, 0x0

    .line 298
    if-ge v8, v6, :cond_f

    .line 299
    .line 300
    iput-boolean v7, v0, Lorg/h2/index/PageDataLeaf;->writtenData:Z

    .line 301
    .line 302
    iget v6, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 303
    .line 304
    if-le v6, v5, :cond_c

    .line 305
    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v8, ""

    .line 309
    .line 310
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget v8, v0, Lorg/h2/index/PageData;->entryCount:I

    .line 314
    .line 315
    invoke-static {v6, v8}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 316
    .line 317
    .line 318
    :cond_c
    iget v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 319
    .line 320
    add-int/lit8 v6, v6, 0x4

    .line 321
    .line 322
    iput v6, v0, Lorg/h2/index/PageDataLeaf;->start:I

    .line 323
    .line 324
    sub-int v8, v3, v6

    .line 325
    .line 326
    sub-int v8, v2, v8

    .line 327
    .line 328
    iget-object v11, v0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    .line 329
    .line 330
    aput v6, v11, v4

    .line 331
    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/h2/util/CacheObject;->getPos()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    iget-object v6, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 337
    .line 338
    invoke-virtual {v6}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v6}, Lorg/h2/store/PageStore;->allocatePage()I

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    iput v6, v0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 347
    .line 348
    add-int/2addr v2, v3

    .line 349
    iput v2, v0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    .line 350
    .line 351
    invoke-direct/range {p0 .. p0}, Lorg/h2/index/PageDataLeaf;->writeData()V

    .line 352
    .line 353
    .line 354
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 355
    .line 356
    aget-object v2, v2, v7

    .line 357
    .line 358
    new-instance v11, Ljava/lang/ref/SoftReference;

    .line 359
    .line 360
    invoke-direct {v11, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    iput-object v11, v0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    .line 364
    .line 365
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    .line 366
    .line 367
    aput-object v10, v2, v7

    .line 368
    .line 369
    iget-object v2, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 370
    .line 371
    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    iget-object v11, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 380
    .line 381
    invoke-virtual {v11}, Lorg/h2/store/Data;->length()I

    .line 382
    .line 383
    .line 384
    move-result v11

    .line 385
    invoke-virtual {v2, v11}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 386
    .line 387
    .line 388
    iget-object v11, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 389
    .line 390
    invoke-virtual {v11}, Lorg/h2/store/Data;->getBytes()[B

    .line 391
    .line 392
    .line 393
    move-result-object v11

    .line 394
    iget-object v12, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 395
    .line 396
    invoke-virtual {v12}, Lorg/h2/store/Data;->length()I

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    invoke-virtual {v2, v11, v7, v12}, Lorg/h2/store/Data;->write([BII)V

    .line 401
    .line 402
    .line 403
    iget-object v11, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 404
    .line 405
    iget-object v12, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 406
    .line 407
    invoke-virtual {v12}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 408
    .line 409
    .line 410
    move-result-object v12

    .line 411
    invoke-virtual {v12}, Lorg/h2/store/PageStore;->getPageSize()I

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    invoke-virtual {v11, v12}, Lorg/h2/store/Data;->truncate(I)V

    .line 416
    .line 417
    .line 418
    move v14, v4

    .line 419
    move v4, v6

    .line 420
    move v6, v3

    .line 421
    :goto_7
    add-int/lit8 v11, v3, -0x9

    .line 422
    .line 423
    if-gt v8, v11, :cond_d

    .line 424
    .line 425
    const/16 v11, 0x13

    .line 426
    .line 427
    move/from16 v19, v8

    .line 428
    .line 429
    const/16 v13, 0x13

    .line 430
    .line 431
    const/16 v20, 0x0

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_d
    add-int/lit8 v11, v3, -0xb

    .line 435
    .line 436
    iget-object v12, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 437
    .line 438
    invoke-virtual {v12}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 439
    .line 440
    .line 441
    move-result-object v12

    .line 442
    invoke-virtual {v12}, Lorg/h2/store/PageStore;->allocatePage()I

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    move/from16 v19, v11

    .line 447
    .line 448
    move/from16 v20, v12

    .line 449
    .line 450
    const/4 v13, 0x3

    .line 451
    :goto_8
    iget-object v11, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 452
    .line 453
    invoke-virtual {v11}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    move v12, v4

    .line 458
    move/from16 v15, v20

    .line 459
    .line 460
    move-object/from16 v16, v2

    .line 461
    .line 462
    move/from16 v17, v6

    .line 463
    .line 464
    move/from16 v18, v19

    .line 465
    .line 466
    invoke-static/range {v11 .. v18}, Lorg/h2/index/PageDataOverflow;->create(Lorg/h2/store/PageStore;IIIILorg/h2/store/Data;II)Lorg/h2/index/PageDataOverflow;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    iget-object v12, v0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 471
    .line 472
    invoke-virtual {v12}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 473
    .line 474
    .line 475
    move-result-object v12

    .line 476
    invoke-virtual {v12, v11}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 477
    .line 478
    .line 479
    add-int v6, v6, v19

    .line 480
    .line 481
    sub-int v8, v8, v19

    .line 482
    .line 483
    if-gtz v8, :cond_e

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_e
    move v14, v4

    .line 487
    move/from16 v4, v20

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :cond_f
    :goto_9
    iget-object v2, v0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    .line 491
    .line 492
    if-nez v2, :cond_10

    .line 493
    .line 494
    invoke-direct {v0, v5, v1}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    .line 495
    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_10
    invoke-direct {v0, v5, v10}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    .line 499
    .line 500
    .line 501
    :goto_a
    const/4 v1, -0x1

    .line 502
    return v1
.end method

.method public bridge synthetic canRemove()Z
    .locals 1

    invoke-super {p0}, Lorg/h2/index/PageData;->canRemove()Z

    move-result v0

    return v0
.end method

.method public find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;
    .locals 7

    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageData;->find(J)I

    move-result v3

    new-instance p2, Lorg/h2/index/PageDataCursor;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/h2/index/PageDataCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/PageDataLeaf;IJZ)V

    return-object p2
.end method

.method public freeRecursive()V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->freeOverflow()V

    return-void
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getEntryCount()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    return v0
.end method

.method public getFirstLeaf()Lorg/h2/index/PageDataLeaf;
    .locals 0

    return-object p0
.end method

.method public getLastKey()J
    .locals 2

    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMemory()I
    .locals 1

    invoke-super {p0}, Lorg/h2/index/PageData;->getMemory()I

    move-result v0

    return v0
.end method

.method public getNextPage()Lorg/h2/index/PageDataLeaf;
    .locals 4

    iget v0, p0, Lorg/h2/index/PageData;->parentPageId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageDataNode;

    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lorg/h2/index/PageDataNode;->getNextPage(J)Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    return-object v0
.end method

.method public getRowAt(I)Lorg/h2/result/Row;
    .locals 5

    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v1, v1, p1

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    invoke-direct {p0, v0, v1, v2}, Lorg/h2/index/PageDataLeaf;->readRow(Lorg/h2/store/Data;II)Lorg/h2/result/Row;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/result/Row;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v2

    iget-object v0, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    aget v0, v0, p1

    iget-object v3, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Lorg/h2/store/Data;->write([BII)V

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    :cond_2
    iget-object v3, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3, v0}, Lorg/h2/index/PageDataIndex;->getPageOverflow(I)Lorg/h2/index/PageDataOverflow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataOverflow;->readInto(Lorg/h2/store/Data;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    const/4 v0, 0x0

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->columnCount:I

    invoke-direct {p0, v1, v0, v2}, Lorg/h2/index/PageDataLeaf;->readRow(Lorg/h2/store/Data;II)Lorg/h2/result/Row;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    aget-wide v2, v1, p1

    invoke-interface {v0, v2, v3}, Lorg/h2/result/SearchRow;->setKey(J)V

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    aput-object v0, v1, p1

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lorg/h2/index/PageDataLeaf;->memoryChange(ZLorg/h2/result/Row;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    return v0
.end method

.method public getRowWithKey(J)Lorg/h2/result/Row;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageData;->find(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public isStream()Z
    .locals 1

    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 5

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget v1, p0, Lorg/h2/index/PageData;->parentPageId:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget v2, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-static {v1, p2, v2}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->readAllRows()V

    iget-object v2, p0, Lorg/h2/index/PageData;->keys:[J

    iput-object v2, v1, Lorg/h2/index/PageData;->keys:[J

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    iput v2, v1, Lorg/h2/index/PageDataLeaf;->overflowRowSize:I

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    iput v2, v1, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    iput-object v2, v1, Lorg/h2/index/PageDataLeaf;->rowRef:Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    iput-object v2, v1, Lorg/h2/index/PageDataLeaf;->rows:[Lorg/h2/result/Row;

    iget v3, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_1
    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    iput v2, v1, Lorg/h2/index/PageData;->entryCount:I

    iget-object v2, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iput-object v2, v1, Lorg/h2/index/PageDataLeaf;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->start:I

    iput v2, v1, Lorg/h2/index/PageDataLeaf;->start:I

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/index/PageDataLeaf;->remapChildren(I)V

    invoke-direct {v1}, Lorg/h2/index/PageDataLeaf;->writeData()V

    iget-object v2, v1, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->truncate(I)V

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget v1, p0, Lorg/h2/index/PageData;->parentPageId:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageDataIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageDataNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Lorg/h2/index/PageDataNode;->moveChild(II)V

    :goto_0
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method public remapChildren(I)V
    .locals 1

    iget p1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, p1}, Lorg/h2/index/PageDataIndex;->getPageOverflow(I)Lorg/h2/index/PageDataOverflow;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/h2/index/PageDataOverflow;->setParentPageId(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void
.end method

.method public remove(J)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageData;->find(J)I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    if-eqz v1, :cond_2

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, p2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget p1, p0, Lorg/h2/index/PageData;->entryCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/h2/index/PageDataLeaf;->freeRecursive()V

    return p2

    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/index/PageDataLeaf;->removeRow(I)V

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/index/PageData;->keys:[J

    if-nez p1, :cond_3

    const-wide/16 p1, -0x1

    goto :goto_1

    :cond_3
    aget-wide v2, p1, v0

    move-wide p1, v2

    :goto_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x16000

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setOverflow(II)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "move "

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, " "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 25
    .line 26
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 36
    .line 37
    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 38
    .line 39
    .line 40
    iput p2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 41
    .line 42
    iget-boolean p1, p0, Lorg/h2/index/PageData;->written:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    iput-wide p1, p0, Lorg/h2/store/Page;->changeCount:J

    .line 57
    .line 58
    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->writeHead()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 62
    .line 63
    iget p2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    .line 75
    .line 76
    .line 77
    return-void
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
.end method

.method public setRowCountStored(I)V
    .locals 0

    return-void
.end method

.method public split(I)Lorg/h2/index/PageData;
    .locals 4

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget v2, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/h2/index/PageDataLeaf;->getRowAt(I)Lorg/h2/result/Row;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataLeaf;->addRowTry(Lorg/h2/result/Row;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "split "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/index/PageDataLeaf;->removeRow(I)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] data leaf table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " overflow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/h2/index/PageDataLeaf;->firstOverflowPageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " keys:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " offsets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataLeaf;->offsets:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    invoke-direct {p0}, Lorg/h2/index/PageDataLeaf;->writeData()V

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->truncate(I)V

    return-void
.end method
