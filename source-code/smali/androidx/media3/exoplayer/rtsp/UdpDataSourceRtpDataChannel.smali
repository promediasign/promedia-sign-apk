.class final Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/RtpDataChannel;


# instance fields
.field private final dataSource:Landroidx/media3/datasource/UdpDataSource;

.field private rtcpChannel:Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/UdpDataSource;

    const/16 v1, 0x7d0

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroidx/media3/datasource/UdpDataSource;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/BaseDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/UdpDataSource;->close()V

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->rtcpChannel:Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->close()V

    :cond_0
    return-void
.end method

.method public getInterleavedBinaryDataListener()Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/UdpDataSource;->getLocalPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public final synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {p0}, Lt/a;->a(Landroidx/media3/datasource/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->getLocalPort()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v1, v4, v3

    const-string v0, "RTP/AVP;unicast;client_port=%d-%d"

    invoke-static {v0, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/UdpDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public needsClosingOnLoadCompletion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/UdpDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/datasource/UdpDataSource;->read([BII)I

    move-result p1
    :try_end_0
    .catch Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget p2, p1, Landroidx/media3/datasource/DataSourceException;->reason:I

    const/16 p3, 0x7d2

    if-ne p2, p3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    throw p1
.end method

.method public setRtcpChannel(Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;)V
    .locals 1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->rtcpChannel:Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;

    return-void
.end method
