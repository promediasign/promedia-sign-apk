.class final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayHelperV16"
.end annotation


# instance fields
.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static maybeBuildNewInstance(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;-><init>(Landroid/view/WindowManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public register(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    check-cast p1, LD/j;

    invoke-virtual {p1, v0}, LD/j;->a(Landroid/view/Display;)V

    return-void
.end method

.method public unregister()V
    .locals 0

    return-void
.end method
