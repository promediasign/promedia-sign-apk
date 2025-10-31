.class public Lorg/h2/bnf/Sentence;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTEXT:I = 0x0

.field public static final FUNCTION:I = 0x2

.field public static final KEYWORD:I = 0x1

.field private static final MAX_PROCESSING_TIME:J = 0x64L


# instance fields
.field private aliases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/context/DbTableOrView;",
            ">;"
        }
    .end annotation
.end field

.field private lastMatchedSchema:Lorg/h2/bnf/context/DbSchema;

.field private lastMatchedTable:Lorg/h2/bnf/context/DbTableOrView;

.field private lastTable:Lorg/h2/bnf/context/DbTableOrView;

.field private final next:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private queryUpper:Ljava/lang/String;

.field private stopAtNs:J

.field private tables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/bnf/context/DbTableOrView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/Sentence;->next:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->next:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "#"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAlias(Ljava/lang/String;Lorg/h2/bnf/context/DbTableOrView;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->aliases:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/Sentence;->aliases:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/h2/bnf/Sentence;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTable(Lorg/h2/bnf/context/DbTableOrView;)V
    .locals 1

    iput-object p1, p0, Lorg/h2/bnf/Sentence;->lastTable:Lorg/h2/bnf/context/DbTableOrView;

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->tables:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/Sentence;->tables:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lorg/h2/bnf/Sentence;->tables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAliases()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/context/DbTableOrView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->aliases:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLastMatchedSchema()Lorg/h2/bnf/context/DbSchema;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->lastMatchedSchema:Lorg/h2/bnf/context/DbSchema;

    return-object v0
.end method

.method public getLastMatchedTable()Lorg/h2/bnf/context/DbTableOrView;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->lastMatchedTable:Lorg/h2/bnf/context/DbTableOrView;

    return-object v0
.end method

.method public getLastTable()Lorg/h2/bnf/context/DbTableOrView;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->lastTable:Lorg/h2/bnf/context/DbTableOrView;

    return-object v0
.end method

.method public getNext()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->next:Ljava/util/HashMap;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryUpper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->queryUpper:Ljava/lang/String;

    return-object v0
.end method

.method public getTables()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/bnf/context/DbTableOrView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->tables:Ljava/util/HashSet;

    return-object v0
.end method

.method public setLastMatchedSchema(Lorg/h2/bnf/context/DbSchema;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/bnf/Sentence;->lastMatchedSchema:Lorg/h2/bnf/context/DbSchema;

    return-void
.end method

.method public setLastMatchedTable(Lorg/h2/bnf/context/DbTableOrView;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/bnf/Sentence;->lastMatchedTable:Lorg/h2/bnf/context/DbTableOrView;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/Sentence;->query:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/h2/bnf/Sentence;->query:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/bnf/Sentence;->queryUpper:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/h2/bnf/Sentence;->stopAtNs:J

    return-void
.end method

.method public stopIfRequired()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/bnf/Sentence;->stopAtNs:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
