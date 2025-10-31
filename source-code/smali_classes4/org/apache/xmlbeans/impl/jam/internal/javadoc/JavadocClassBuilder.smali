.class public Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;
.super Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/provider/JamClassPopulator;


# static fields
.field public static final ARGS_PROPERTY:Ljava/lang/String; = "javadoc.args"

.field public static final PARSETAGS_PROPERTY:Ljava/lang/String; = "javadoc.parsetags"


# instance fields
.field private mParseTags:Z

.field private mRootDoc:Lcom/sun/javadoc/RootDoc;

.field private mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

.field private mTigerDelegate:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mRootDoc:Lcom/sun/javadoc/RootDoc;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTigerDelegate:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mParseTags:Z

    return-void
.end method

.method private addAnnotations(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/ProgramElementDoc;)V
    .locals 5

    invoke-interface {p2}, Lcom/sun/javadoc/ProgramElementDoc;->commentText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;->createComment()Lorg/apache/xmlbeans/impl/jam/mutable/MComment;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MComment;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lcom/sun/javadoc/ProgramElementDoc;->tags()[Lcom/sun/javadoc/Tag;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "...\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-interface {v4}, Lcom/sun/javadoc/Tag;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\' \' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v0, v1

    invoke-interface {v4}, Lcom/sun/javadoc/Tag;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    aget-object v3, v0, v1

    invoke-virtual {v2, p1, v3}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->parse(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/Tag;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTigerDelegate:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;->extractAnnotations(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/ProgramElementDoc;)V

    :cond_3
    return-void
.end method

.method public static addSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MElement;Lcom/sun/javadoc/Doc;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/sun/javadoc/Doc;->position()Lcom/sun/javadoc/SourcePosition;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->addSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MElement;Lcom/sun/javadoc/SourcePosition;)V

    :cond_0
    return-void
.end method

.method public static addSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MElement;Lcom/sun/javadoc/SourcePosition;)V
    .locals 1

    .line 2
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->createSourcePosition()Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;

    move-result-object p0

    invoke-interface {p1}, Lcom/sun/javadoc/SourcePosition;->column()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;->setColumn(I)V

    invoke-interface {p1}, Lcom/sun/javadoc/SourcePosition;->line()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;->setLine(I)V

    invoke-interface {p1}, Lcom/sun/javadoc/SourcePosition;->file()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MSourcePosition;->setSourceURI(Ljava/net/URI;)V

    :cond_0
    return-void
.end method

