.class final Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;


# instance fields
.field private final timeoutMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;->timeoutMs:J

    return-void
.end method


# virtual methods
.method public createAndOpenDataChannel(I)Landroidx/media3/exoplayer/rtsp/RtpDataChannel;
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannel;

    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;->timeoutMs:J

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannel;-><init>(J)V

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpUtils;->getIncomingRtpDataSpec(I)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannel;->open(Landroidx/media3/datasource/DataSpec;)J

    return-object v0
.end method

.method public final synthetic createFallbackDataChannelFactory()Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    .locals 1

    .line 1
    invoke-static {p0}, LB/a;->a(Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    move-result-object v0

    return-object v0
.end method
