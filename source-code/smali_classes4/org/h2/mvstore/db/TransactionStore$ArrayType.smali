.class public Lorg/h2/mvstore/db/TransactionStore$ArrayType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/TransactionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayType"
.end annotation


# instance fields
.field private final arrayLength:I

.field private final elementTypes:[Lorg/h2/mvstore/type/DataType;


# direct methods
.method public constructor <init>([Lorg/h2/mvstore/type/DataType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->arrayLength:I

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->elementTypes:[Lorg/h2/mvstore/type/DataType;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->arrayLength:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->elementTypes:[Lorg/h2/mvstore/type/DataType;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-interface {v2, v3, v4}, Lorg/h2/mvstore/type/DataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->arrayLength:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->elementTypes:[Lorg/h2/mvstore/type/DataType;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    invoke-interface {v2, v3}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->arrayLength:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->arrayLength:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->elementTypes:[Lorg/h2/mvstore/type/DataType;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v2, p1}, Lorg/h2/mvstore/type/DataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    .line 2
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->arrayLength:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->elementTypes:[Lorg/h2/mvstore/type/DataType;

    aget-object v2, v2, v1

    aget-object v3, p2, v1

    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    invoke-interface {v2, p1, v3}, Lorg/h2/mvstore/type/DataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    .line 2
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p2, p4

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/db/TransactionStore$ArrayType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
