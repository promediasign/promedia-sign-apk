.class Lorg/h2/value/ValueJavaObject$NotSerialized;
.super Lorg/h2/value/ValueJavaObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/value/ValueJavaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotSerialized"
.end annotation


# instance fields
.field private displaySize:I

.field private javaObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/h2/value/ValueJavaObject;-><init>([BLorg/h2/store/DataHandler;)V

    const/4 p2, -0x1

    iput p2, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->displaySize:I

    iput-object p1, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->javaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 7

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getObject()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p2, Ljava/lang/Comparable;

    instance-of v2, v0, Ljava/lang/Comparable;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/h2/util/Utils;->haveCommonComparableSuperclass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v3, v4, :cond_3

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    const/4 v5, -0x1

    :cond_1
    return v5

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/h2/value/Value;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getBytesNoCopy()[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/util/Utils;->compareNotNullSigned([B[B)I

    move-result p1

    return p1

    :cond_5
    if-le v1, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, -0x1

    :goto_0
    return v5
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/value/ValueJavaObject$NotSerialized;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lorg/h2/value/ValueJavaObject$NotSerialized;

    invoke-virtual {p1}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBytesNoCopy()[B
    .locals 2

    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->javaObject:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/util/JdbcUtils;->serialize(Ljava/lang/Object;Lorg/h2/store/DataHandler;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->displaySize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->displaySize:I

    :cond_0
    iget v0, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->displaySize:I

    return v0
.end method

.method public getMemory()I
    .locals 2

    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    iget v0, v0, Lorg/h2/value/DataType;->memory:I

    return v0

    :cond_0
    invoke-super {p0}, Lorg/h2/value/ValueBytes;->getMemory()I

    move-result v0

    iget-object v1, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->javaObject:Ljava/lang/Object;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->javaObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->javaObject:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->javaObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->displaySize:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/h2/value/ValueJavaObject$NotSerialized;->displaySize:I

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueBytes;->hash:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/h2/value/ValueBytes;->hash:I

    :cond_0
    iget v0, p0, Lorg/h2/value/ValueBytes;->hash:I

    return v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject$NotSerialized;->getObject()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    return-void
.end method
