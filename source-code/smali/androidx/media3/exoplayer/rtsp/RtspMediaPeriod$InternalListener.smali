.class final Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
.implements Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;
.implements Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;",
        ">;",
        "Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;",
        "Landroidx/media3/exoplayer/rtsp/RtspClient$SessionInfoListener;",
        "Landroidx/media3/exoplayer/rtsp/RtspClient$PlaybackEventListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->lambda$onUpstreamFormatChanged$0(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    return-void
.end method

.method private static synthetic lambda$onUpstreamFormatChanged$0(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public onLoadCanceled(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 2
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->onLoadCanceled(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJ)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object p4, p3, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-static {p4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->access$300(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object p4

    if-ne p4, p1, :cond_2

    invoke-virtual {p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->signalPlaybackEnded()V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 2
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->onLoadCompleted(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1, p6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1102(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/net/BindException;

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1208(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_2

    sget-object p1, Landroidx/media3/exoplayer/upstream/Loader;->RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object p1

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    new-instance p3, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtspMediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p6}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1302(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    :cond_2
    :goto_0
    sget-object p1, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object p1
.end method

.method public bridge synthetic onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 2
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->onLoadError(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onPlaybackError(Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V
    .locals 1

    instance-of v0, p1, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspUdpUnsupportedTransportException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1302(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    :goto_0
    return-void
.end method

.method public onPlaybackStarted(JLcom/google/common/collect/ImmutableList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;

    iget-object v3, v3, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtpLoadInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;->onSeekingUnsupported()V

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1902(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Z)Z

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3, v4, v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1402(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3, v4, v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2002(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3, v4, v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1502(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    iget-object v3, v0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2100(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroid/net/Uri;)Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v6, v0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->rtpTimestamp:J

    invoke-virtual {v2, v6, v7}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->setTimestamp(J)V

    iget v3, v0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->sequenceNumber:I

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->setSequenceNumber(I)V

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v6

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    iget-wide v6, v0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->rtpTimestamp:J

    invoke-virtual {v2, p1, p2, v6, v7}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->seekToUs(JJ)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v0

    cmp-long p3, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1, v4, v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1402(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    if-nez p3, :cond_6

    invoke-static {p1, v4, v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2002(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    goto :goto_4

    :cond_6
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2000(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->seekToUs(J)J

    goto :goto_4

    :cond_7
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_8

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$600(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->seekToUs(J)J

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1, v4, v5}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1502(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;J)J

    :cond_8
    :goto_4
    return-void
.end method

.method public onRtspSetupCompleted()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1500(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$900(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspClient;->startPlayback(J)V

    return-void
.end method

.method public onSessionTimelineRequestFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v1

    :goto_0
    invoke-static {v0, p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1102(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Ljava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public onSessionTimelineUpdated(Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;Lcom/google/common/collect/ImmutableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$2200(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;ILandroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$800(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->startLoading()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p2}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$1700(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$Listener;->onSourceInfoRefreshed(Landroidx/media3/exoplayer/rtsp/RtspSessionTiming;)V

    return-void
.end method

.method public onUpstreamFormatChanged(Landroidx/media3/common/Format;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;->access$400(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod$InternalListener;->this$0:Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;

    new-instance v1, Landroidx/media3/exoplayer/rtsp/d;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/rtsp/d;-><init>(Landroidx/media3/exoplayer/rtsp/RtspMediaPeriod;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
