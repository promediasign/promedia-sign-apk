.class public final Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackOptions"
.end annotation


# instance fields
.field public final numberOfExcludedLocations:I

.field public final numberOfExcludedTracks:I

.field public final numberOfLocations:I

.field public final numberOfTracks:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfLocations:I

    iput p2, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedLocations:I

    iput p3, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfTracks:I

    iput p4, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedTracks:I

    return-void
.end method


# virtual methods
.method public isFallbackAvailable(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfLocations:I

    iget v2, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedLocations:I

    sub-int/2addr p1, v2

    if-le p1, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget p1, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfTracks:I

    iget v2, p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->numberOfExcludedTracks:I

    sub-int/2addr p1, v2

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method
