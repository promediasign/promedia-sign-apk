.class public Lorg/apache/xmlbeans/impl/schema/StscJavaizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PREFIXES:[Ljava/lang/String;

.field static PROTECTED_PROPERTIES:[Ljava/lang/String;

.field static PROTECTED_PROPERTIES_SET:Ljava/util/Set;

.field static synthetic class$org$apache$xmlbeans$impl$schema$StscJavaizer:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->class$org$apache$xmlbeans$impl$schema$StscJavaizer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.StscJavaizer"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->class$org$apache$xmlbeans$impl$schema$StscJavaizer:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->$assertionsDisabled:Z

    const-string v14, "addNew"

    const-string v15, "remove"

    const-string v1, "get"

    const-string v2, "xget"

    const-string v3, "isNil"

    const-string v4, "isSet"

    const-string v5, "sizeOf"

    const-string v6, "set"

    const-string v7, "xset"

    const-string v8, "addNew"

    const-string v9, "setNil"

    const-string v10, "unset"

    const-string v11, "insert"

    const-string v12, "add"

    const-string v13, "insertNew"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->PREFIXES:[Ljava/lang/String;

    const-string v19, "ObjectValue"

    const-string v20, "Class"

    const-string v1, "StringValue"

    const-string v2, "BooleanValue"

    const-string v3, "ByteValue"

    const-string v4, "ShortValue"

    const-string v5, "IntValue"

    const-string v6, "LongValue"

    const-string v7, "BigIntegerValue"

    const-string v8, "BigDecimalValue"

    const-string v9, "FloatValue"

    const-string v10, "DoubleValue"

    const-string v11, "ByteArrayValue"

    const-string v12, "EnumValue"

    const-string v13, "CalendarValue"

    const-string v14, "DateValue"

    const-string v15, "GDateValue"

    const-string v16, "GDurationValue"

    const-string v17, "QNameValue"

    const-string v18, "ListValue"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->PROTECTED_PROPERTIES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->PROTECTED_PROPERTIES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->PROTECTED_PROPERTIES_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAnonymousTypesFromRedefinition(Lorg/apache/xmlbeans/SchemaType;Ljava/util/List;)V
    .locals 2

    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getDerivationType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static assignGlobalJavaNames(Ljava/util/Collection;)V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->findTopName(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isDocumentType()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v3, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->getJavaname(Lorg/apache/poi/javax/xml/namespace/QName;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isUnjavaized()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->findTopName(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isDocumentType()Z

    move-result v5

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isAttributeType()Z

    move-result v6

    invoke-static {v0, v4, v3, v5, v6}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickFullJavaClassName(Ljava/util/Set;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickFullJavaImplName(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaImplName(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->setUserTypes(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/StscState;)V

    invoke-static {v2, v1}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->setExtensions(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/StscState;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->verifyInterfaceNameCollisions(Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/StscState;)V

    return-void
.end method

.method public static assignJavaAnonymousTypeNames(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 13

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v4}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->addAnonymousTypesFromRedefinition(Lorg/apache/xmlbeans/SchemaType;Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v3

    new-array v6, v6, [Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v1, v5, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v6

    :cond_0
    move-object v4, p0

    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, p0

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaImplName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->getOutermostPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    array-length v4, v1

    if-ge v5, v4, :cond_c

    aget-object v4, v1, v5

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSkippedAnonymousType()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->getJavaname(Lorg/apache/poi/javax/xml/namespace/QName;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_8

    const/4 v8, 0x3

    if-eq v6, v8, :cond_7

    sget-boolean v6, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->$assertionsDisabled:Z

    if-eqz v6, :cond_6

    const-string v8, "Base"

    :goto_3
    move-object v6, v7

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Weird type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_7
    const-string v8, "Item"

    goto :goto_3

    :cond_8
    const-string v8, "Member"

    goto :goto_3

    :goto_4
    const-string v9, "Impl"

    if-ge v5, v3, :cond_a

    invoke-static {v0, v6, v8}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickInnerJavaClassName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setShortJavaName(Ljava/lang/String;)V

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-static {v0, v6, v7}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickInnerJavaImplName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setShortJavaImplName(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, v6, v8}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickInnerJavaClassName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaName(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaImplName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-static {v0, v6, v7}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickInnerJavaImplName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaImplName(Ljava/lang/String;)V

    :goto_7
    invoke-static {v4, v2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->setExtensions(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/StscState;)V

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method public static assignJavaPropertyNames(Ljava/util/Set;[Lorg/apache/xmlbeans/SchemaProperty;Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 10

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_d

    aget-object v3, p1, v2

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->isAttribute()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eq v6, p3, :cond_2

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    if-nez v4, :cond_4

    invoke-virtual {v6}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->isAttribute()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x4

    goto :goto_3

    :cond_3
    const/4 v8, 0x3

    :goto_3
    invoke-virtual {v0, v6, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getJavaname(Lorg/apache/poi/javax/xml/namespace/QName;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v7, v6}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickJavaPropertyName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v3, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setJavaPropertyName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v6, 0x1

    :goto_6
    if-nez v6, :cond_7

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_8

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v9

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_9
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v7, 0x1

    :cond_a
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_9

    :cond_b
    move v5, v8

    :goto_9
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v9

    move v8, v5

    :cond_c
    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setExtendsJava(Lorg/apache/xmlbeans/SchemaType$Ref;ZZZ)V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static assignJavaTypeCodes([Lorg/apache/xmlbeans/SchemaProperty;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaTypeCodeForType(Lorg/apache/xmlbeans/SchemaType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setJavaTypeCode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static avoidExtensionMethods(Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 8

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/InterfaceExtension;->getMethods()[Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    sget-object v6, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->PREFIXES:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
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
.end method

.method public static findTopName(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttributes()[Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_0
    if-nez v1, :cond_8

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public static getOutermostPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPropertyModelOrderInsensitive([Lorg/apache/xmlbeans/SchemaProperty;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v4

    if-ne v4, v3, :cond_0

    return v0

    :cond_0
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v4

    if-ne v4, v3, :cond_1

    return v0

    :cond_1
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v4

    if-ne v4, v3, :cond_2

    return v0

    :cond_2
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private static isStringType(Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static javaTypeCodeForType(Lorg/apache/xmlbeans/SchemaType;)I
    .locals 7

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeHandlerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isURType()Z

    move-result v3

    if-nez v3, :cond_2

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaTypeCodeInCommon([Lorg/apache/xmlbeans/SchemaType;)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/16 v3, 0x10

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    return v3

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isURType()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v5, 0xb

    const/16 v6, 0xa

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->$assertionsDisabled:Z

    const-string v1, "unrecognized code "

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x11

    return p0

    :pswitch_1
    const/16 p0, 0xd

    return p0

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->isStringType(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0xe54

    if-le p0, v0, :cond_7

    return v6

    :cond_7
    const/16 p0, 0x12

    return p0

    :cond_8
    return v6

    :pswitch_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_d

    if-eq p0, v3, :cond_c

    const/16 v1, 0x20

    if-eq p0, v1, :cond_b

    const/16 v1, 0x40

    if-eq p0, v1, :cond_a

    const v1, 0xf4240

    if-eq p0, v1, :cond_9

    return v0

    :cond_9
    const/16 p0, 0x9

    return p0

    :cond_a
    const/4 p0, 0x7

    return p0

    :cond_b
    const/4 p0, 0x6

    return p0

    :cond_c
    const/4 p0, 0x5

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0

    :pswitch_4
    return v4

    :pswitch_5
    return v2

    :pswitch_6
    return v1

    :pswitch_7
    const/16 p0, 0xf

    return p0

    :pswitch_8
    return v6

    :pswitch_9
    return v5

    :pswitch_a
    const/4 p0, 0x1

    return p0

    :pswitch_b
    return v6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static javaTypeCodeInCommon([Lorg/apache/xmlbeans/SchemaType;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v0, p0, v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaTypeCodeForType(Lorg/apache/xmlbeans/SchemaType;)I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaTypeCodeForType(Lorg/apache/xmlbeans/SchemaType;)I

    move-result v3

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static javaizeAllTypes(Z)V
    .locals 7

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_0

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->assignGlobalJavaNames(Ljava/util/Collection;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType;

    move-object v4, v3

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz p0, :cond_1

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaizeType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v5, 0x24

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addClassname(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)V

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->skipJavaizingType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    :cond_2
    :goto_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3, v1}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->addAnonymousTypesFromRedefinition(Lorg/apache/xmlbeans/SchemaType;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static javaizeType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isJavaized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaizeType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaizeType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->startJavaizing()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setCompiled(Z)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->secondPassProcessType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElementProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_5

    aget-object v8, v5, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->$assertionsDisabled:Z

    if-nez v9, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4, p0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->avoidExtensionMethods(Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    const/4 v5, 0x1

    :goto_2
    array-length v7, v2

    if-lez v7, :cond_6

    invoke-static {v4, v2, v0, v5}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->assignJavaPropertyNames(Ljava/util/Set;[Lorg/apache/xmlbeans/SchemaProperty;Lorg/apache/xmlbeans/SchemaType;Z)V

    :cond_6
    invoke-static {v4, v3, v0, v5}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->assignJavaPropertyNames(Ljava/util/Set;[Lorg/apache/xmlbeans/SchemaProperty;Lorg/apache/xmlbeans/SchemaType;Z)V

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->isPropertyModelOrderInsensitive([Lorg/apache/xmlbeans/SchemaProperty;)Z

    move-result v2

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->assignJavaTypeCodes([Lorg/apache/xmlbeans/SchemaProperty;)V

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrderSensitive(Z)V

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->assignJavaAnonymousTypeNames(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finishJavaizing()V

    return-void
.end method

.method public static pickConstantName(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCaseUnderbar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "X"

    :cond_0
    const-string v0, "INT_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "X_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    move-object v1, p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/2addr v2, v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static pickFullJavaClassName(Ljava/util/Set;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x2e

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->protectReservedGlobalClassNames(Ljava/lang/String;)Z

    move-result p1

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->getClassNameFromQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->getPackageOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "."

    .line 1
    invoke-static {v4, v5}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->getJavaPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p2, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->protectReservedGlobalClassNames(Ljava/lang/String;)Z

    move-result v0

    if-nez p2, :cond_7

    if-eqz p3, :cond_5

    const-string p2, "Document"

    .line 3
    :goto_0
    invoke-static {p1, p2}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    move-object p2, p1

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_4

    .line 4
    const-string p2, "Attribute"

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->getJavaSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    invoke-static {p2, p1}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    :goto_2
    move p1, v0

    goto :goto_3

    :cond_7
    move-object p2, p1

    goto :goto_2

    .line 6
    :goto_3
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->getOutermostPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    const/4 p4, 0x1

    goto :goto_5

    :cond_8
    move-object p1, p2

    goto :goto_4

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_a
    :goto_6
    add-int/2addr p4, v1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method

.method public static pickFullJavaImplName(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    move-object p1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".impl."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "Impl"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    move-object v1, p1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/2addr v2, v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static pickInnerJavaClassName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->protectReservedInnerClassNames(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move-object p1, p2

    goto :goto_0

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/2addr v1, v0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static pickInnerJavaImplName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "Impl"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 p1, 0x1

    move-object v0, p2

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/2addr v1, p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static pickJavaPropertyName(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->protectReservedPropertyNames(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move-object p1, p2

    goto :goto_0

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/2addr v1, v0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static protectReservedGlobalClassNames(Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static protectReservedInnerClassNames(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Factory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static protectReservedPropertyNames(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->PROTECTED_PROPERTIES_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Array"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public static secondPassProcessType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 8

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->isStringType(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/16 v2, 0xe54

    if-le v1, v2, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "SchemaType Enumeration found with too many enumeration values to create a Java enumeration. The base SchemaType \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\" will be used instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_2

    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, p0, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/xmlbeans/impl/schema/SchemaStringEnumEntryImpl;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v2, v4}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->pickConstantName(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaStringEnumEntryImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v5, v1, v3

    move v3, v6

    goto :goto_0

    :cond_1
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/xmlbeans/SchemaType;->enumEntryForString(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setStringEnumEntries([Lorg/apache/xmlbeans/SchemaStringEnumEntry;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static setExtensions(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/StscState;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getBindingConfig()Lorg/apache/xmlbeans/BindingConfig;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/BindingConfig;->getInterfaceExtensions(Ljava/lang/String;)[Lorg/apache/xmlbeans/InterfaceExtension;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setInterfaceExtensions([Lorg/apache/xmlbeans/InterfaceExtension;)V

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/BindingConfig;->getPrePostExtension(Ljava/lang/String;)Lorg/apache/xmlbeans/PrePostExtension;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrePostExtension(Lorg/apache/xmlbeans/PrePostExtension;)V

    :cond_0
    return-void
.end method

.method private static setUserTypes(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/schema/StscState;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getBindingConfig()Lorg/apache/xmlbeans/BindingConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/BindingConfig;->lookupUserTypeForQName(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/UserType;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/UserType;->getJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUserTypeName(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/UserType;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUserTypeHandlerName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static skipJavaizingType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isJavaized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->skipJavaizingType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->startJavaizing()V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->secondPassProcessType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finishJavaizing()V

    return-void
.end method

.method private static verifyInterfaceNameCollisions(Ljava/util/Set;Lorg/apache/xmlbeans/impl/schema/StscState;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getBindingConfig()Lorg/apache/xmlbeans/BindingConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/BindingConfig;->getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    array-length v4, v1

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v6, "\' creates a name collision with one of the generated interfaces or classes."

    .line 17
    .line 18
    if-ge v3, v4, :cond_3

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    invoke-interface {v4}, Lorg/apache/xmlbeans/InterfaceExtension;->getInterface()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuffer;

    .line 37
    .line 38
    const-string v7, "InterfaceExtension interface \'"

    .line 39
    .line 40
    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    aget-object v7, v1, v3

    .line 44
    .line 45
    invoke-interface {v7}, Lorg/apache/xmlbeans/InterfaceExtension;->getInterface()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p1, v4, v2, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    aget-object v4, v1, v3

    .line 63
    .line 64
    invoke-interface {v4}, Lorg/apache/xmlbeans/InterfaceExtension;->getStaticHandler()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-interface {p0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    const-string v7, "InterfaceExtension handler class \'"

    .line 81
    .line 82
    invoke-static {v7, v4, v6}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {p1, v4, v2, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/BindingConfig;->getPrePostExtensions()[Lorg/apache/xmlbeans/PrePostExtension;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/4 v1, 0x0

    .line 97
    :goto_1
    array-length v3, v0

    .line 98
    if-ge v1, v3, :cond_5

    .line 99
    .line 100
    aget-object v3, v0, v1

    .line 101
    .line 102
    invoke-interface {v3}, Lorg/apache/xmlbeans/PrePostExtension;->getStaticHandler()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    const-string v4, "PrePostExtension handler class \'"

    .line 119
    .line 120
    invoke-static {v4, v3, v6}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p1, v3, v2, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    return-void
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
.end method
