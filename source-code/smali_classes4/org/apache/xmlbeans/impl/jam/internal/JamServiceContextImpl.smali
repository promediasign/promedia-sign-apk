.class public Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;
.super Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;
.implements Lorg/apache/xmlbeans/impl/jam/JamServiceParams;
.implements Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;


# instance fields
.field private m14WarningsEnabled:Z

.field private mBaseBuilders:Ljava/util/List;

.field private mClassLoaders:Ljava/util/List;

.field private mClassRoot2Scanner:Ljava/util/Map;

.field private mClasspath:Ljava/util/List;

.field private mCommentInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

.field private mExcludeClasses:Ljava/util/List;

.field private mIncludeClasses:Ljava/util/List;

.field private mLoader:Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

.field private mOtherInitializers:Ljava/util/List;

.field private mProperties:Ljava/util/Properties;

.field private mPropertyInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

.field private mSourceRoot2Scanner:Ljava/util/Map;

.field private mSourcepath:Ljava/util/List;

.field private mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

.field private mToolClasspath:Ljava/util/List;

.field private mUnstructuredSourceFiles:Ljava/util/List;

.field private mUseSystemClasspath:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->m14WarningsEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mProperties:Ljava/util/Properties;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourceRoot2Scanner:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassRoot2Scanner:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClasspath:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourcepath:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mToolClasspath:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mIncludeClasses:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mExcludeClasses:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUseSystemClasspath:Z

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mCommentInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

    new-instance v1, Lorg/apache/xmlbeans/impl/jam/visitor/PropertyInitializer;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/jam/visitor/PropertyInitializer;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mPropertyInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mOtherInitializers:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassLoaders:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mLoader:Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    return-void
.end method

