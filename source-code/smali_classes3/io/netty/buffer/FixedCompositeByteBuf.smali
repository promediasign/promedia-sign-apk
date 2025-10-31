.class final Lio/netty/buffer/FixedCompositeByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/FixedCompositeByteBuf$Component;
    }
.end annotation


# static fields
.field private static final EMPTY:[Lio/netty/buffer/ByteBuf;


# instance fields
.field private final allocator:Lio/netty/buffer/ByteBufAllocator;

.field private final buffers:[Lio/netty/buffer/ByteBuf;

.field private final capacity:I

.field private final direct:Z

.field private final nioBufferCount:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/netty/buffer/ByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/netty/buffer/FixedCompositeByteBuf;->EMPTY:[Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/buffer/ByteBufAllocator;[Lio/netty/buffer/ByteBuf;)V
    .locals 8

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object p2, Lio/netty/buffer/FixedCompositeByteBuf;->EMPTY:[Lio/netty/buffer/ByteBuf;

    iput-object p2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object p2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    iput v2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount:I

    iput v1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    sget-object p2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result p2

    iput-boolean p2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->direct:Z

    goto :goto_1

    :cond_0
    aget-object v0, p2, v1

    iput-object p2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    const/4 v0, 0x1

    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_3

    aget-object v5, p2, v2

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    iget-object v7, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All ByteBufs need to have same ByteOrder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput v3, p0, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount:I

    iput v4, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    iput-boolean v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->direct:Z

    :goto_1
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->capacity()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    iput-object p1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-void
.end method

.method private buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    aget-object p1, v0, p1

    instance-of v0, p1, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    iget-object p1, p1, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    :cond_0
    return-object p1
.end method

.method private findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    instance-of v3, v2, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    if-eqz v3, :cond_0

    check-cast v2, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    iget-object v3, v2, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    add-int/2addr v1, v4

    if-ge p1, v1, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-direct {v3, v0, v1, v2}, Lio/netty/buffer/FixedCompositeByteBuf$Component;-><init>(IILio/netty/buffer/ByteBuf;)V

    iget-object p1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    aput-object v3, p1, v0

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public _getByte(I)B
    .locals 2

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    return p1
.end method

.method public _getInt(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result p1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result p1

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public _getIntLE(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result p1

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result p1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1
.end method

.method public _getLong(I)J
    .locals 7

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result p1

    int-to-long v5, p1

    and-long v2, v5, v3

    or-long/2addr v0, v2

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public _getLongLE(I)J
    .locals 7

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v3, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result p1

    int-to-long v5, p1

    and-long v2, v5, v3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public _getShort(I)S
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public _getShortLE(I)S
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public _getUnsignedMedium(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public _getUnsignedMediumLE(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public _setByte(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setInt(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setIntLE(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setLong(IJ)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setLongLE(IJ)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setMedium(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setMediumLE(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setShort(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public _setShortLE(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    return v1
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1
.end method

.method public deallocate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public getByte(I)B
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/FixedCompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    array-length p5, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p5, :cond_1

    aget-object v3, p1, v2

    add-long v4, p3, v0

    invoke-virtual {p2, v3, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/32 p1, 0x7fffffff

    cmp-long p3, v0, p1

    if-lez p3, :cond_2

    const p1, 0x7fffffff

    return p1

    :cond_2
    long-to-int p1, v0

    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/FixedCompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    long-to-int p2, p1

    return p2
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 5

    .line 3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->checkDstIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v1

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    iget-object v0, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v4, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/2addr v2, v0

    if-gtz p4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 5

    .line 4
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v1

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    iget-object v0, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v4, p2, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    sub-int/2addr p3, v3

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/2addr v2, v0

    if-gtz p3, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 8

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v2

    invoke-static {v2}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v3

    invoke-static {v2}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v4

    iget-object v2, v2, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    sub-int v6, p1, v4

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v6, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v5

    sub-int/2addr v1, v5

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v4, v2

    if-gtz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p1
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 5

    .line 6
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->checkDstIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v1

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    iget-object v0, v0, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    sub-int v4, p1, v2

    sub-int/2addr v3, v4

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v4, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/2addr v2, v0

    if-gtz p4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public hasArray()Z
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public hasMemoryAddress()Z
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isDirect()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->direct:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public isWritable(I)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public maxCapacity()I
    .locals 1

    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    array-length p2, p1

    if-ge v1, p2, :cond_1

    aget-object p2, p1, v1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount:I

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 8

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez p2, :cond_0

    sget-object p1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTE_BUFFERS:[Ljava/nio/ByteBuffer;

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    invoke-static {v0}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v1

    invoke-static {v1}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    invoke-static {v1}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v3

    iget-object v1, v1, Lio/netty/buffer/WrappedByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int v5, p1, v3

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v1, v5, v4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v5, v4}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr p1, v4

    sub-int/2addr p2, v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/2addr v3, v1

    if-gtz p2, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    return-object p1

    :cond_2
    add-int/2addr v2, v7

    :try_start_1
    invoke-direct {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    throw p1
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 0

    .line 2
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0

    .line 3
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 4
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 5
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 6
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lio/netty/buffer/AbstractByteBuf;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ", components="

    .line 12
    .line 13
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    .line 18
    .line 19
    array-length v1, v1

    .line 20
    const/16 v2, 0x29

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
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
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
