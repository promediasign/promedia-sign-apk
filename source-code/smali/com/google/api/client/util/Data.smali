.class public abstract Lcom/google/api/client/util/Data;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

.field public static final NULL_BIG_INTEGER:Ljava/math/BigInteger;

.field public static final NULL_BOOLEAN:Ljava/lang/Boolean;

.field public static final NULL_BYTE:Ljava/lang/Byte;

.field private static final NULL_CACHE:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL_CHARACTER:Ljava/lang/Character;

.field public static final NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

.field public static final NULL_DOUBLE:Ljava/lang/Double;

.field public static final NULL_FLOAT:Ljava/lang/Float;

.field public static final NULL_INTEGER:Ljava/lang/Integer;

.field public static final NULL_LONG:Ljava/lang/Long;

.field public static final NULL_SHORT:Ljava/lang/Short;

.field public static final NULL_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    sput-object v1, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    new-instance v2, Ljava/lang/Character;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v2, Lcom/google/api/client/util/Data;->NULL_CHARACTER:Ljava/lang/Character;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v3}, Ljava/lang/Byte;-><init>(B)V

    sput-object v4, Lcom/google/api/client/util/Data;->NULL_BYTE:Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Short;

    invoke-direct {v5, v3}, Ljava/lang/Short;-><init>(S)V

    sput-object v5, Lcom/google/api/client/util/Data;->NULL_SHORT:Ljava/lang/Short;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v6, Lcom/google/api/client/util/Data;->NULL_INTEGER:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/Float;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Ljava/lang/Float;-><init>(F)V

    sput-object v3, Lcom/google/api/client/util/Data;->NULL_FLOAT:Ljava/lang/Float;

    new-instance v7, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    sput-object v7, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    new-instance v10, Ljava/lang/Double;

    const-wide/16 v11, 0x0

    invoke-direct {v10, v11, v12}, Ljava/lang/Double;-><init>(D)V

    sput-object v10, Lcom/google/api/client/util/Data;->NULL_DOUBLE:Ljava/lang/Double;

    new-instance v11, Ljava/math/BigInteger;

    const-string v12, "0"

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/google/api/client/util/Data;->NULL_BIG_INTEGER:Ljava/math/BigInteger;

    new-instance v13, Ljava/math/BigDecimal;

    invoke-direct {v13, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/google/api/client/util/Data;->NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

    new-instance v12, Lcom/google/api/client/util/DateTime;

    invoke-direct {v12, v8, v9}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    sput-object v12, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/google/api/client/util/Data;->NULL_CACHE:Lj$/util/concurrent/ConcurrentHashMap;

    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Character;

    invoke-virtual {v8, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v8, v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Short;

    invoke-virtual {v8, v0, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v8, v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Float;

    invoke-virtual {v8, v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v8, v0, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v8, v0, v10}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {v8, v0, v11}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v8, v0, v13}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/api/client/util/DateTime;

    invoke-virtual {v8, v0, v12}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/google/api/client/util/GenericData;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/api/client/util/GenericData;

    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/google/api/client/util/ArrayMap;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v0}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.util.Arrays$ArrayList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p0}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    :goto_1
    return-object p0
.end method