.method private static createJPath(Ljava/util/Collection;)Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;->forFiles([Ljava/io/File;)Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static filename2classname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x5c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAllDirectoryScanners()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourceRoot2Scanner:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassRoot2Scanner:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private getClassScanner(Ljava/io/File;)Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassRoot2Scanner:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassRoot2Scanner:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassRoot2Scanner:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassRoot2Scanner:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    invoke-direct {v1, p1, p0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;-><init>(Ljava/io/File;Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private getPathRootForFile([Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 3

    if-eqz p1, :cond_7

    array-length v0, p1

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[JamServiceContextImpl] Getting root for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[JamServiceContextImpl] ...looking in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->isContainingDir(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "[JamServiceContextImpl] ...found it!"

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_2
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, " is not in the given path."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null sourceFile"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty sourcepath"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null sourcepath"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSourceScanner(Ljava/io/File;)Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourceRoot2Scanner:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourceRoot2Scanner:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourceRoot2Scanner:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourceRoot2Scanner:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    invoke-direct {v1, p1, p0}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;-><init>(Ljava/io/File;Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private isContainingDir(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[JamServiceContextImpl] ... ...isContainingDir "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "[JamServiceContextImpl] ... ...yes!"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->isContainingDir(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method private source2pattern(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[JamServiceContextImpl] source2pattern "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[JamServiceContextImpl] source2pattern returning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addClassBuilder(Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassLoaders:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassLoaders:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClasspath(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClasspath:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClasspath:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClasspath:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInitializer(Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mOtherInitializers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mOtherInitializers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mOtherInitializers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSourcepath(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourcepath:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourcepath:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourcepath:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToolClasspath(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mToolClasspath:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mToolClasspath:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mToolClasspath:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createAnnotationProxy(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;
    .locals 0

    new-instance p1, Lorg/apache/xmlbeans/impl/jam/annotation/DefaultAnnotationProxy;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/jam/annotation/DefaultAnnotationProxy;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/annotation/AnnotationProxy;->init(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)V

    return-object p1
.end method

.method public excludeClass(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mExcludeClasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mExcludeClasses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mExcludeClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public excludeClassFile([Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getPathRootForFile([Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->source2pattern(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->excludeClassPattern([Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public excludeClassPattern([Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "[JamServiceContextImpl] EXCLUDING \'"

    .line 29
    .line 30
    const-string v2, "\' under "

    .line 31
    .line 32
    invoke-static {v1, p2, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    aget-object v2, p1, v0

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    aget-object v1, p1, v0

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->addClasspath(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    aget-object v1, p1, v0

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getClassScanner(Ljava/io/File;)Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->exclude(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, "empty pattern"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string p2, "null pattern"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "empty classpath"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "null classpath"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
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

.method public excludeSourceFile([Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getPathRootForFile([Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->source2pattern(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->excludeSourcePattern([Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public excludeSourcePattern([Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "[JamServiceContextImpl] EXCLUDING \'"

    .line 29
    .line 30
    const-string v2, "\' under "

    .line 31
    .line 32
    invoke-static {v1, p2, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    aget-object v2, p1, v0

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    aget-object v1, p1, v0

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->addSourcepath(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    aget-object v1, p1, v0

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getSourceScanner(Ljava/io/File;)Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->exclude(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, "empty pattern"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string p2, "null pattern"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "empty sourcepath"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "null sourcepath"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
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

.method public getAllClassnames()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mIncludeClasses:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getAllDirectoryScanners()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    aget-object v4, v2, v3

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->filename2classname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mExcludeClasses:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getBaseBuilder()Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mBaseBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lorg/apache/xmlbeans/impl/jam/provider/CompositeJamClassBuilder;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/jam/provider/CompositeJamClassBuilder;-><init>([Lorg/apache/xmlbeans/impl/jam/provider/JamClassBuilder;)V

    return-object v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mLoader:Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    return-object v0
.end method

.method public getInitializer()Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mCommentInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mPropertyInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mOtherInitializers:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/visitor/CompositeMVisitor;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/jam/visitor/CompositeMVisitor;-><init>([Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;)V

    return-object v0
.end method

.method public getInputClasspath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClasspath:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->createJPath(Ljava/util/Collection;)Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object v0

    return-object v0
.end method

.method public getInputSourcepath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourcepath:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->createJPath(Ljava/util/Collection;)Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object v0

    return-object v0
.end method

.method public getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;
    .locals 0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getReflectionClassLoaders()[Ljava/lang/ClassLoader;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassLoaders:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUseSystemClasspath:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/ClassLoader;

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/ClassLoader;

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUseSystemClasspath:Z

    add-int/2addr v1, v3

    new-array v3, v1, [Ljava/lang/ClassLoader;

    :goto_0
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassLoaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mClassLoaders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    aput-object v4, v3, v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUseSystemClasspath:Z

    if-eqz v2, :cond_3

    sub-int/2addr v1, v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    aput-object v0, v3, v1

    :cond_3
    return-object v3
.end method

.method public getSourceFiles()[Ljava/io/File;
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mSourceRoot2Scanner:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "[JamServiceContextImpl]  checking scanner for dir"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->getRoot()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "[JamServiceContextImpl]  ...including a source file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->getRoot()Ljava/io/File;

    move-result-object v6

    aget-object v7, v3, v4

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "[JamServiceContextImpl] adding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " other source files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getTagParser()Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->init(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    return-object v0
.end method

.method public getToolClasspath()Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mToolClasspath:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->createJPath(Ljava/util/Collection;)Lorg/apache/xmlbeans/impl/jam/provider/ResourcePath;

    move-result-object v0

    return-object v0
.end method

.method public getUnstructuredSourceFiles()[Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public includeClass(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mIncludeClasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mIncludeClasses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mIncludeClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public includeClassFile([Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getPathRootForFile([Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->source2pattern(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->includeClassPattern([Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public includeClassPattern([Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "[JamServiceContextImpl] including \'"

    .line 29
    .line 30
    const-string v2, "\' under "

    .line 31
    .line 32
    invoke-static {v1, p2, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    aget-object v2, p1, v0

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    aget-object v1, p1, v0

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->addClasspath(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    aget-object v1, p1, v0

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getClassScanner(Ljava/io/File;)Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->include(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, "empty pattern"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string p2, "null pattern"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "empty classpath"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "null classpath"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
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

.method public includeSourceFile(Ljava/io/File;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[JamServiceContextImpl] adding source "

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUnstructuredSourceFiles:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " cannot be included as a source file because it is a directory."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null file"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public includeSourceFile([Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getPathRootForFile([Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->source2pattern(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->includeSourcePattern([Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public includeSourcePattern([Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p0}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->isVerbose(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "[JamServiceContextImpl] including \'"

    .line 29
    .line 30
    const-string v2, "\' under "

    .line 31
    .line 32
    invoke-static {v1, p2, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    aget-object v2, p1, v0

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->verbose(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    aget-object v1, p1, v0

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->addSourcepath(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    aget-object v1, p1, v0

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->getSourceScanner(Ljava/io/File;)Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/jam/internal/DirectoryScanner;->include(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, "empty pattern"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string p2, "null pattern"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "empty sourcepath"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "null sourcepath"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
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

.method public is14WarningsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->m14WarningsEnabled:Z

    return v0
.end method

.method public set14WarningsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->m14WarningsEnabled:Z

    return-void
.end method

.method public setClassLoader(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mLoader:Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    return-void
.end method

.method public setCommentInitializer(Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mCommentInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

    return-void
.end method

.method public setJamLogger(Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NYI"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJavadocTagParser(Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mTagParser:Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->init(Lorg/apache/xmlbeans/impl/jam/provider/JamServiceContext;)V

    return-void
.end method

.method public setLoggerWriter(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/JamLoggerImpl;->setOut(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public setParentClassLoader(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NYI"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mProperties:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setPropertyInitializer(Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mPropertyInitializer:Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;

    return-void
.end method

.method public setUseSystemClasspath(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/JamServiceContextImpl;->mUseSystemClasspath:Z

    return-void
.end method
