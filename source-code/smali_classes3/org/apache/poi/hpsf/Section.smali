.class public Lorg/apache/poi/hpsf/Section;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _offset:J

.field private dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private formatID:Lorg/apache/poi/hpsf/ClassID;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/hpsf/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final sectionBytes:Ljava/io/ByteArrayOutputStream;

.field private wasNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/Section;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Section;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    iget-object v0, p1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Property;

    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v4, v1}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 20

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, v0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    new-instance v5, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v5, v1, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v5, v0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    add-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v5

    long-to-int v2, v5

    aget-byte v5, v1, v2

    const/4 v7, 0x3

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-byte v8, v1, v2

    if-nez v8, :cond_0

    add-int/2addr v5, v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_2

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, v1, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v2, 0x7

    aget-byte v8, v1, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v2, 0xb

    aget-byte v8, v1, v8

    if-eqz v8, :cond_2

    :cond_1
    add-int/2addr v5, v4

    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    int-to-long v8, v2

    iput-wide v8, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    new-instance v5, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v5, v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v10

    array-length v2, v1

    int-to-long v12, v2

    sub-long/2addr v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v2, v8

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v9, v8

    new-instance v8, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v8}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;-><init>()V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_3

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v11

    long-to-int v12, v11

    int-to-long v11, v12

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v13

    long-to-int v14, v13

    int-to-long v13, v14

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v13, v11}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->put(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    add-int/2addr v10, v4

    goto :goto_2

    :cond_3
    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_5

    iget-wide v10, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v10

    long-to-int v3, v12

    invoke-virtual {v5, v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    cmp-long v3, v9, v11

    if-nez v3, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    goto :goto_3

    :cond_4
    new-instance v1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value type of property ID 1 is not VT_I2 but "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    invoke-virtual {v8}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v10, v14, v16

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v6, v2

    invoke-static {v8, v11, v6, v7}, Lorg/apache/poi/hpsf/Section;->propLen(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Long;J)I

    move-result v6

    iget-wide v10, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    add-long/2addr v10, v12

    long-to-int v7, v10

    invoke-virtual {v5, v7}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    const-wide/16 v10, 0x0

    cmp-long v7, v14, v10

    if-nez v7, :cond_8

    const v7, 0x186a0

    invoke-virtual {v5, v7}, Ljava/io/InputStream;->mark(I)V

    invoke-direct {v0, v5, v6, v3}, Lorg/apache/poi/hpsf/Section;->readDictionary(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;II)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    :try_start_0
    invoke-virtual {v8}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/collections4/OrderedMap;->lastKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1f

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-long v11, v10, v16

    new-instance v7, Lorg/apache/poi/hpsf/MutableProperty;

    move-object v10, v7

    move-object v13, v5

    move v14, v6

    move v15, v3

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    invoke-virtual {v0, v7}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x3

    const/16 v19, 0x0

    goto :goto_6

    :catch_0
    sget-object v6, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v10, "Dictionary fallback failed - ignoring property"

    const/16 v19, 0x0

    aput-object v10, v7, v19

    const/4 v13, 0x3

    invoke-virtual {v6, v13, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_5
    const/16 v18, 0x3

    goto :goto_6

    :cond_7
    const/16 v19, 0x0

    goto :goto_5

    :cond_8
    const/4 v13, 0x3

    const/16 v19, 0x0

    new-instance v7, Lorg/apache/poi/hpsf/MutableProperty;

    move-object v10, v7

    move-wide v11, v14

    const/16 v18, 0x3

    move-object v13, v5

    move v14, v6

    move v15, v3

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    invoke-virtual {v0, v7}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    :goto_6
    const/4 v7, 0x3

    goto/16 :goto_4

    :cond_9
    iget-object v3, v0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    iget-wide v4, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    long-to-int v5, v4

    invoke-virtual {v3, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hpsf/Section;->padSectionBytes()V

    return-void
.end method

.method private calcSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->write(Ljava/io/OutputStream;)I

    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;->padSectionBytes()V

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method private padSectionBytes()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    iget-object v3, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    and-int/2addr v3, v1

    rsub-int/lit8 v3, v3, 0x4

    and-int/2addr v1, v3

    iget-object v3, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static propLen(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Long;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "J)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->nextKey(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    sub-long/2addr p2, v0

    long-to-int p0, p2

    return p0
.end method

.method private readDictionary(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;II)Z
    .locals 18

    move-object/from16 v0, p1

    const/4 v2, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const/4 v9, 0x0

    :goto_0
    int-to-long v10, v9

    cmp-long v12, v10, v4

    if-gez v12, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "The property set\'s dictionary contains bogus data. All dictionary entries starting with the one with ID "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " will be ignored."

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v12

    const/4 v7, -0x1

    move/from16 v14, p3

    if-ne v14, v7, :cond_0

    const/16 v7, 0x4e4

    goto :goto_1

    :cond_0
    move v7, v14

    :goto_1
    const-wide/16 v15, 0x1

    sub-long/2addr v12, v15

    const/16 v15, 0x4b0

    move/from16 v17, v9

    if-ne v7, v15, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    int-to-long v8, v1

    mul-long v12, v12, v8

    long-to-int v1, v12

    const v8, 0xffffff

    const/4 v9, 0x5

    if-le v1, v8, :cond_2

    sget-object v0, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v1, v8

    invoke-virtual {v0, v9, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_3
    const/4 v8, 0x1

    :goto_4
    move-object/from16 v1, p0

    goto :goto_6

    :cond_2
    const/4 v8, 0x0

    :try_start_0
    new-array v12, v1, [B

    invoke-virtual {v0, v12, v8, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    invoke-static {v12, v8, v1, v7}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BIII)Ljava/lang/String;

    move-result-object v12

    if-ne v7, v15, :cond_3

    const/4 v7, 0x2

    add-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v7

    goto :goto_5

    :cond_3
    const/4 v1, 0x1

    :goto_5
    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Ljava/io/InputStream;->skip(J)J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v17, 0x1

    move-wide v6, v10

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    aput-object v0, v4, v2

    invoke-virtual {v1, v9, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_4

    :goto_6
    invoke-virtual {v1, v3}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    xor-int/lit8 v0, v8, 0x1

    return v0
.end method

.method private writeDictionary(Ljava/io/OutputStream;I)I
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    int-to-long v3, v3

    .line 13
    invoke-static {v3, v4, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x4

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    invoke-static {v6, v7, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    const-string v7, "\u0000"

    .line 63
    .line 64
    invoke-static {v4, v7, v6}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    int-to-long v6, v6

    .line 73
    invoke-static {v6, v7, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x8

    .line 77
    .line 78
    invoke-static {v4, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 83
    .line 84
    .line 85
    array-length v4, v4

    .line 86
    add-int/2addr v3, v4

    .line 87
    const/16 v4, 0x4b0

    .line 88
    .line 89
    if-ne p2, v4, :cond_0

    .line 90
    .line 91
    and-int/lit8 v4, v3, 0x3

    .line 92
    .line 93
    rsub-int/lit8 v4, v4, 0x4

    .line 94
    .line 95
    and-int/lit8 v4, v4, 0x3

    .line 96
    .line 97
    invoke-virtual {p1, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    .line 99
    .line 100
    add-int/2addr v3, v4

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    and-int/lit8 p2, v3, 0x3

    .line 103
    .line 104
    sub-int/2addr v0, p2

    .line 105
    and-int/lit8 p2, v0, 0x3

    .line 106
    .line 107
    invoke-virtual {p1, v1, v5, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    .line 109
    .line 110
    add-int/2addr v3, p2

    .line 111
    return v3
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
.end method


# virtual methods
.method public clear()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/hpsf/Section;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/Property;

    iget-object v4, p1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Property;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Lorg/apache/poi/hpsf/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object p1

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public getCodepage()I
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDictionary()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getFormatID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    return-wide v0
.end method

.method public getPIDString(J)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getPIDString(Lorg/apache/poi/hpsf/ClassID;J)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hpsf/Property;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hpsf/Property;

    return-object v0
.end method

.method public getProperty(J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPropertyBooleanValue(I)Z
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getPropertyCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyIntValue(J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of p2, p1, Ljava/lang/Long;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This property is not an integer type, but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;->calcSize()I

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassID;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public removeProperty(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    return-void
.end method

.method public setCodepage(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setDictionary(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x4e4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public setFormatID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public setFormatID([B)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/ClassID;->setBytes([B)V

    return-void
.end method

.method public setProperties([Lorg/apache/poi/hpsf/Property;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProperty(II)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-wide/16 v0, 0x3

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(IJ)V
    .locals 2

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(IJLjava/lang/Object;)V
    .locals 7

    .line 3
    new-instance v6, Lorg/apache/poi/hpsf/MutableProperty;

    int-to-long v1, p1

    move-object v0, v6

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hpsf/MutableProperty;-><init>(JJLjava/lang/Object;)V

    invoke-virtual {p0, v6}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2

    .line 4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJ)V

    goto :goto_1

    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p2

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IZ)V

    goto :goto_1

    :cond_4
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x40

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    :goto_1
    return-void

    :cond_5
    new-instance p1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HPSF does not support properties of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 2

    .line 5
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(IZ)V
    .locals 2

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-wide/16 v0, 0xb

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lorg/apache/poi/hpsf/Property;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Property;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_1
    return-void
.end method

.method public setPropertyBooleanValue(IZ)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-wide/16 v0, 0xb

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\n\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "[formatID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", offset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, ", propertyCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", properties: [\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x4e4

    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5, v2, p1}, Lorg/apache/poi/hpsf/Property;->toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ",\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "]]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public wasNull()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    return v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/hpsf/Section;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "The codepage property is not set although a dictionary is present. Defaulting to ISO-8859-1."

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/16 v0, 0x4e4

    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    int-to-long v9, v4

    invoke-static {v9, v10, v3}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    invoke-virtual {v6, v2, v0}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I

    move-result v6

    add-int/2addr v6, v4

    move v4, v6

    goto :goto_0

    :cond_2
    if-eq v0, v1, :cond_3

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hpsf/Section;->writeDictionary(Ljava/io/OutputStream;I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    const-string v0, "Codepage (property 1) is undefined."

    invoke-direct {p1, v0}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return v1
.end method
