.class public abstract Lio/opencensus/trace/export/ExportComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/export/ExportComponent$NoopExportComponent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newNoopExportComponent()Lio/opencensus/trace/export/ExportComponent;
    .locals 2

    new-instance v0, Lio/opencensus/trace/export/ExportComponent$NoopExportComponent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/export/ExportComponent$NoopExportComponent;-><init>(Lio/opencensus/trace/export/ExportComponent$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract getRunningSpanStore()Lio/opencensus/trace/export/RunningSpanStore;
.end method

.method public abstract getSampledSpanStore()Lio/opencensus/trace/export/SampledSpanStore;
.end method

.method public abstract getSpanExporter()Lio/opencensus/trace/export/SpanExporter;
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
