.class abstract Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

.field protected final cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    new-instance v1, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;

    invoke-direct {v1, p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;)V

    invoke-virtual {p1, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    return-void
.end method


# virtual methods
.method public final append(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method public abstract cursorPassedFirstComponent()V
.end method

.method public final free()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->free()V

    return-void
.end method

.method public final getIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    return v0
.end method

.method public final getRemaining()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v0

    return v0
.end method

.method public final hasRemaining()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public final last()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method
