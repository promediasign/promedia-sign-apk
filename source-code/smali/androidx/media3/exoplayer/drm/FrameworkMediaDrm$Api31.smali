.class abstract Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api31"
.end annotation


# direct methods
.method public static requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lv/y;->s(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/media3/exoplayer/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p2

    invoke-static {}, LA/e;->e()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p2, v0}, Lv/y;->t(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lv/y;->d(Landroid/media/MediaDrm;[B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lv/y;->e(Ljava/lang/Object;)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    invoke-static {p0, p2}, Lv/y;->m(Landroid/media/MediaDrm$PlaybackComponent;Landroid/media/metrics/LogSessionId;)V

    :cond_0
    return-void
.end method
