.class public final Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
    }
.end annotation


# instance fields
.field private final renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    return-void
.end method
