.class public abstract Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/export/SampledSpanStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ErrorFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lio/opencensus/trace/Status$CanonicalCode;I)Lio/opencensus/trace/export/SampledSpanStore$ErrorFilter;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-object v2, Lio/opencensus/trace/Status$CanonicalCode;->OK:Lio/opencensus/trace/Status$CanonicalCode;

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid canonical code."

    invoke-static {v2, v3}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    :cond_1
    if-ltz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v1, "Negative maxSpansToReturn."

    invoke-static {v0, v1}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;

    invoke-direct {v0, p0, p1, p2}, Lio/opencensus/trace/export/AutoValue_SampledSpanStore_ErrorFilter;-><init>(Ljava/lang/String;Lio/opencensus/trace/Status$CanonicalCode;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getCanonicalCode()Lio/opencensus/trace/Status$CanonicalCode;
.end method

.method public abstract getMaxSpansToReturn()I
.end method

.method public abstract getSpanName()Ljava/lang/String;
.end method
