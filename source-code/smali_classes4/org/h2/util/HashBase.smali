.class public abstract Lorg/h2/util/HashBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_LOAD:J = 0x5aL


# instance fields
.field protected deletedCount:I

.field protected len:I

.field protected level:I

.field protected mask:I

.field private maxDeleted:I

.field private maxSize:I

.field private minSize:I

.field protected size:I

.field protected zeroKey:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->reset(I)V

    return-void
.end method


# virtual methods
.method public checkSizePut()V
    .locals 2

    iget v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    iget v1, p0, Lorg/h2/util/HashBase;->size:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->rehash(I)V

    :cond_0
    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    iget v1, p0, Lorg/h2/util/HashBase;->deletedCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/h2/util/HashBase;->maxSize:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->rehash(I)V

    :cond_1
    return-void
.end method

.method public checkSizeRemove()V
    .locals 2

    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    iget v1, p0, Lorg/h2/util/HashBase;->minSize:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/util/HashBase;->rehash(I)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    iget v1, p0, Lorg/h2/util/HashBase;->maxDeleted:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/h2/util/HashBase;->level:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getIndex(I)I
    .locals 1

    iget v0, p0, Lorg/h2/util/HashBase;->mask:I

    and-int/2addr p1, v0

    return p1
.end method

.method public abstract rehash(I)V
.end method

.method public reset(I)V
    .locals 9

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/util/HashBase;->size:I

    iput p1, p0, Lorg/h2/util/HashBase;->level:I

    const/4 v1, 0x2

    shl-int v2, v1, p1

    iput v2, p0, Lorg/h2/util/HashBase;->len:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/h2/util/HashBase;->mask:I

    const/4 v3, 0x1

    shl-int p1, v3, p1

    int-to-long v3, p1

    const-wide/16 v5, 0x5a

    mul-long v3, v3, v5

    const-wide/16 v7, 0x64

    div-long/2addr v3, v7

    long-to-int p1, v3

    iput p1, p0, Lorg/h2/util/HashBase;->minSize:I

    int-to-long v3, v2

    mul-long v3, v3, v5

    div-long/2addr v3, v7

    long-to-int p1, v3

    iput p1, p0, Lorg/h2/util/HashBase;->maxSize:I

    iput v0, p0, Lorg/h2/util/HashBase;->deletedCount:I

    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lorg/h2/util/HashBase;->maxDeleted:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "exceeded max size of hash table"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lorg/h2/util/HashBase;->size:I

    iget-boolean v1, p0, Lorg/h2/util/HashBase;->zeroKey:Z

    add-int/2addr v0, v1

    return v0
.end method
