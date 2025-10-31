.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Api31;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Api23;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static failOnSpuriousAudioTimestamp:Z = false

.field private static pendingReleaseCount:I

.field private static releaseExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final releaseExecutorLock:Ljava/lang/Object;


# instance fields
.field private accumulatedSkippedSilenceDurationUs:J

.field private afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field private audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

.field private final audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

.field private final audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

.field private audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field private final audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

.field private audioSessionId:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field private final audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

.field private auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private bytesUntilNextAvSync:I

.field private final channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

.field private configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field private final context:Landroid/content/Context;

.field private final enableFloatOutput:Z

.field private externalAudioSessionIdProvided:Z

.field private framesPerEncodedSample:I

.field private handledEndOfStream:Z

.field private final initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private inputBufferAccessUnitCount:I

.field private isWaitingForOffloadEndOfStreamHandled:Z

.field private lastFeedElapsedRealtimeMs:J

.field private lastTunnelingAvSyncPresentationTimeUs:J

.field private listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

.field private mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field private final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;",
            ">;"
        }
    .end annotation
.end field

.field private offloadDisabledUntilNextConfiguration:Z

.field private offloadMode:I

.field private offloadStreamEventCallbackV29:Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

.field private onRoutingChangedListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field private playbackLooper:Landroid/os/Looper;

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final preferAudioTrackPlaybackParams:Z

.field private preferredDevice:Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;

.field private final releasingConditionVariable:Landroidx/media3/common/util/ConditionVariable;

.field private reportSkippedSilenceHandler:Landroid/os/Handler;

.field private skipSilenceEnabled:Z

.field private skippedOutputFrameCountAtLastPosition:J

.field private startMediaTimeUs:J

.field private startMediaTimeUsNeedsInit:Z

.field private startMediaTimeUsNeedsSync:Z

.field private stoppedAudioTrack:Z

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private volume:F

