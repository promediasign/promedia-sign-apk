.class public interface abstract Landroidx/media3/exoplayer/video/VideoSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoSink$Listener;,
        Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
    }
.end annotation


# virtual methods
.method public abstract flush()V
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isFrameDropAllowedOnInput()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract registerInputFrame(JZ)J
.end method

.method public abstract registerInputStream(ILandroidx/media3/common/Format;)V
.end method

.method public abstract render(JJ)V
.end method

.method public abstract setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method
