.class public abstract Lio/opencensus/trace/Sampler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract shouldSample(Lio/opencensus/trace/SpanContext;Ljava/lang/Boolean;Lio/opencensus/trace/TraceId;Lio/opencensus/trace/SpanId;Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/SpanContext;",
            "Ljava/lang/Boolean;",
            "Lio/opencensus/trace/TraceId;",
            "Lio/opencensus/trace/SpanId;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/opencensus/trace/Span;",
            ">;)Z"
        }
    .end annotation
.end method
