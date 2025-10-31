.class final Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$SampleStreamImpl;,
        Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$ExtractorOutputImpl;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private final handler:Landroid/os/Handler;

.field private final internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

.field private isUsingRtpTcp:Z

.field private final listener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

.field private loadingFinished:Z

.field private notifyDiscontinuity:Z

.field private pendingSeekPositionUs:J

.field private pendingSeekPositionUsForTcpRetry:J

.field private playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

.field private portBindingRetryCount:I

.field private preparationError:Ljava/io/IOException;

.field private prepared:Z

.field private released:Z

.field private requestedSeekPositionUs:J

.field private final rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

.field private final rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

.field private final rtspLoaderWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedLoadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private trackSelected:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;Landroid/net/Uri;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    iput-object p4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->listener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$1;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    new-instance p1, Landroidx/media3/exoplayer/rtsp/RtspClient;

    move-object v0, p1

    move-object v1, v2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/RtspClient;-><init>(Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-void
.end method

.method public static synthetic access$1000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    return p0
.end method

.method public static synthetic access$1102(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    return-object p1
.end method

.method public static synthetic access$1208(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)I
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->portBindingRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->portBindingRetryCount:I

    return v0
.end method

.method public static synthetic access$1300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object p0
.end method

.method public static synthetic access$1302(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object p1
.end method

.method public static synthetic access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$1402(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    return-wide p1
.end method

.method public static synthetic access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide v0
.end method

.method public static synthetic access$1502(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide p1
.end method

.method public static synthetic access$1600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->listener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    return-object p0
.end method

.method public static synthetic access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1902(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    return p1
.end method

.method public static synthetic access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$2002(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    return-wide p1
.end method

.method public static synthetic access$2100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getLoadableByTrackUri(Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    return-object p0
.end method

.method public static synthetic access$2300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object p0
.end method

.method public static synthetic access$2400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->internalListener:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;

    return-object p0
.end method

.method public static synthetic access$2500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->updateLoadingFinished()V

    return-void
.end method

.method public static synthetic access$2700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->maybeSetupTracks()V

    return-void
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    return p0
.end method

.method public static synthetic access$602(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    return p1
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->retryWithRtpTcp()V

    return-void
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    return-object p0
.end method

.method private static buildTrackGroups(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v4

    new-instance v5, Landroidx/media3/common/TrackGroup;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    new-array v7, v0, [Landroidx/media3/common/Format;

    aput-object v4, v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private getLoadableByTrackUri(Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v1, v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->access$300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isSeekPending()Z
    .locals 5

    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeFinishPrepare()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->released:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->buildTrackGroups(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private maybeSetupTracks()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->isTransportReady()Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->setupSelectedTracks(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private retryWithRtpTcp()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->retryWithRtpTcp()V

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    invoke-interface {v0}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;->createFallbackDataChannelFactory()Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    const-string v1, "No fallback data channel factory for TCP retry"

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->playbackException:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v7, v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->mediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    invoke-direct {v6, p0, v7, v4, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;ILandroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->startLoading()V

    iget-object v7, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object v5, v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private suppressRead()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    return v0
.end method

.method private updateLoadingFinished()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isLoading()Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 9

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v7}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->getBufferedPositionUs()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v4, v3

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    cmp-long v0, v4, v1

    if-nez v0, :cond_5

    :cond_4
    const-wide/16 v4, 0x0

    :cond_5
    return-wide v4

    :cond_6
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->prepared:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    new-instance v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    return-object v0
.end method

.method public isLoading()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public isReady(I)Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->isSampleQueueReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public readData(ILandroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->released:Z

    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->discardBuffer(JZ)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtspClient;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->seekToUs(J)V

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return-wide p1

    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v1

    if-eqz v1, :cond_4

    return-wide p1

    :cond_4
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->loadingFinished:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->resumeLoad()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/rtsp/RtspClient;->startPlayback(J)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspClient:Landroidx/media3/exoplayer/rtsp/RtspClient;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspClient;->seekToUs(J)V

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->seekTo(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-wide p1
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    :goto_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ge p2, v1, :cond_5

    aget-object v1, p1, p2

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v1

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v5, v5, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, p3, p2

    if-nez v1, :cond_4

    new-instance v1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;I)V

    aput-object v1, p3, p2

    aput-boolean v2, p4, p2

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object p3, p1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->trackSelected:Z

    const-wide/16 p1, 0x0

    cmp-long p3, p5, p1

    if-eqz p3, :cond_8

    iput-wide p5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    :cond_8
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->maybeSetupTracks()V

    return-wide p5
.end method

.method public skipData(IJ)I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->skipData(J)I

    move-result p1

    return p1
.end method
