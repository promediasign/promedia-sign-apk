.class final Lio/opencensus/trace/config/TraceConfig$NoopTraceConfig;
.super Lio/opencensus/trace/config/TraceConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/config/TraceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopTraceConfig"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceConfig;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/config/TraceConfig$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceConfig$NoopTraceConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveTraceParams()Lio/opencensus/trace/config/TraceParams;
    .locals 1

    sget-object v0, Lio/opencensus/trace/config/TraceParams;->DEFAULT:Lio/opencensus/trace/config/TraceParams;

    return-object v0
.end method

.method public updateActiveTraceParams(Lio/opencensus/trace/config/TraceParams;)V
    .locals 0

    return-void
.end method
