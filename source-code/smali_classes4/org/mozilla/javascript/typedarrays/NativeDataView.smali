.class public Lorg/mozilla/javascript/typedarrays/NativeDataView;
.super Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.source "SourceFile"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "DataView"

.field private static final Id_constructor:I = 0x1

.field private static final Id_getFloat32:I = 0x8

.field private static final Id_getFloat64:I = 0x9

.field private static final Id_getInt16:I = 0x4

.field private static final Id_getInt32:I = 0x6

.field private static final Id_getInt8:I = 0x2

.field private static final Id_getUint16:I = 0x5

.field private static final Id_getUint32:I = 0x7

.field private static final Id_getUint8:I = 0x3

.field private static final Id_setFloat32:I = 0x10

.field private static final Id_setFloat64:I = 0x11

.field private static final Id_setInt16:I = 0xc

.field private static final Id_setInt32:I = 0xe

.field private static final Id_setInt8:I = 0xa

.field private static final Id_setUint16:I = 0xd

.field private static final Id_setUint32:I = 0xf

.field private static final Id_setUint8:I = 0xb

.field private static final MAX_PROTOTYPE_ID:I = 0x11

.field private static final serialVersionUID:J = 0x13d128f92f39bdf8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-void
.end method

.method private static determinePos([Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "offset out of range"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    return v0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 1

    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;-><init>()V

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static js_constructor([Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeDataView;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object v1, p0, v0

    instance-of v2, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const-string v4, "offset out of range"

    if-eqz v3, :cond_1

    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_1
    if-ltz p0, :cond_5

    if-ltz v0, :cond_4

    add-int v2, v0, p0

    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v3

    if-gt v2, v3, :cond_4

    new-instance v2, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    invoke-direct {v2, v1, v0, p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v2

    :cond_4
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_5
    const-string p0, "length out of range"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "TypeError"

    const-string v0, "Missing parameters"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->rangeCheck(II)V

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le p1, v1, :cond_0

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readFloat64([BIZ)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readFloat32([BIZ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->rangeCheck(II)V

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le p1, v1, :cond_0

    aget-object p3, p3, v1

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt32([BIZ)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint32([BIZ)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    if-eqz p2, :cond_4

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt16([BIZ)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_4
    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint16([BIZ)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    if-eqz p2, :cond_6

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt8([BI)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_6
    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint8([BI)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private js_setFloat(I[Ljava/lang/Object;)V
    .locals 6

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    const-string v1, "offset out of range"

    if-ltz v0, :cond_5

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-le p1, v4, :cond_0

    aget-object v2, p2, v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-le v3, v4, :cond_1

    aget-object p2, p2, v4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    add-int p2, v0, p1

    iget v5, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p2, v5, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v3, v4, v2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeFloat64([BIDZ)V

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v3, v4, v2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeFloat32([BIDZ)V

    :goto_2
    return-void

    :cond_4
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_5
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private js_setInt(IZ[Ljava/lang/Object;)V
    .locals 7

    invoke-static {p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    const-string v1, "offset out of range"

    if-ltz v0, :cond_e

    const/4 v2, 0x2

    invoke-static {p3, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-le p1, v4, :cond_0

    aget-object v3, p3, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    array-length v6, p3

    if-le v6, v4, :cond_1

    aget-object v5, p3, v4

    :cond_1
    if-eq p1, v4, :cond_a

    if-eq p1, v2, :cond_6

    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    if-eqz p2, :cond_3

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt32(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt32([BIIZ)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide p2

    add-int/2addr p1, v0

    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, v2, :cond_4

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr v1, v0

    invoke-static {p1, v1, p2, p3, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint32([BIJZ)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    if-eqz p2, :cond_8

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt16(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_7

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt16([BIIZ)V

    goto :goto_1

    :cond_7
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_8
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint16(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_9

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint16([BIIZ)V

    goto :goto_1

    :cond_9
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_a
    if-eqz p2, :cond_c

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt8(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_b

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt8([BII)V

    goto :goto_1

    :cond_b
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_c
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint8(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_d

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint8([BII)V

    :goto_1
    return-void

    :cond_d
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private rangeCheck(II)V
    .locals 0

    if-ltz p1, :cond_0

    add-int/2addr p1, p2

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    const-string p1, "offset out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, p3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setFloat(I[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setFloat(I[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v2, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v2, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_7
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, p3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v2, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v2, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_constructor([Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x32

    const/16 v3, 0x73

    const/16 v4, 0x67

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "constructor"

    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x34

    const/16 v7, 0x9

    if-ne v0, v4, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "getFloat32"

    goto/16 :goto_1

    :cond_0
    if-ne v0, v6, :cond_c

    const-string v0, "getFloat64"

    const/16 v1, 0x9

    goto/16 :goto_1

    :cond_1
    if-ne v0, v3, :cond_c

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "setFloat32"

    const/16 v1, 0x10

    goto/16 :goto_1

    :cond_2
    if-ne v0, v6, :cond_c

    const-string v0, "setFloat64"

    const/16 v1, 0x11

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x36

    if-ne v0, v4, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    const-string v0, "getUint32"

    const/4 v1, 0x7

    goto/16 :goto_1

    :cond_3
    if-ne v0, v6, :cond_c

    const-string v0, "getUint16"

    const/4 v1, 0x5

    goto/16 :goto_1

    :cond_4
    if-ne v0, v3, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    const-string v0, "setUint32"

    const/16 v1, 0xf

    goto :goto_1

    :cond_5
    if-ne v0, v6, :cond_c

    const-string v0, "setUint16"

    const/16 v1, 0xd

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_6

    const-string v0, "getInt16"

    const/4 v1, 0x4

    goto :goto_1

    :cond_6
    if-ne v0, v3, :cond_c

    const-string v0, "setInt16"

    const/16 v1, 0xc

    goto :goto_1

    :cond_7
    const/16 v2, 0x33

    if-ne v0, v2, :cond_9

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_8

    const-string v0, "getInt32"

    goto :goto_1

    :cond_8
    if-ne v0, v3, :cond_c

    const-string v0, "setInt32"

    const/16 v1, 0xe

    goto :goto_1

    :cond_9
    const/16 v1, 0x74

    if-ne v0, v1, :cond_c

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_a

    const-string v0, "getUint8"

    const/4 v1, 0x3

    goto :goto_1

    :cond_a
    if-ne v0, v3, :cond_c

    const-string v0, "setUint8"

    const/16 v1, 0xb

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_b

    const-string v0, "getInt8"

    const/4 v1, 0x2

    goto :goto_1

    :cond_b
    if-ne v0, v3, :cond_c

    const-string v0, "setInt8"

    const/16 v1, 0xa

    goto :goto_1

    :cond_c
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_d

    if-eq v0, p1, :cond_d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    move v5, v1

    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "DataView"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "setFloat64"

    goto :goto_1

    :pswitch_1
    const-string v0, "setFloat32"

    goto :goto_1

    :pswitch_2
    const-string v0, "setUint32"

    goto :goto_1

    :pswitch_3
    const-string v0, "setInt32"

    goto :goto_1

    :pswitch_4
    const-string v0, "setUint16"

    goto :goto_1

    :pswitch_5
    const-string v0, "setInt16"

    goto :goto_1

    :pswitch_6
    const-string v0, "setUint8"

    goto :goto_1

    :pswitch_7
    const-string v0, "setInt8"

    goto :goto_1

    :pswitch_8
    const-string v1, "getFloat64"

    :goto_0
    move-object v0, v1

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_9
    const-string v1, "getFloat32"

    goto :goto_0

    :pswitch_a
    const-string v1, "getUint32"

    goto :goto_0

    :pswitch_b
    const-string v1, "getInt32"

    goto :goto_0

    :pswitch_c
    const-string v1, "getUint16"

    goto :goto_0

    :pswitch_d
    const-string v1, "getInt16"

    goto :goto_0

    :pswitch_e
    const-string v1, "getUint8"

    goto :goto_0

    :pswitch_f
    const-string v1, "getInt8"

    goto :goto_0

    :pswitch_10
    const/4 v0, 0x3

    const-string v1, "constructor"

    move-object v0, v1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
