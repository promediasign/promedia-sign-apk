.class final Lio/opencensus/trace/AutoValue_EndSpanOptions;
.super Lio/opencensus/trace/EndSpanOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/AutoValue_EndSpanOptions$Builder;
    }
.end annotation


# instance fields
.field private final sampleToLocalSpanStore:Z

.field private final status:Lio/opencensus/trace/Status;


# direct methods
.method private constructor <init>(ZLio/opencensus/trace/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/EndSpanOptions;-><init>()V

    iput-boolean p1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->sampleToLocalSpanStore:Z

    iput-object p2, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->status:Lio/opencensus/trace/Status;

    return-void
.end method

.method public synthetic constructor <init>(ZLio/opencensus/trace/Status;Lio/opencensus/trace/AutoValue_EndSpanOptions$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/opencensus/trace/AutoValue_EndSpanOptions;-><init>(ZLio/opencensus/trace/Status;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/EndSpanOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lio/opencensus/trace/EndSpanOptions;

    iget-boolean v1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->sampleToLocalSpanStore:Z

    invoke-virtual {p1}, Lio/opencensus/trace/EndSpanOptions;->getSampleToLocalSpanStore()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->status:Lio/opencensus/trace/Status;

    invoke-virtual {p1}, Lio/opencensus/trace/EndSpanOptions;->getStatus()Lio/opencensus/trace/Status;

    move-result-object p1

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lio/opencensus/trace/Status;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getSampleToLocalSpanStore()Z
    .locals 1

    iget-boolean v0, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->sampleToLocalSpanStore:Z

    return v0
.end method

.method public getStatus()Lio/opencensus/trace/Status;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->status:Lio/opencensus/trace/Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->sampleToLocalSpanStore:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->status:Lio/opencensus/trace/Status;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lio/opencensus/trace/Status;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EndSpanOptions{sampleToLocalSpanStore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->sampleToLocalSpanStore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/AutoValue_EndSpanOptions;->status:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
