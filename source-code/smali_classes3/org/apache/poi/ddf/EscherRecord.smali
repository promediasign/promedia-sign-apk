.class public abstract Lorg/apache/poi/ddf/EscherRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final fInstance:Lorg/apache/poi/util/BitField;

.field private static final fVersion:Lorg/apache/poi/util/BitField;


# instance fields
.field private _options:S

.field private _recordId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xfff0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;ZLjava/lang/String;)Z
    .locals 4

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p1, p0}, Lorg/apache/poi/ddf/EscherRecord;->escapeXML(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    instance-of v1, p1, Ljava/lang/Byte;

    const-string v2, "0x"

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of v1, p1, [B

    const-string v2, "(?m)^"

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, [B

    const/16 p2, 0x20

    invoke-static {p1, p2}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_1
    const/4 p0, 0x0

    goto :goto_4

    :cond_6
    instance-of v1, p1, Lorg/apache/poi/ddf/EscherRecord;

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    check-cast p1, Lorg/apache/poi/ddf/EscherRecord;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherRecord;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    const/4 p0, 0x1

    goto :goto_4

    :cond_8
    instance-of v1, p1, Lorg/apache/poi/ddf/EscherProperty;

    if-eqz v1, :cond_a

    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    if-eqz p2, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/ddf/EscherProperty;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_4
    return p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unknown attribute type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static capitalizeAndTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_4

    aget-char v6, p0, v4

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v6

    :goto_1
    const/4 v5, 0x0

    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_3
    return-object p0
.end method

.method private static escapeXML(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-char v2, p0, v1

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    :goto_2
    const-string v3, "&#"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_4
    return-void
.end method

.method public static readInstance([BI)S
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    sget-object p1, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->clone()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    return-object v0
.end method

.method public display(Ljava/io/PrintWriter;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public abstract fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
.end method

.method public fillFields([BLorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result p1

    return p1
.end method

.method public abstract getAttributeMap()[[Ljava/lang/Object;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

.method public getChild(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherRecord;

    return-object p1
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()S
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getOptions()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    return v0
.end method

.method public getRecordId()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_recordId:S

    return v0
.end method

.method public abstract getRecordName()Ljava/lang/String;
.end method

.method public abstract getRecordSize()I
.end method

.method public getVersion()S
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public isContainerRecord()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readHeader([BI)I
    .locals 1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherRecord;->_recordId:S

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    return p1
.end method

.method public serialize(I[B)I
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v0}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result p1

    return p1
.end method

.method public abstract serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
.end method

.method public serialize()[B
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[B)I

    return-object v0
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This record does not support child records."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInstance(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    return-void
.end method

.method public setOptions(S)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setVersion(S)V

    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fInstance:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setInstance(S)V

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    return-void
.end method

.method public setRecordId(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherRecord;->_recordId:S

    return-void
.end method

.method public setVersion(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherRecord;->fVersion:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherRecord;->_options:S

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "line.separator"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const/16 v2, 0x3e8

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " ("

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "):"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "  RecordId: 0x"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, "  Version: 0x"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, "  Instance: 0x"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, "  Options: 0x"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, "  Record Size: "

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getAttributeMap()[[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    .line 139
    array-length v3, v2

    .line 140
    if-lez v3, :cond_2

    .line 141
    .line 142
    array-length v3, v2

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    :goto_0
    if-ge v5, v3, :cond_2

    .line 146
    .line 147
    aget-object v6, v2, v5

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    :goto_1
    array-length v8, v6

    .line 151
    if-ge v7, v8, :cond_1

    .line 152
    .line 153
    add-int/lit8 v8, v7, 0x1

    .line 154
    .line 155
    aget-object v8, v6, v8

    .line 156
    .line 157
    if-nez v8, :cond_0

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_0
    aget-object v9, v6, v7

    .line 161
    .line 162
    check-cast v9, Ljava/lang/String;

    .line 163
    .line 164
    const-string v10, "  "

    .line 165
    .line 166
    const-string v11, ": "

    .line 167
    .line 168
    invoke-static {v1, v0, v10, v9, v11}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v8, v4, v10}, Lorg/apache/poi/ddf/EscherRecord;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;ZLjava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    :goto_2
    add-int/lit8 v7, v7, 0x2

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0
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

.method public toXml()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " recordId=\"0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" version=\"0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" instance=\"0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" options=\"0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" recordSize=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ddf/EscherRecord;->getAttributeMap()[[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    array-length v6, v5

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v6, "\">"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const-string v10, "</"

    const-string v11, ">"

    if-ge v9, v7, :cond_8

    aget-object v12, v5, v9

    aget-object v13, v12, v8

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lorg/apache/poi/ddf/EscherRecord;->capitalizeAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    array-length v8, v12

    if-ge v14, v8, :cond_5

    add-int/lit8 v8, v14, 0x1

    aget-object v8, v12, v8

    if-nez v8, :cond_1

    move-object/from16 v17, v4

    goto :goto_2

    :cond_1
    if-nez v15, :cond_2

    .line 2
    invoke-static {v3, v6, v4, v13, v11}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_2
    aget-object v15, v12, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lorg/apache/poi/ddf/EscherRecord;->capitalizeAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v4

    if-lez v14, :cond_3

    const-string v4, "  <"

    .line 4
    invoke-static {v3, v1, v6, v4, v15}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v4, 0x1

    invoke-static {v3, v8, v4, v6}, Lorg/apache/poi/ddf/EscherRecord;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result v16

    if-lez v14, :cond_4

    const-string v8, "  </"

    .line 6
    invoke-static {v3, v1, v6, v8, v15}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v15, 0x1

    :goto_2
    add-int/lit8 v14, v14, 0x2

    move-object/from16 v4, v17

    goto :goto_1

    :cond_5
    move-object/from16 v17, v4

    if-eqz v15, :cond_7

    if-eqz v16, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_6
    invoke-static {v3, v10, v13, v11, v1}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v17

    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    invoke-static {v3, v0, v10, v2, v11}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 9
    :cond_9
    :goto_3
    const-string v0, "\" />"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
