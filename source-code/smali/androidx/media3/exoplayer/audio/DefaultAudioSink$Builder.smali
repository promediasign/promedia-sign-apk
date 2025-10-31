.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field private audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

.field private audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

.field private audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

.field private audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private buildCalled:Z

.field private final context:Landroid/content/Context;

.field private enableAudioTrackPlaybackParams:Z

.field private enableFloatOutput:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    sget-object p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1000(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/common/audio/AudioProcessorChain;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return p0
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return p0
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-object p0
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/audio/DefaultAudioSink;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->buildCalled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/common/audio/AudioProcessor;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    return-object v0
.end method

.method public setAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    return-object p0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return-object p0
.end method

.method public setEnableFloatOutput(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return-object p0
.end method
