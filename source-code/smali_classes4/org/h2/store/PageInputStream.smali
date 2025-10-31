.class public Lorg/h2/store/PageInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private data:Lorg/h2/store/PageStreamData;

.field private dataPage:I

.field private dataPos:I

.field private endOfFile:Z

.field private final firstTrunkPage:I

.field private logKey:I

.field private remaining:I

.field private final store:Lorg/h2/store/PageStore;

.field private final trace:Lorg/h2/message/Trace;

.field private trunk:Lorg/h2/store/PageStreamTrunk;

.field private trunkIndex:I

.field private final trunkIterator:Lorg/h2/store/PageStreamTrunk$Iterator;


# direct methods
.method public constructor <init>(Lorg/h2/store/PageStore;III)V
    .locals 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    iput-object v1, p0, Lorg/h2/store/PageInputStream;->buffer:[B

    iput-object p1, p0, Lorg/h2/store/PageInputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getTrace()Lorg/h2/message/Trace;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/PageInputStream;->trace:Lorg/h2/message/Trace;

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/h2/store/PageInputStream;->logKey:I

    iput p3, p0, Lorg/h2/store/PageInputStream;->firstTrunkPage:I

    new-instance p2, Lorg/h2/store/PageStreamTrunk$Iterator;

    invoke-direct {p2, p1, p3}, Lorg/h2/store/PageStreamTrunk$Iterator;-><init>(Lorg/h2/store/PageStore;I)V

    iput-object p2, p0, Lorg/h2/store/PageInputStream;->trunkIterator:Lorg/h2/store/PageStreamTrunk$Iterator;

    iput p4, p0, Lorg/h2/store/PageInputStream;->dataPage:I

    return-void
.end method

.method private fillBuffer()V
    .locals 7

    iget v0, p0, Lorg/h2/store/PageInputStream;->remaining:I

    if-gtz v0, :cond_9

    iget-boolean v0, p0, Lorg/h2/store/PageInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/store/PageInputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/store/PageInputStream;->trunkIterator:Lorg/h2/store/PageStreamTrunk$Iterator;

    invoke-virtual {v0}, Lorg/h2/store/PageStreamTrunk$Iterator;->next()Lorg/h2/store/PageStreamTrunk;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageInputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    const/4 v2, 0x0

    iput v2, p0, Lorg/h2/store/PageInputStream;->trunkIndex:I

    iget v2, p0, Lorg/h2/store/PageInputStream;->logKey:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/store/PageInputStream;->logKey:I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/PageStreamTrunk;->getLogKey()I

    move-result v0

    iget v2, p0, Lorg/h2/store/PageInputStream;->logKey:I

    if-eq v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lorg/h2/store/PageInputStream;->endOfFile:Z

    return-void

    :cond_2
    iget-object v0, p0, Lorg/h2/store/PageInputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/h2/store/PageInputStream;->trunkIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/h2/store/PageInputStream;->trunkIndex:I

    invoke-virtual {v0, v2}, Lorg/h2/store/PageStreamTrunk;->getPageData(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    iput-object v2, p0, Lorg/h2/store/PageInputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    goto :goto_0

    :cond_3
    iget v4, p0, Lorg/h2/store/PageInputStream;->dataPage:I

    if-eq v4, v3, :cond_4

    if-ne v4, v0, :cond_0

    :cond_4
    iget-object v4, p0, Lorg/h2/store/PageInputStream;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/h2/store/PageInputStream;->trace:Lorg/h2/message/Trace;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pageIn.readPage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_5
    iput v3, p0, Lorg/h2/store/PageInputStream;->dataPage:I

    iput-object v2, p0, Lorg/h2/store/PageInputStream;->data:Lorg/h2/store/PageStreamData;

    iget-object v2, p0, Lorg/h2/store/PageInputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2, v0}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    instance-of v2, v0, Lorg/h2/store/PageStreamData;

    if-eqz v2, :cond_6

    check-cast v0, Lorg/h2/store/PageStreamData;

    iput-object v0, p0, Lorg/h2/store/PageInputStream;->data:Lorg/h2/store/PageStreamData;

    :cond_6
    iget-object v0, p0, Lorg/h2/store/PageInputStream;->data:Lorg/h2/store/PageStreamData;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/h2/store/PageStreamData;->getLogKey()I

    move-result v0

    iget v2, p0, Lorg/h2/store/PageInputStream;->logKey:I

    if-eq v0, v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lorg/h2/store/PageStreamData;->getReadStart()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageInputStream;->dataPos:I

    iget-object v0, p0, Lorg/h2/store/PageInputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    iget v1, p0, Lorg/h2/store/PageInputStream;->dataPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/PageInputStream;->remaining:I

    return-void

    :cond_8
    :goto_1
    iput-boolean v1, p0, Lorg/h2/store/PageInputStream;->endOfFile:Z

    :cond_9
    :goto_2
    return-void
.end method

.method private readBlock([BII)I
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/PageInputStream;->fillBuffer()V

    iget-boolean v0, p0, Lorg/h2/store/PageInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lorg/h2/store/PageInputStream;->remaining:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/h2/store/PageInputStream;->data:Lorg/h2/store/PageStreamData;

    iget v1, p0, Lorg/h2/store/PageInputStream;->dataPos:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/h2/store/PageStreamData;->read(I[BII)V

    iget p1, p0, Lorg/h2/store/PageInputStream;->remaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/PageInputStream;->remaining:I

    iget p1, p0, Lorg/h2/store/PageInputStream;->dataPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/PageInputStream;->dataPos:I
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method


# virtual methods
.method public allocateAllPages()Lorg/h2/util/BitField;
    .locals 7

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iget v1, p0, Lorg/h2/store/PageInputStream;->logKey:I

    new-instance v2, Lorg/h2/store/PageStreamTrunk$Iterator;

    iget-object v3, p0, Lorg/h2/store/PageInputStream;->store:Lorg/h2/store/PageStore;

    iget v4, p0, Lorg/h2/store/PageInputStream;->firstTrunkPage:I

    invoke-direct {v2, v3, v4}, Lorg/h2/store/PageStreamTrunk$Iterator;-><init>(Lorg/h2/store/PageStore;I)V

    :goto_0
    invoke-virtual {v2}, Lorg/h2/store/PageStreamTrunk$Iterator;->next()Lorg/h2/store/PageStreamTrunk;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Lorg/h2/store/PageStreamTrunk$Iterator;->canDelete()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/h2/store/PageInputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2}, Lorg/h2/store/PageStreamTrunk$Iterator;->getCurrentPageId()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/h2/store/PageStore;->allocatePage(I)V

    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/h2/store/PageStreamTrunk;->getLogKey()I

    move-result v4

    if-eq v4, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/h2/util/BitField;->set(I)V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lorg/h2/store/PageStreamTrunk;->getPageData(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Lorg/h2/util/BitField;->set(I)V

    iget-object v6, p0, Lorg/h2/store/PageInputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v6, v5}, Lorg/h2/store/PageStore;->allocatePage(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getDataPage()I
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageInputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/store/PageInputStream;->buffer:[B

    invoke-virtual {p0, v0}, Lorg/h2/store/PageInputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageInputStream;->buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/store/PageInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 3
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/store/PageInputStream;->readBlock([BII)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0
.end method
