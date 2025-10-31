.class public Lorg/apache/xmlbeans/impl/tool/FactorImports;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static commonAncestor(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 5

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    const/16 p1, 0x2f

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    :cond_3
    const/4 p1, 0x0

    if-gez v2, :cond_4

    return-object p1

    :cond_4
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p1
.end method

.method private static commonFileFor(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/io/File;
    .locals 2

    if-lez p2, :cond_1

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static isDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isFirstDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v1, p1, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "warning: "

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "help"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "usage"

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "license"

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "version"

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    const-string v9, "import"

    const-string v10, "out"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v8, v0, v2, v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    invoke-virtual {v8, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    array-length v0, v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto/16 :goto_25

    :cond_0
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Unrecognized option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->printUsage()V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_2
    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_4
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-eq v4, v2, :cond_5

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_5
    invoke-virtual {v8, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, "common.xsd"

    :cond_6
    invoke-virtual {v8, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Using output directory \'out\'"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v10, v5

    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    aget-object v0, v0, v3

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getFiles()[Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v16, v6

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v17, v4

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v18, v5

    const/4 v5, 0x0

    :goto_2
    array-length v0, v7

    const-string v19, ""

    if-ge v5, v0, :cond_11

    :try_start_0
    aget-object v0, v7, v5

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Factory;->parse(Ljava/io/File;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v6

    :try_start_1
    aget-object v6, v7, v5

    invoke-virtual {v8, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->sizeOfImportArray()I

    move-result v6

    if-gtz v6, :cond_9

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->sizeOfIncludeArray()I

    move-result v6

    if-lez v6, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v22, v1

    move-object/from16 v21, v8

    goto :goto_5

    :catch_0
    move-exception v0

    move/from16 v23, v5

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v22, v1

    move/from16 v23, v5

    move-object/from16 v21, v8

    :goto_3
    move-object/from16 v8, v20

    goto/16 :goto_e

    :cond_9
    :goto_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v21, v8

    :try_start_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v22, v1

    :try_start_3
    aget-object v1, v7, v5

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " contains imports or includes that are being ignored."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move-object/from16 v1, v19

    :cond_a
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getComplexTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    move-result-object v6
    :try_end_3
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v23, v5

    const/4 v8, 0x0

    :goto_6
    :try_start_4
    array-length v5, v6

    if-ge v8, v5, :cond_b

    aget-object v5, v6, v8

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v11, v3, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->noteName(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_d

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_b
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getSimpleTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    move-result-object v5

    const/4 v6, 0x0

    :goto_7
    array-length v8, v5

    if-ge v6, v8, :cond_c

    aget-object v8, v5, v6

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v11, v3, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->noteName(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getElementArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object v5

    const/4 v6, 0x0

    :goto_8
    array-length v8, v5

    if-ge v6, v8, :cond_d

    aget-object v8, v5, v6

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v9, v14, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->noteName(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;

    move-result-object v5

    const/4 v6, 0x0

    :goto_9
    array-length v8, v5

    if-ge v6, v8, :cond_e

    aget-object v8, v5, v6

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v10, v15, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->noteName(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_e
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    move-result-object v5

    const/4 v6, 0x0

    :goto_a
    array-length v8, v5

    if-ge v6, v8, :cond_f

    aget-object v8, v5, v6

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v12, v2, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->noteName(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    move-result-object v0

    const/4 v5, 0x0

    :goto_b
    array-length v6, v0

    if-ge v5, v6, :cond_10

    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v8, v20

    :try_start_5
    invoke-static {v6, v1, v13, v8, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->noteName(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_5
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v20, v8

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_e

    :cond_10
    move-object/from16 v8, v20

    goto :goto_f

    :catch_5
    move-exception v0

    :goto_c
    move/from16 v23, v5

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v22, v1

    move/from16 v23, v5

    move-object/from16 v21, v8

    move-object v8, v6

    goto :goto_e

    :goto_d
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unable to load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v3, v7, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :goto_e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    move-object/from16 v6, v22

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v6, v7, v23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v6, " is not a schema file - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getError()Lorg/apache/xmlbeans/XmlError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v5, v23, 0x1

    move-object v6, v8

    move-object/from16 v8, v21

    move-object/from16 v1, v22

    goto/16 :goto_2

    :cond_11
    move-object/from16 v21, v8

    move-object v8, v6

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No schema files found."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_12
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-nez v0, :cond_13

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No duplicate names found."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    const/4 v5, 0x0

    goto :goto_10

    :cond_14
    const/4 v5, 0x1

    :goto_10
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "<xs:schema xmlns:xs=\'http://www.w3.org/2001/XMLSchema\'/>"

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_15

    move-object/from16 v20, v4

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4, v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_12

    :cond_15
    move-object/from16 v20, v4

    :goto_12
    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    move-object/from16 v22, v13

    sget-object v13, Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;->QUALIFIED:Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;

    invoke-interface {v4, v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->setElementFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v5, 0x1

    move-object/from16 v13, v17

    move/from16 v17, v4

    move-object/from16 v4, v18

    invoke-static {v13, v6, v5, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->commonFileFor(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v5, v17

    move-object/from16 v4, v20

    move-object/from16 v17, v13

    move-object/from16 v13, v22

    goto :goto_11

    :cond_16
    move-object/from16 v22, v13

    move-object/from16 v4, v18

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_17

    move-object/from16 v7, v19

    :cond_17
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v17

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getComplexTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    move-result-object v0

    move-object/from16 v17, v5

    array-length v5, v0

    const/16 v20, 0x1

    add-int/lit8 v5, v5, -0x1

    const/16 v20, 0x0

    :goto_14
    if-ltz v5, :cond_1a

    aget-object v23, v0, v5

    move-object/from16 v24, v1

    invoke-interface/range {v23 .. v23}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v3}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_18

    move-object/from16 v23, v4

    goto :goto_16

    :cond_18
    aget-object v1, v0, v5

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v11, v3}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isFirstDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    move-result-object v1

    move-object/from16 v23, v4

    aget-object v4, v0, v5

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_15

    :cond_19
    move-object/from16 v23, v4

    :goto_15
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->removeComplexType(I)V

    const/16 v20, 0x1

    :goto_16
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v4, v23

    move-object/from16 v1, v24

    goto :goto_14

    :cond_1a
    move-object/from16 v24, v1

    move-object/from16 v23, v4

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getSimpleTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_17
    array-length v4, v0

    if-ge v1, v4, :cond_1d

    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v3}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_18

    :cond_1b
    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v11, v3}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isFirstDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelSimpleType;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_1c
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->removeSimpleType(I)V

    const/16 v20, 0x1

    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_1d
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getElementArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_19
    array-length v4, v0

    if-ge v1, v4, :cond_20

    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v14}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_1a

    :cond_1e
    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v9, v14}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isFirstDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_1f
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->removeElement(I)V

    const/16 v20, 0x1

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_20
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getAttributeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1b
    array-length v4, v0

    if-ge v1, v4, :cond_23

    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v15}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_1c

    :cond_21
    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v10, v15}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isFirstDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_22
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->removeElement(I)V

    const/16 v20, 0x1

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_23
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1d
    array-length v4, v0

    if-ge v1, v4, :cond_26

    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v2}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_1e

    :cond_24
    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v12, v2}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isFirstDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_25
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->removeElement(I)V

    const/16 v20, 0x1

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_26
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getAttributeGroupArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1f
    array-length v4, v0

    if-ge v1, v4, :cond_29

    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_27

    move-object/from16 v5, v22

    move-object/from16 v22, v2

    goto :goto_21

    :cond_27
    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/NamedAttributeGroup;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    invoke-static {v4, v7, v5, v8}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->isFirstDuplicate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object v4

    move-object/from16 v22, v2

    aget-object v2, v0, v1

    invoke-interface {v4, v2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_20

    :cond_28
    move-object/from16 v22, v2

    :goto_20
    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->removeElement(I)V

    const/16 v20, 0x1

    :goto_21
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v22

    move-object/from16 v22, v5

    goto :goto_1f

    :cond_29
    move-object/from16 v5, v22

    move-object/from16 v22, v2

    if-eqz v20, :cond_2a

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewInclude()Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    move-object/from16 v6, v16

    move-object/from16 v4, v23

    invoke-static {v2, v6, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->outputFileFor(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    move-object/from16 v7, v24

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-static {v2, v13}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->relativeURIFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;->setSchemaLocation(Ljava/lang/String;)V

    goto :goto_22

    :cond_2a
    move-object/from16 v6, v16

    move-object/from16 v1, v21

    move-object/from16 v4, v23

    move-object/from16 v7, v24

    :goto_22
    move-object/from16 v21, v1

    move-object/from16 v16, v6

    move-object v1, v7

    move-object/from16 v0, v18

    move-object/from16 v2, v22

    move-object/from16 v22, v5

    move-object/from16 v5, v17

    goto/16 :goto_13

    :cond_2b
    move-object v7, v1

    move-object/from16 v6, v16

    move-object/from16 v1, v21

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unable to makedir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_2c
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3, v6, v4}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->outputFileFor(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "Cannot copy "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23

    :cond_2d
    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggresiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    goto :goto_23

    :cond_2e
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggresiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    goto :goto_24

    :cond_2f
    return-void

    :cond_30
    :goto_25
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->printUsage()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static noteName(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static outputFileFor(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Cannot relativize "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object p1
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Refactors a directory of XSD files to remove name conflicts."

    .line 4
    .line 5
    const-string v2, "Usage: sfactor [-import common.xsd] [-out outputdir] inputdir"

    .line 6
    .line 7
    const-string v3, "    -import common.xsd - The XSD file to contain redundant "

    .line 8
    .line 9
    const-string v4, "                         definitions for importing."

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "    -out outputdir - The directory into which to place XSD "

    .line 15
    .line 16
    const-string v2, "                     files resulting from refactoring, "

    .line 17
    .line 18
    const-string v3, "                     plus a commonly imported common.xsd."

    .line 19
    .line 20
    const-string v4, "    inputdir - The directory containing the XSD files with"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "               redundant definitions."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "    -license - Print license information."

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 36
    .line 37
    .line 38
    return-void
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
.end method

.method private static relativeURIFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/tool/FactorImports;->commonAncestor(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-virtual {v0, p0}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, ""

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ge v1, v2, :cond_3

    .line 61
    .line 62
    const/16 v2, 0x2f

    .line 63
    .line 64
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-gez v1, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const-string v2, "../"

    .line 72
    .line 73
    invoke-static {p1, v2}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    invoke-static {p1}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
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
.end method
