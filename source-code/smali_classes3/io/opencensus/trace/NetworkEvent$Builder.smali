.class public abstract Lio/opencensus/trace/NetworkEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/NetworkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lio/opencensus/trace/NetworkEvent;
.end method

.method public abstract setCompressedMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;
.end method

.method public abstract setKernelTimestamp(Lio/opencensus/common/Timestamp;)Lio/opencensus/trace/NetworkEvent$Builder;
.end method

.method public abstract setMessageId(J)Lio/opencensus/trace/NetworkEvent$Builder;
.end method

.method public setMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/NetworkEvent$Builder;->setUncompressedMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract setUncompressedMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;
.end method