.method private static createNullInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v1, [I

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    const-string v3, "enum missing constant with @NullValue annotation: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    invoke-static {p0}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v1

    goto :goto_2

    :cond_2
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p0, Ljava/util/Collection;

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_3
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_6

    :cond_5
    const-class v1, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p1, Lcom/google/api/client/util/ArrayMap;

    check-cast p0, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_b

    invoke-virtual {p0, v2}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    check-cast p1, Ljava/util/Map;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    goto :goto_7

    :cond_8
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    :goto_7
    iget-object v2, v0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Lcom/google/api/client/util/FieldInfo;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_a
    invoke-virtual {v3, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    return-void
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .locals 2

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_2

    const-class v0, Lcom/google/api/client/util/DateTime;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isValueOfPrimitiveType(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static mapOf(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/api/client/util/DataMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/util/DataMap;-><init>(Ljava/lang/Object;Z)V

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_7

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_7

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    const-class p0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_4
    const-class p0, Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    :cond_5
    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to create new instance of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static newMapInstance(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const-class v0, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static nullOf(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/google/api/client/util/Data;->createNullInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    :cond_1
    const-class v2, Ljava/lang/Void;

    .line 16
    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_2
    if-eqz p1, :cond_1a

    .line 21
    .line 22
    if-eqz v0, :cond_1a

    .line 23
    .line 24
    const-class v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    goto/16 :goto_9

    .line 33
    .line 34
    :cond_3
    const-class v1, Ljava/lang/Character;

    .line 35
    .line 36
    if-eq v0, v1, :cond_18

    .line 37
    .line 38
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    if-ne v0, v1, :cond_4

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_4
    const-class v1, Ljava/lang/Boolean;

    .line 45
    .line 46
    if-eq v0, v1, :cond_17

    .line 47
    .line 48
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    if-ne v0, v1, :cond_5

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_5
    const-class v1, Ljava/lang/Byte;

    .line 55
    .line 56
    if-eq v0, v1, :cond_16

    .line 57
    .line 58
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    if-ne v0, v1, :cond_6

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_6
    const-class v1, Ljava/lang/Short;

    .line 65
    .line 66
    if-eq v0, v1, :cond_15

    .line 67
    .line 68
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    if-ne v0, v1, :cond_7

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_7
    const-class v1, Ljava/lang/Integer;

    .line 75
    .line 76
    if-eq v0, v1, :cond_14

    .line 77
    .line 78
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    if-ne v0, v1, :cond_8

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_8
    const-class v1, Ljava/lang/Long;

    .line 85
    .line 86
    if-eq v0, v1, :cond_13

    .line 87
    .line 88
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 89
    .line 90
    if-ne v0, v1, :cond_9

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_9
    const-class v1, Ljava/lang/Float;

    .line 95
    .line 96
    if-eq v0, v1, :cond_12

    .line 97
    .line 98
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 99
    .line 100
    if-ne v0, v1, :cond_a

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_a
    const-class v1, Ljava/lang/Double;

    .line 104
    .line 105
    if-eq v0, v1, :cond_11

    .line 106
    .line 107
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 108
    .line 109
    if-ne v0, v1, :cond_b

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_b
    const-class v1, Lcom/google/api/client/util/DateTime;

    .line 113
    .line 114
    if-ne v0, v1, :cond_c

    .line 115
    .line 116
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_c
    const-class v1, Ljava/math/BigInteger;

    .line 122
    .line 123
    if-ne v0, v1, :cond_d

    .line 124
    .line 125
    new-instance p0, Ljava/math/BigInteger;

    .line 126
    .line 127
    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_d
    const-class v1, Ljava/math/BigDecimal;

    .line 132
    .line 133
    if-ne v0, v1, :cond_e

    .line 134
    .line 135
    new-instance p0, Ljava/math/BigDecimal;

    .line 136
    .line 137
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_10

    .line 146
    .line 147
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iget-object p0, p0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_f

    .line 158
    .line 159
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string v0, "given enum name "

    .line 175
    .line 176
    const-string v1, " not part of enumeration"

    .line 177
    .line 178
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v1, "expected primitive class, but got: "

    .line 191
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_11
    :goto_1
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :cond_12
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    :cond_13
    :goto_3
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :cond_14
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :cond_15
    :goto_5
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :cond_16
    :goto_6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    return-object p0

    .line 236
    :cond_17
    :goto_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :cond_18
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    const/4 v1, 0x1

    .line 246
    if-ne p0, v1, :cond_19

    .line 247
    .line 248
    const/4 p0, 0x0

    .line 249
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 259
    .line 260
    const-string p1, "expected type Character/char but got "

    .line 261
    .line 262
    invoke-static {p1, v0}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p0

    .line 270
    :cond_1a
    :goto_9
    return-object p1
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
.end method

.method public static resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p1}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p1

    :cond_0
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    nop

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_2
    return-object p1
.end method