.method public static getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/sun/javadoc/Type;->dimension()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sun/javadoc/Type;->qualifiedTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->getPrimitiveClassForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v0, "L"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/sun/javadoc/Type;->asClassDoc()Lcom/sun/javadoc/ClassDoc;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/sun/javadoc/Type;->asClassDoc()Lcom/sun/javadoc/ClassDoc;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/javadoc/ClassDoc;->qualifiedName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Lcom/sun/javadoc/Type;->qualifiedTypeName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :goto_2
    const-string p0, ";"

    invoke-virtual {v1, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Lcom/sun/javadoc/Type;->asClassDoc()Lcom/sun/javadoc/ClassDoc;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->containingClass()Lcom/sun/javadoc/ClassDoc;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->qualifiedName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lcom/sun/javadoc/ClassDoc;->qualifiedName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x24

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-interface {p0}, Lcom/sun/javadoc/Type;->qualifiedTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getJavadocArgs(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)[Ljava/lang/String;
    .locals 4

    const-string v0, "javadoc.args"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private initDelegate(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;->create(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTigerDelegate:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;

    return-void
.end method

.method private initJavadoc(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)V
    .locals 10

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getTagParser()Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    const-string v0, "javadoc.parsetags"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mParseTags:Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "mParseTags="

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mParseTags:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getSourceFiles()[Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_a

    array-length v0, v3

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getInputSourcepath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getInputSourcepath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getInputClasspath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v6, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;->getInputClasspath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "sourcePath ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "classPath ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, "including \'"

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocRunner;->newInstance()Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocRunner;

    move-result-object v2

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    goto :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_4
    move-object v4, v1

    :goto_3
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getJavadocArgs(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocRunner;->run([Ljava/io/File;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;)Lcom/sun/javadoc/RootDoc;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mRootDoc:Lcom/sun/javadoc/RootDoc;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object p1

    const-string v0, "Javadoc returned a null root"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mRootDoc:Lcom/sun/javadoc/RootDoc;

    invoke-interface {v2}, Lcom/sun/javadoc/RootDoc;->classes()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " ClassDocs from javadoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mRootDoc:Lcom/sun/javadoc/RootDoc;

    invoke-interface {v0}, Lcom/sun/javadoc/RootDoc;->classes()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v0

    :goto_4
    array-length v1, v0

    if-ge v9, v1, :cond_9

    aget-object v1, v0, v9

    invoke-interface {v1}, Lcom/sun/javadoc/ClassDoc;->containingClass()Lcom/sun/javadoc/ClassDoc;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v0, v9

    invoke-interface {v3}, Lcom/sun/javadoc/ClassDoc;->qualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    :cond_8
    move-object v1, p1

    check-cast v1, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;

    aget-object v2, v0, v9

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->includeClass(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :goto_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No source files in context."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method private populate(Lorg/apache/xmlbeans/impl/jam/mutable/MField;Lcom/sun/javadoc/FieldDoc;)V
    .locals 1

    .line 2
    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setArtifact(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/sun/javadoc/FieldDoc;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setSimpleName(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sun/javadoc/FieldDoc;->type()Lcom/sun/javadoc/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MField;->setType(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sun/javadoc/FieldDoc;->modifierSpecifier()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MMember;->setModifiers(I)V

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->addAnnotations(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/ProgramElementDoc;)V

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->addSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MElement;Lcom/sun/javadoc/Doc;)V

    return-void
.end method

.method private populate(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;Lcom/sun/javadoc/ExecutableMemberDoc;)V
    .locals 4

    .line 3
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setArtifact(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/sun/javadoc/ExecutableMemberDoc;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setSimpleName(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sun/javadoc/ExecutableMemberDoc;->modifierSpecifier()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MMember;->setModifiers(I)V

    invoke-interface {p2}, Lcom/sun/javadoc/ExecutableMemberDoc;->thrownExceptions()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;->addException(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/sun/javadoc/ExecutableMemberDoc;->parameters()[Lcom/sun/javadoc/Parameter;

    move-result-object v0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;->addNewParameter()Lorg/apache/xmlbeans/impl/jam/mutable/MParameter;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-direct {p0, v2, p2, v3}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->populate(Lorg/apache/xmlbeans/impl/jam/mutable/MParameter;Lcom/sun/javadoc/ExecutableMemberDoc;Lcom/sun/javadoc/Parameter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->addAnnotations(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/ProgramElementDoc;)V

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->addSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MElement;Lcom/sun/javadoc/Doc;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null src"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null dest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private populate(Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;Lcom/sun/javadoc/MethodDoc;)V
    .locals 0

    .line 4
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->populate(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;Lcom/sun/javadoc/ExecutableMemberDoc;)V

    invoke-interface {p2}, Lcom/sun/javadoc/MethodDoc;->returnType()Lcom/sun/javadoc/Type;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;->setReturnType(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null src"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null dest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private populate(Lorg/apache/xmlbeans/impl/jam/mutable/MParameter;Lcom/sun/javadoc/ExecutableMemberDoc;Lcom/sun/javadoc/Parameter;)V
    .locals 1

    .line 5
    invoke-interface {p1, p3}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setArtifact(Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/sun/javadoc/Parameter;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setSimpleName(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/sun/javadoc/Parameter;->type()Lcom/sun/javadoc/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/mutable/MParameter;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTigerDelegate:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;->extractAnnotations(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/ExecutableMemberDoc;Lcom/sun/javadoc/Parameter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addMethod(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;Lcom/sun/javadoc/MethodDoc;)Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewMethod()Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->populate(Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;Lcom/sun/javadoc/MethodDoc;)V

    return-object p1
.end method

.method public build(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/mutable/MClass;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->assertInitialized()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "trying to build \'"

    .line 19
    .line 20
    const-string v2, "\' \'"

    .line 21
    .line 22
    const-string v3, "\'"

    .line 23
    .line 24
    invoke-static {v1, p1, v2, p2, v3}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x2e

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v0, p2

    .line 63
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mRootDoc:Lcom/sun/javadoc/RootDoc;

    .line 64
    .line 65
    invoke-interface {v1, v0}, Lcom/sun/javadoc/RootDoc;->classNamed(Ljava/lang/String;)Lcom/sun/javadoc/ClassDoc;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x0

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->isVerbose(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Ljava/lang/StringBuffer;

    .line 87
    .line 88
    const-string v1, "no ClassDoc for "

    .line 89
    .line 90
    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-object v2

    .line 104
    :cond_3
    invoke-interface {v1}, Lcom/sun/javadoc/ClassDoc;->importedClasses()[Lcom/sun/javadoc/ClassDoc;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/4 v3, 0x0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    new-instance v4, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    :goto_1
    array-length v6, v0

    .line 118
    if-ge v5, v6, :cond_5

    .line 119
    .line 120
    aget-object v6, v0, v5

    .line 121
    .line 122
    invoke-static {v6}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move-object v4, v2

    .line 133
    :cond_5
    invoke-interface {v1}, Lcom/sun/javadoc/ClassDoc;->importedPackages()[Lcom/sun/javadoc/PackageDoc;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    if-nez v4, :cond_6

    .line 140
    .line 141
    new-instance v4, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_2
    array-length v5, v0

    .line 147
    if-ge v3, v5, :cond_7

    .line 148
    .line 149
    new-instance v5, Ljava/lang/StringBuffer;

    .line 150
    .line 151
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .line 153
    .line 154
    aget-object v6, v0, v3

    .line 155
    .line 156
    invoke-interface {v6}, Lcom/sun/javadoc/PackageDoc;->name()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    const-string v6, ".*"

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    if-eqz v4, :cond_8

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    new-array v2, v0, [Ljava/lang/String;

    .line 185
    .line 186
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_8
    invoke-virtual {p0, p1, p2, v2, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->createClassToBuild(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/provider/JamClassPopulator;)Lorg/apache/xmlbeans/impl/jam/mutable/MClass;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setArtifact(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-object p1
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

.method public init(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->init(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    const-string v1, "init()"

    invoke-interface {v0, v1, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->initDelegate(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    check-cast p1, Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->initJavadoc(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public populate(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;->assertInitialized()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getArtifact()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/javadoc/ClassDoc;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->modifierSpecifier()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MMember;->setModifiers(I)V

    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->isInterface()Z

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->setIsInterface(Z)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTigerDelegate:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;->isEnum(Lcom/sun/javadoc/ClassDoc;)Z

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->setIsEnumType(Z)V

    :cond_0
    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->superclass()Lcom/sun/javadoc/ClassDoc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->setSuperclass(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->interfaces()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->getFdFor(Lcom/sun/javadoc/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addInterface(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->fields()[Lcom/sun/javadoc/FieldDoc;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewField()Lorg/apache/xmlbeans/impl/jam/mutable/MField;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-direct {p0, v4, v5}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->populate(Lorg/apache/xmlbeans/impl/jam/mutable/MField;Lcom/sun/javadoc/FieldDoc;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->constructors()[Lcom/sun/javadoc/ConstructorDoc;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewConstructor()Lorg/apache/xmlbeans/impl/jam/mutable/MConstructor;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-direct {p0, v4, v5}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->populate(Lorg/apache/xmlbeans/impl/jam/mutable/MInvokable;Lcom/sun/javadoc/ExecutableMemberDoc;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->methods()[Lcom/sun/javadoc/MethodDoc;

    move-result-object v1

    const/4 v3, 0x0

    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewMethod()Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-direct {p0, v4, v5}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->populate(Lorg/apache/xmlbeans/impl/jam/mutable/MMethod;Lcom/sun/javadoc/MethodDoc;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->mTigerDelegate:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0, p1, p0}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocTigerDelegate;->populateAnnotationTypeIfNecessary(Lcom/sun/javadoc/ClassDoc;Lorg/apache/xmlbeans/impl/jam/mutable/MClass;Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;)V

    :cond_6
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->addAnnotations(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/ProgramElementDoc;)V

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->addSourcePosition(Lorg/apache/xmlbeans/impl/jam/mutable/MElement;Lcom/sun/javadoc/Doc;)V

    invoke-interface {v0}, Lcom/sun/javadoc/ClassDoc;->innerClasses()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_4
    array-length v1, v0

    if-ge v2, v1, :cond_7

    aget-object v1, v0, v2

    invoke-interface {v1}, Lcom/sun/javadoc/ClassDoc;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/mutable/MClass;->addNewInnerClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/mutable/MClass;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Lorg/apache/xmlbeans/impl/jam/mutable/MElement;->setArtifact(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocClassBuilder;->populate(Lorg/apache/xmlbeans/impl/jam/mutable/MClass;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null artifact"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null dest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
