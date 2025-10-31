.class public final Lorg/h2/compress/CompressLZF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/compress/Compressor;


# static fields
.field private static final HASH_SIZE:I = 0x4000

.field private static final MAX_LITERAL:I = 0x20

.field private static final MAX_OFF:I = 0x2000

.field private static final MAX_REF:I = 0x108


# instance fields
.field private cachedHashTable:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expand(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    shr-int/lit8 v1, v1, 0x5

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x2

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x8

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    :goto_1
    if-ge v3, v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void
.end method

.method private static first(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static first([BI)I
    .locals 1

    .line 2
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static hash(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0xad9

    shr-int/lit8 p0, p0, 0x9

    and-int/lit16 p0, p0, 0x3fff

    return p0
.end method

.method private static next(ILjava/nio/ByteBuffer;I)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static next(I[BI)I
    .locals 0

    .line 2
    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;I[BI)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p2

    iget-object v1, p0, Lorg/h2/compress/CompressLZF;->cachedHashTable:[I

    if-nez v1, :cond_0

    const/16 v1, 0x4000

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/h2/compress/CompressLZF;->cachedHashTable:[I

    :cond_0
    iget-object v1, p0, Lorg/h2/compress/CompressLZF;->cachedHashTable:[I

    add-int/lit8 p4, p4, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/h2/compress/CompressLZF;->first(Ljava/nio/ByteBuffer;I)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, v0, -0x4

    const/16 v6, 0x20

    if-ge p2, v5, :cond_7

    add-int/lit8 v5, p2, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v7, v5, 0xff

    add-int/2addr v3, v7

    invoke-static {v3}, Lorg/h2/compress/CompressLZF;->hash(I)I

    move-result v7

    aget v8, v1, v7

    aput p2, v1, v7

    if-ge v8, p2, :cond_5

    if-lez v8, :cond_5

    sub-int v7, p2, v8

    add-int/lit8 v7, v7, -0x1

    const/16 v9, 0x2000

    if-ge v7, v9, :cond_5

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    if-ne v9, v5, :cond_5

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    if-ne v5, v9, :cond_5

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v9, v3, 0x10

    int-to-byte v9, v9

    if-ne v5, v9, :cond_5

    sub-int v3, v0, p2

    add-int/lit8 v3, v3, -0x2

    const/16 v5, 0x108

    if-le v3, v5, :cond_1

    const/16 v3, 0x108

    :cond_1
    if-nez v4, :cond_2

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_2
    sub-int v5, p4, v4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v5

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x3

    :goto_3
    if-ge v5, v3, :cond_3

    add-int v6, v8, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int v9, p2, v5

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    if-ne v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v5, -0x2

    const/4 v6, 0x7

    if-ge v3, v6, :cond_4

    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v7, 0x8

    shl-int/lit8 v8, v3, 0x5

    add-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p3, p4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, p4, 0x1

    shr-int/lit8 v8, v7, 0x8

    add-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, p3, p4

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 v5, v5, -0x9

    int-to-byte v5, v5

    aput-byte v5, p3, v6

    move v5, p4

    :goto_4
    int-to-byte p4, v7

    aput-byte p4, p3, v5

    add-int/lit8 v5, v5, 0x2

    add-int/2addr p2, v3

    invoke-static {p1, p2}, Lorg/h2/compress/CompressLZF;->first(Ljava/nio/ByteBuffer;I)I

    move-result p4

    invoke-static {p4, p1, p2}, Lorg/h2/compress/CompressLZF;->next(ILjava/nio/ByteBuffer;I)I

    move-result p4

    invoke-static {p4}, Lorg/h2/compress/CompressLZF;->hash(I)I

    move-result v3

    add-int/lit8 v6, p2, 0x1

    aput p2, v1, v3

    invoke-static {p4, p1, v6}, Lorg/h2/compress/CompressLZF;->next(ILjava/nio/ByteBuffer;I)I

    move-result p4

    invoke-static {p4}, Lorg/h2/compress/CompressLZF;->hash(I)I

    move-result v3

    add-int/lit8 p2, p2, 0x2

    aput v6, v1, v3

    move v3, p4

    move p4, v5

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v5, p4, 0x1

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v4, 0x1

    if-ne p2, v6, :cond_6

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x1

    int-to-byte p2, v4

    aput-byte p2, p3, v5

    add-int/lit8 p4, p4, 0x2

    move p2, v7

    goto/16 :goto_0

    :cond_6
    move v4, p2

    move p4, v5

    move p2, v7

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-ge p2, v0, :cond_9

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v4, 0x1

    if-ne p2, v6, :cond_8

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte p2, v4

    aput-byte p2, p3, v1

    add-int/lit8 p4, p4, 0x2

    move p2, v3

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    move v4, p2

    move p4, v1

    move p2, v3

    goto :goto_5

    :cond_9
    sub-int p1, p4, v4

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, v4, -0x1

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    if-nez v4, :cond_a

    add-int/lit8 p4, p4, -0x1

    :cond_a
    return p4
.end method

.method public compress([BI[BI)I
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/h2/compress/CompressLZF;->cachedHashTable:[I

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/compress/CompressLZF;->cachedHashTable:[I

    :cond_0
    iget-object v0, p0, Lorg/h2/compress/CompressLZF;->cachedHashTable:[I

    add-int/lit8 p4, p4, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/h2/compress/CompressLZF;->first([BI)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, p2, -0x4

    const/16 v6, 0x20

    if-ge v3, v5, :cond_7

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, p1, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v7, v5, 0xff

    add-int/2addr v2, v7

    invoke-static {v2}, Lorg/h2/compress/CompressLZF;->hash(I)I

    move-result v7

    aget v8, v0, v7

    aput v3, v0, v7

    if-ge v8, v3, :cond_5

    if-lez v8, :cond_5

    sub-int v7, v3, v8

    add-int/lit8 v7, v7, -0x1

    const/16 v9, 0x2000

    if-ge v7, v9, :cond_5

    add-int/lit8 v9, v8, 0x2

    aget-byte v9, p1, v9

    if-ne v9, v5, :cond_5

    add-int/lit8 v5, v8, 0x1

    aget-byte v5, p1, v5

    shr-int/lit8 v9, v2, 0x8

    int-to-byte v9, v9

    if-ne v5, v9, :cond_5

    aget-byte v5, p1, v8

    shr-int/lit8 v9, v2, 0x10

    int-to-byte v9, v9

    if-ne v5, v9, :cond_5

    sub-int v2, p2, v3

    add-int/lit8 v2, v2, -0x2

    const/16 v5, 0x108

    if-le v2, v5, :cond_1

    const/16 v2, 0x108

    :cond_1
    if-nez v4, :cond_2

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_2
    sub-int v5, p4, v4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v5

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x3

    :goto_3
    if-ge v5, v2, :cond_3

    add-int v6, v8, v5

    aget-byte v6, p1, v6

    add-int v9, v3, v5

    aget-byte v9, p1, v9

    if-ne v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v5, -0x2

    const/4 v6, 0x7

    if-ge v2, v6, :cond_4

    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v7, 0x8

    shl-int/lit8 v8, v2, 0x5

    add-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p3, p4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, p4, 0x1

    shr-int/lit8 v8, v7, 0x8

    add-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, p3, p4

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 v5, v5, -0x9

    int-to-byte v5, v5

    aput-byte v5, p3, v6

    move v5, p4

    :goto_4
    int-to-byte p4, v7

    aput-byte p4, p3, v5

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lorg/h2/compress/CompressLZF;->first([BI)I

    move-result p4

    invoke-static {p4, p1, v3}, Lorg/h2/compress/CompressLZF;->next(I[BI)I

    move-result p4

    invoke-static {p4}, Lorg/h2/compress/CompressLZF;->hash(I)I

    move-result v2

    add-int/lit8 v6, v3, 0x1

    aput v3, v0, v2

    invoke-static {p4, p1, v6}, Lorg/h2/compress/CompressLZF;->next(I[BI)I

    move-result p4

    invoke-static {p4}, Lorg/h2/compress/CompressLZF;->hash(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x2

    aput v6, v0, v2

    move v2, p4

    move p4, v5

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v5, p4, 0x1

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, p3, p4

    add-int/lit8 v3, v4, 0x1

    if-ne v3, v6, :cond_6

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v5

    add-int/lit8 p4, p4, 0x2

    move v3, v7

    goto/16 :goto_0

    :cond_6
    move v4, v3

    move p4, v5

    move v3, v7

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-ge v3, p2, :cond_9

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, p3, p4

    add-int/lit8 v3, v4, 0x1

    if-ne v3, v6, :cond_8

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v0

    add-int/lit8 p4, p4, 0x2

    move v3, v2

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    move p4, v0

    move v4, v3

    move v3, v2

    goto :goto_5

    :cond_9
    sub-int p1, p4, v4

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, v4, -0x1

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    if-nez v4, :cond_a

    add-int/lit8 p4, p4, -0x1

    :cond_a
    return p4
.end method

.method public expand([BII[BII)V
    .locals 4

    .line 2
    if-ltz p2, :cond_5

    if-ltz p5, :cond_5

    if-ltz p6, :cond_5

    :cond_0
    add-int/lit8 p3, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, p3, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p5, v1

    add-int/2addr p3, v1

    move p2, p3

    goto :goto_1

    :cond_1
    shr-int/lit8 v1, v1, 0x5

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    add-int/lit8 p2, p2, 0x2

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr v1, p3

    move p3, p2

    :cond_2
    add-int/lit8 v1, v1, 0x2

    and-int/lit8 p2, v0, 0x1f

    shl-int/lit8 p2, p2, 0x8

    neg-int p2, p2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr p2, p3

    add-int/2addr p2, p5

    add-int p3, p5, v1

    array-length v2, p4

    if-ge p3, v2, :cond_4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v1, :cond_3

    add-int/lit8 v2, p5, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p4, p2

    aput-byte p2, p4, p5

    add-int/lit8 p3, p3, 0x1

    move p5, v2

    move p2, v3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_1
    if-lt p5, p6, :cond_0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAlgorithm()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