.field private final writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Landroidx/media3/exoplayer/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    sget-object v1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$200(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/common/audio/AudioProcessorChain;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$400(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$500(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    iput v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$600(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    sget-object v1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releasingConditionVariable:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    new-instance v0, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    new-instance v1, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    new-instance v2, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-direct {v2}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;-><init>()V

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    iput v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    new-instance v0, Landroidx/media3/common/AuxEffectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Landroidx/media3/common/AuxEffectInfo;-><init>(IF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-boolean v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$1000(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method public static synthetic a(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lambda$releaseAudioTrackAsync$1(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/util/ConditionVariable;)V

    return-void
.end method

.method public static synthetic access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static synthetic access$1200(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    return-object p0
.end method

.method public static synthetic access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    return p0
.end method

.method public static synthetic access$1400(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$1500(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    return-wide v0
.end method

.method private applyAudioProcessorPlaybackParametersAndSkipSilence(J)V
    .locals 9

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {v0, v1}, Landroidx/media3/common/audio/AudioProcessorChain;->applyPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_1
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_1

    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {v0, v1}, Landroidx/media3/common/audio/AudioProcessorChain;->applySkipSilenceEnabled(Z)Z

    move-result v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setupAudioProcessors()V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onSkipSilenceEnabledChanged(Z)V

    :cond_3
    return-void
.end method

.method private applyMediaPositionParameters(J)J
    .locals 4

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long v1, p1, v1

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    sget-object v3, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, v3}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr p1, v1

    return-wide p1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    invoke-interface {p1, v1, v2}, Landroidx/media3/common/audio/AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide p1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v0, p1

    return-wide v0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long/2addr v1, p1

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {v1, v2, p1}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide p1

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private applySkipping(J)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    add-long/2addr p1, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    sub-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handleSkippedSilence(J)V

    :cond_0
    return-wide p1
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lambda$releaseAudioTrackAsync$0(Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method private buildAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrack(Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;->onOffloadedPlayback(Z)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    :cond_1
    throw p1
.end method

.method private buildAudioTrackWithRetry()Landroid/media/AudioTrack;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const v3, 0xf4240

    if-le v2, v3, :cond_0

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->copyWithBufferSize(I)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move-result-object v1

    :try_start_1
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v2

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeDisableOffload()V

    throw v0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeReportSkippedSilence()V

    return-void
.end method

.method private drainToEndOfStream()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-direct {p0, v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static getAudioTrackMinBufferSize(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    const/4 p1, -0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return p0
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, 0x400

    .line 3
    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v0, "Unexpected audio encoding: "

    .line 10
    .line 11
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_1
    invoke-static {p1}, Landroidx/media3/extractor/OpusUtil;->parseOggPacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :pswitch_3
    return v1

    .line 30
    :pswitch_4
    const/16 p0, 0x200

    .line 31
    .line 32
    return p0

    .line 33
    :pswitch_5
    invoke-static {p1}, Landroidx/media3/extractor/Ac3Util;->findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p0, v0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1, p0}, Landroidx/media3/extractor/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    mul-int/lit8 p0, p0, 0x10

    .line 46
    .line 47
    :goto_0
    return p0

    .line 48
    :pswitch_6
    const/16 p0, 0x800

    .line 49
    .line 50
    return p0

    .line 51
    :pswitch_7
    return v1

    .line 52
    :pswitch_8
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Landroidx/media3/extractor/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eq p0, v0, :cond_1

    .line 65
    .line 66
    return p0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :pswitch_9
    invoke-static {p1}, Landroidx/media3/extractor/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :pswitch_a
    invoke-static {p1}, Landroidx/media3/extractor/Ac3Util;->parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method private getSubmittedFrames()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    :goto_0
    return-wide v1
.end method

.method private getWrittenFrames()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/common/util/Util;->ceilDivide(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :goto_0
    return-wide v0
.end method

.method private handleSkippedSilence(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    new-instance p2, LB/c;

    const/16 v0, 0xe

    invoke-direct {p2, p0, v0}, LB/c;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initializeAudioTrack()Z
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releasingConditionVariable:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrackWithRetry()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v3, v0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v0, v0, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-static {v2, v3, v0}, Lw/a;->c(Landroid/media/AudioTrack;II)V

    :cond_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Api31;->setLogSessionIdOnAudioTrack(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v5, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    iget v6, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v7, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v8, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;ZIII)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternal()V

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    iget v1, v1, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    iget v2, v2, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_4
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;

    if-eqz v1, :cond_5

    const/16 v2, 0x17

    if-lt v0, v2, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v2, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Api23;->setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v1, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;

    iget-object v2, v2, Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_5
    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_6

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    :cond_6
    iput-boolean v9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    :cond_7
    return v9
.end method

.method private static isAudioTrackDeadObject(I)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, -0x20

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAudioTrackInitialized()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOffloadedPlayback(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lw/a;->g(Landroid/media/AudioTrack;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$releaseAudioTrackAsync$0(Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method private static synthetic lambda$releaseAudioTrackAsync$1(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, LG/c;

    const/16 v1, 0x19

    invoke-direct {p0, p1, p3, v1}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p4}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    sget-object p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-nez p1, :cond_1

    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, LG/c;

    const/16 v2, 0x19

    invoke-direct {v1, p1, p3, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p4}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    sget p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-nez p2, :cond_3

    sget-object p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method private maybeDisableOffload()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method private maybeReportSkippedSilence()V
    .locals 5

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onSilenceSkipped()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    :cond_0
    return-void
.end method

.method private maybeStartAudioCapabilitiesReceiver()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackLooper:Landroid/os/Looper;

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    new-instance v2, Lw/i;

    invoke-direct {v2, p0}, Lw/i;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;Landroidx/media3/common/AudioAttributes;Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->register()Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    :cond_0
    return-void
.end method

.method private playPendingData()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->handleEndOfStream(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_0
    return-void
.end method

.method private processBuffers(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->register(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private static releaseAudioTrackAsync(Landroid/media/AudioTrack;Landroidx/media3/common/util/ConditionVariable;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->close()Z

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v0, "ExoPlayer:AudioTrackReleaseThread"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    sget-object v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lg1/h;

    const/4 v6, 0x2

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lg1/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v7

    return-void

    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private resetSinkStateForFlush()V
    .locals 11

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    new-instance v10, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v10, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->resetTrimmedFrameCount()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setupAudioProcessors()V

    return-void
.end method

.method private setAudioProcessorPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 8

    new-instance v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    :cond_0
    iput-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    :goto_0
    return-void
.end method

.method private setAudioTrackPlaybackParametersV23()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lr/a;->o()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-static {v0}, Lr/a;->q(Landroid/media/PlaybackParams;)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {v0, v1}, Lr/a;->r(Landroid/media/PlaybackParams;F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-static {v0, v1}, Lr/a;->A(Landroid/media/PlaybackParams;F)Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-static {v0}, Lr/a;->z(Landroid/media/PlaybackParams;)Landroid/media/PlaybackParams;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1, v0}, Lr/a;->u(Landroid/media/AudioTrack;Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultAudioSink"

    const-string v2, "Failed to set playback params"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1}, Lr/a;->p(Landroid/media/AudioTrack;)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-static {v1}, Lr/a;->a(Landroid/media/PlaybackParams;)F

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v2}, Lr/a;->p(Landroid/media/AudioTrack;)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-static {v2}, Lr/a;->x(Landroid/media/PlaybackParams;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->setAudioTrackPlaybackSpeed(F)V

    :cond_0
    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    :goto_0
    return-void
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private setupAudioProcessors()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    return-void
.end method

.method private shouldApplyAudioProcessorPlaybackParameters()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldUseFloatOutput(I)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private useAudioTrackPlaybackParams()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-eqz v0, :cond_0

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-ne v0, p1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 28
    .line 29
    if-ge v0, v1, :cond_5

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 36
    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    array-length v4, v4

    .line 40
    if-ge v4, v0, :cond_4

    .line 41
    .line 42
    :cond_3
    new-array v4, v0, [B

    .line 43
    .line 44
    iput-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 45
    .line 46
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 51
    .line 52
    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    iput v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 59
    .line 60
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 65
    .line 66
    if-ge v4, v1, :cond_7

    .line 67
    .line 68
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 69
    .line 70
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 71
    .line 72
    invoke-virtual {p2, v4, v5}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getAvailableBufferSize(J)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-lez p2, :cond_6

    .line 77
    .line 78
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 83
    .line 84
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 85
    .line 86
    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 87
    .line 88
    invoke-virtual {p3, v1, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-lez p2, :cond_b

    .line 93
    .line 94
    iget p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 95
    .line 96
    add-int/2addr p3, p2

    .line 97
    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 98
    .line 99
    invoke-static {p1, p2}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    const/4 p2, 0x0

    .line 104
    goto :goto_5

    .line 105
    :cond_7
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    .line 106
    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    cmp-long v1, p2, v4

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_8
    const/4 v1, 0x0

    .line 121
    :goto_2
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 122
    .line 123
    .line 124
    const-wide/high16 v4, -0x8000000000000000L

    .line 125
    .line 126
    cmp-long v1, p2, v4

    .line 127
    .line 128
    if-nez v1, :cond_9

    .line 129
    .line 130
    iget-wide p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    .line 131
    .line 132
    :goto_3
    move-wide v10, p2

    .line 133
    goto :goto_4

    .line 134
    :cond_9
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_4
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 138
    .line 139
    move-object v6, p0

    .line 140
    move-object v8, p1

    .line 141
    move v9, v0

    .line 142
    invoke-direct/range {v6 .. v11}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    goto :goto_5

    .line 147
    :cond_a
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 148
    .line 149
    invoke-static {p2, p1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    :cond_b
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    .line 158
    .line 159
    const-wide/16 v4, 0x0

    .line 160
    .line 161
    if-gez p2, :cond_10

    .line 162
    .line 163
    invoke-static {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackDeadObject(I)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_d

    .line 168
    .line 169
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    .line 170
    .line 171
    .line 172
    move-result-wide v0

    .line 173
    cmp-long p1, v0, v4

    .line 174
    .line 175
    if-lez p1, :cond_c

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_c
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 179
    .line 180
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_d

    .line 185
    .line 186
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeDisableOffload()V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_d
    const/4 v2, 0x0

    .line 191
    :goto_6
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    .line 192
    .line 193
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 194
    .line 195
    iget-object p3, p3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    .line 196
    .line 197
    invoke-direct {p1, p2, p3, v2}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILandroidx/media3/common/Format;Z)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 201
    .line 202
    if-eqz p2, :cond_e

    .line 203
    .line 204
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 205
    .line 206
    .line 207
    :cond_e
    iget-boolean p2, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    .line 208
    .line 209
    if-nez p2, :cond_f

    .line 210
    .line 211
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 212
    .line 213
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_f
    sget-object p2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 218
    .line 219
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 220
    .line 221
    throw p1

    .line 222
    :cond_10
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 223
    .line 224
    invoke-virtual {p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 225
    .line 226
    .line 227
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 228
    .line 229
    invoke-static {p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    .line 230
    .line 231
    .line 232
    move-result p3

    .line 233
    if-eqz p3, :cond_12

    .line 234
    .line 235
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 236
    .line 237
    cmp-long p3, v6, v4

    .line 238
    .line 239
    if-lez p3, :cond_11

    .line 240
    .line 241
    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 242
    .line 243
    :cond_11
    iget-boolean p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    .line 244
    .line 245
    if-eqz p3, :cond_12

    .line 246
    .line 247
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 248
    .line 249
    if-eqz p3, :cond_12

    .line 250
    .line 251
    if-ge p2, v0, :cond_12

    .line 252
    .line 253
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 254
    .line 255
    if-nez v1, :cond_12

    .line 256
    .line 257
    invoke-interface {p3}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onOffloadBufferFull()V

    .line 258
    .line 259
    .line 260
    :cond_12
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 261
    .line 262
    iget p3, p3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    .line 263
    .line 264
    if-nez p3, :cond_13

    .line 265
    .line 266
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 267
    .line 268
    int-to-long v6, p2

    .line 269
    add-long/2addr v4, v6

    .line 270
    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 271
    .line 272
    :cond_13
    if-ne p2, v0, :cond_16

    .line 273
    .line 274
    if-eqz p3, :cond_15

    .line 275
    .line 276
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    if-ne p1, p2, :cond_14

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_14
    const/4 v2, 0x0

    .line 282
    :goto_7
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 283
    .line 284
    .line 285
    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 286
    .line 287
    iget p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 288
    .line 289
    int-to-long v0, p3

    .line 290
    iget p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 291
    .line 292
    int-to-long v2, p3

    .line 293
    mul-long v0, v0, v2

    .line 294
    .line 295
    add-long/2addr v0, p1

    .line 296
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 297
    .line 298
    :cond_15
    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 300
    .line 301
    :cond_16
    return-void
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x3e8

    if-lt v0, v1, :cond_0

    mul-long p4, p4, v2

    invoke-static {p1, p2, p3, p4, p5}, Lr/a;->d(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long p4, p4, v2

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_2
    iget-object p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    if-lez p4, :cond_4

    iget-object p5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_3

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p5

    :cond_3
    if-ge p5, p4, :cond_4

    return v1

    :cond_4
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_5

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1

    :cond_5
    iget p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1
.end method


# virtual methods
.method public configure(Landroidx/media3/common/Format;I[I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeStartAudioCapabilitiesReceiver()V

    iget-object v0, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget v0, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget v0, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v6, v3, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v0, v6}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    new-instance v6, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget v7, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-direct {v1, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    :cond_0
    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    invoke-interface {v7}, Landroidx/media3/common/audio/AudioProcessorChain;->getAudioProcessors()[Landroidx/media3/common/audio/AudioProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_0
    new-instance v7, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v7, v6}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v7, v6}, Landroidx/media3/common/audio/AudioProcessingPipeline;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    :cond_1
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iget v8, v3, Landroidx/media3/common/Format;->encoderDelay:I

    iget v9, v3, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v6, v8, v9}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->setTrimFrameCount(II)V

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v6, v8, :cond_2

    iget v6, v3, Landroidx/media3/common/Format;->channelCount:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_2

    if-nez p3, :cond_2

    const/4 v6, 0x6

    new-array v8, v6, [I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_3

    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p3

    :cond_3
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    new-instance v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v6, v3}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    :try_start_0
    invoke-virtual {v7, v6}, Landroidx/media3/common/audio/AudioProcessingPipeline;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v6
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget v8, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget v9, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v10, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v10}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v10

    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v8, v6}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v6

    iget-boolean v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    move v13, v6

    move-object/from16 v16, v7

    move v14, v9

    move v12, v10

    move/from16 v17, v11

    const/4 v15, 0x0

    const/16 v18, 0x0

    move v11, v8

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v0

    :cond_4
    new-instance v0, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v0, v6}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget v6, v3, Landroidx/media3/common/Format;->sampleRate:I

    iget v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatOffloadSupport(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v7

    goto :goto_2

    :cond_5
    sget-object v7, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    :goto_2
    iget v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    if-eqz v8, :cond_6

    iget-boolean v8, v7, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    if-eqz v8, :cond_6

    iget-object v8, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget v9, v3, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v9}, Landroidx/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v9

    iget-boolean v7, v7, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    move-object/from16 v16, v0

    move v14, v6

    move/from16 v18, v7

    move v11, v8

    move v12, v9

    const/4 v0, -0x1

    const/4 v13, -0x1

    const/4 v15, 0x1

    const/16 v17, 0x1

    goto :goto_3

    :cond_6
    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v7, v3, v8}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    const/4 v10, 0x2

    move-object/from16 v16, v0

    move v14, v6

    move v12, v7

    move v11, v8

    move/from16 v17, v9

    const/4 v0, -0x1

    const/4 v13, -0x1

    const/4 v15, 0x2

    const/16 v18, 0x0

    :goto_3
    const-string v6, ") for: "

    if-eqz v11, :cond_d

    if-eqz v12, :cond_c

    iget v6, v3, Landroidx/media3/common/Format;->bitrate:I

    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    iget-object v8, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-ne v6, v2, :cond_7

    const v6, 0xbb800

    const v19, 0xbb800

    goto :goto_4

    :cond_7
    move/from16 v19, v6

    :goto_4
    if-eqz p2, :cond_8

    move/from16 v10, p2

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v19, v14

    goto :goto_8

    :cond_8
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    invoke-static {v14, v12, v11}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getAudioTrackMinBufferSize(III)I

    move-result v7

    if-eq v13, v2, :cond_9

    move v10, v13

    goto :goto_5

    :cond_9
    const/4 v10, 0x1

    :goto_5
    if-eqz v17, :cond_a

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    :goto_6
    move-wide/from16 v20, v8

    goto :goto_7

    :cond_a
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :goto_7
    move v8, v11

    move v9, v15

    move/from16 v22, v11

    move v11, v14

    move/from16 v23, v12

    move/from16 v12, v19

    move/from16 v24, v13

    move/from16 v19, v14

    move-wide/from16 v13, v20

    invoke-interface/range {v6 .. v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->getBufferSizeInBytes(IIIIIID)I

    move-result v2

    move v10, v2

    :goto_8
    iput-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    new-instance v14, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-boolean v13, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    move-object v2, v14

    move-object/from16 v3, p1

    move v4, v0

    move v5, v15

    move/from16 v6, v24

    move/from16 v7, v19

    move/from16 v8, v23

    move/from16 v9, v22

    move-object/from16 v11, v16

    move/from16 v12, v17

    move v0, v13

    move/from16 v13, v18

    move-object v15, v14

    move v14, v0

    invoke-direct/range {v2 .. v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;IIIIIIILandroidx/media3/common/audio/AudioProcessingPipeline;ZZZ)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    goto :goto_9

    :cond_b
    iput-object v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    :goto_9
    return-void

    :cond_c
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid output channel config (mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    :cond_d
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid output encoding (mode="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    :cond_e
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to configure passthrough for: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0
.end method

.method public disableTunneling()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_0
    return-void
.end method

.method public enableTunnelingV21()V
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 5

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->unregister(Landroid/media/AudioTrack;)V

    :cond_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v3, :cond_3

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    :cond_3
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->reset()V

    const/16 v3, 0x18

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releasingConditionVariable:Landroidx/media3/common/util/ConditionVariable;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-static {v0, v3, v4, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->releaseAudioTrackAsync(Landroid/media/AudioTrack;Landroidx/media3/common/util/ConditionVariable;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyMediaPositionParameters(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applySkipping(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getFormatOffloadSupport(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadSupportProvider:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {v0, p1, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;->getAudioOffloadSupport(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p1

    return-object p1
.end method

.method public getFormatSupport(Landroidx/media3/common/Format;)I
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeStartAudioCapabilitiesReceiver()V

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid PCM encoding: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget p1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    if-eq p1, v2, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->isPassthroughPlaybackSupported(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v5, v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v5

    if-eqz v5, :cond_3

    return v7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    goto :goto_2

    :cond_4
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v5, :cond_6

    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_5

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v5}, Lw/a;->b(Landroid/media/AudioTrack;)V

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset()V

    :cond_5
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v10, v9, Landroidx/media3/common/Format;->encoderDelay:I

    iget v9, v9, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-static {v5, v10, v9}, Lw/a;->c(Landroid/media/AudioTrack;II)V

    iput-boolean v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    :cond_6
    :goto_2
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v5

    if-nez v5, :cond_9

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializeAudioTrack()Z

    move-result v5
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_9

    return v7

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-boolean v0, v2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v0, :cond_8

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return v7

    :cond_8
    throw v2

    :cond_9
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_b

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    :cond_a
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->play()V

    :cond_b
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->mayHandleBuffer(J)Z

    move-result v5

    if-nez v5, :cond_c

    return v7

    :cond_c
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v11, :cond_d

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_e

    return v6

    :cond_e
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v11, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v11, :cond_f

    iget v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v11, :cond_f

    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v5, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v5, :cond_f

    return v6

    :cond_f
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v5, :cond_11

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_10

    return v7

    :cond_10
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    :cond_11
    iget-wide v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v13

    iget-object v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-virtual {v15}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->getTrimmedFrameCount()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-virtual {v5, v13, v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v13

    add-long/2addr v11, v13

    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-nez v5, :cond_13

    sub-long v13, v11, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v5, v13, v15

    if-lez v5, :cond_13

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v5, :cond_12

    new-instance v13, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v13, v2, v3, v11, v12}, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    invoke-interface {v5, v13}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    :cond_12
    iput-boolean v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    :cond_13
    iget-boolean v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-eqz v5, :cond_15

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_14

    return v7

    :cond_14
    sub-long v11, v2, v11

    iget-wide v13, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v5, :cond_15

    cmp-long v13, v11, v9

    if-eqz v13, :cond_15

    invoke-interface {v5}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    :cond_15
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v5, :cond_16

    iget-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_4

    :cond_16
    iget-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v11, v5

    int-to-long v13, v4

    mul-long v11, v11, v13

    add-long/2addr v11, v9

    iput-wide v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    :goto_4
    iput-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    iput v4, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    :cond_17
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    iput v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    return v6

    :cond_18
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isStalled(J)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_19
    return v7
.end method

.method public handleDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAudioCapabilitiesChanged(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioCapabilitiesChanged()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->pause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->start()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->unregister()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v1}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v1}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->reset()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_1
    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    iget v1, p1, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    iget v3, v3, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    if-eq v3, v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    return-void
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->setClock(Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    return-void
.end method

.method public setOffloadDelayPadding(II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1, p2}, Lw/a;->c(Landroid/media/AudioTrack;II)V

    :cond_0
    return-void
.end method

.method public setOffloadMode(I)V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    return-void
.end method

.method public final synthetic setOutputStreamOffsetUs(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lw/h;->a(Landroidx/media3/exoplayer/audio/AudioSink;J)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 5

    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v1

    iget v4, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-static {v4, v2, v3}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :goto_0
    return-void
.end method

.method public setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Api23;->setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;)V

    :cond_2
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternal()V

    :cond_0
    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
