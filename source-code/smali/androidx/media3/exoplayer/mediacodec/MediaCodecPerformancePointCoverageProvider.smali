.class abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;
    }
.end annotation


# static fields
.field private static shouldIgnorePerformancePoints:Ljava/lang/Boolean;


# direct methods
.method public static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->shouldIgnorePerformancePoints:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->shouldIgnorePerformancePoints:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->shouldIgnorePerformancePoints:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
