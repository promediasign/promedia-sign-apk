.class public abstract Lcom/dropbox/core/util/Dumpable;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/Dumpable;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/dropbox/core/util/DumpWriter$Plain;

    invoke-direct {v0, p1}, Lcom/dropbox/core/util/DumpWriter$Plain;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p0}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    return-void
.end method
