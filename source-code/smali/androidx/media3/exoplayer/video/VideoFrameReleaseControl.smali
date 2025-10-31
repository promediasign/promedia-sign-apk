.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;
    }
.end annotation


# instance fields
.field private final allowedJoiningTimeMs:J

.field private clock:Landroidx/media3/common/util/Clock;

.field private firstFrameState:I

.field private final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field private final frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastPresentationTimeUs:J

.field private lastReleaseRealtimeUs:J

.field private playbackSpeed:F

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    new-instance p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    sget-object p1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method private calculateEarlyTimeUs(JJJ)J
    .locals 0

    sub-long/2addr p5, p1

    long-to-double p1, p5

    iget p5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    float-to-double p5, p5

    div-double/2addr p1, p5

    double-to-long p1, p1

    iget-boolean p5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {p5}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p5

    invoke-static {p5, p6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p5

    sub-long/2addr p5, p3

    sub-long/2addr p1, p5

    :cond_0
    return-wide p1
.end method

.method private lowerFirstFrameState(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    return-void
.end method

.method private shouldForceRelease(JJJ)Z
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    return v4

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iget-wide p5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    sub-long/2addr p1, p5

    iget-boolean p5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz p5, :cond_1

    iget-object p5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    invoke-interface {p5, p3, p4, p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldForceReleaseFrame(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    cmp-long p3, p1, p5

    if-ltz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4

    :cond_5
    return v1

    :cond_6
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    return p1
.end method


# virtual methods
.method public allowReleaseFirstFrameBeforeStarted()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    :cond_0
    return-void
.end method

.method public getFrameReleaseAction(JJJJZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I
    .locals 17

    move-object/from16 v7, p0

    move-wide/from16 v5, p1

    move-wide/from16 v11, p3

    move-object/from16 v15, p10

    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$000(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)V

    iget-wide v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v8

    if-nez v2, :cond_0

    iput-wide v11, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    :cond_0
    iget-wide v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    iput-wide v5, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->calculateEarlyTimeUs(JJJ)J

    move-result-wide v0

    invoke-static {v15, v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->shouldForceRelease(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    const/4 v2, 0x5

    if-eqz v0, :cond_9

    iget-wide v3, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v0, v11, v3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v3

    iget-object v0, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    mul-long v5, v5, v13

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v5

    invoke-static {v15, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$202(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$200(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    div-long/2addr v5, v13

    invoke-static {v15, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    iget-wide v3, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const/4 v0, 0x1

    cmp-long v5, v3, v8

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget-object v8, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v9

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move/from16 v15, p9

    move/from16 v16, v1

    invoke-interface/range {v8 .. v16}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldIgnoreFrame(JJJZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x4

    return v0

    :cond_5
    iget-object v8, v7, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v9

    move-wide/from16 v11, p5

    move/from16 v13, p9

    invoke-interface/range {v8 .. v13}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldDropFrame(JJZ)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_7
    invoke-static/range {p10 .. p10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v3

    const-wide/32 v5, 0xc350

    cmp-long v1, v3, v5

    if-lez v1, :cond_8

    return v2

    :cond_8
    return v0

    :cond_9
    :goto_1
    return v2
.end method

.method public isReady(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return v0

    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const/4 p1, 0x0

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    return p1

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    return v0

    :cond_2
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return p1
.end method

.method public join()V
    .locals 5

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return-void
.end method

.method public onDisabled()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    return-void
.end method

.method public onEnabled(Z)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    return-void
.end method

.method public onFrameReleasedIsFirstFrame()Z
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    return v0
.end method

.method public onProcessedStreamChange()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    return-void
.end method

.method public onStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStarted()V

    return-void
.end method

.method public onStopped()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStopped()V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method public setFrameRate(F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    return-void
.end method
