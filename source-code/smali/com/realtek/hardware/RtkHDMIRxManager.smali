.class public Lcom/realtek/hardware/RtkHDMIRxManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;,
        Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;,
        Lcom/realtek/hardware/RtkHDMIRxManager$Size;,
        Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;
    }
.end annotation


# static fields
.field public static final HDMIRX_AUDIO_PCM:I = 0x1

.field public static final HDMIRX_AUDIO_RAW:I = 0x0

.field public static final HDMIRX_FILE_FORMAT_MP4:I = 0x1

.field public static final HDMIRX_FILE_FORMAT_TS:I = 0x0

.field public static final HDMIRX_FORMAT_ARGB:I = 0x1

.field public static final HDMIRX_FORMAT_JPEG:I = 0x2

.field public static final HDMIRX_FORMAT_NV12:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RtkHDMIRxManager"


# instance fields
.field private final HdmiRxAudioInfo:Ljava/lang/String;

.field private final HdmiRxAudioSwitch:Ljava/lang/String;

.field private final HdmiRxVideoInfo:Ljava/lang/String;

.field private final HdmiRxVideoSwitch:Ljava/lang/String;

.field private mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

.field private final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rtk-display_ctrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sys/devices/virtual/switch/rx_video/state"

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->HdmiRxVideoSwitch:Ljava/lang/String;

    const-string v0, "/sys/devices/virtual/switch/rx_audio/state"

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->HdmiRxAudioSwitch:Ljava/lang/String;

    const-string v0, "/sys/class/video4linux/video250/hdmirx_video_info"

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->HdmiRxVideoInfo:Ljava/lang/String;

    const-string v0, "/sys/class/video4linux/video250/hdmirx_audio_info"

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->HdmiRxAudioInfo:Ljava/lang/String;

    new-instance v0, Lcom/realtek/hardware/HDMIRxStatus;

    invoke-direct {v0}, Lcom/realtek/hardware/HDMIRxStatus;-><init>()V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->mListener:Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;

    return-void
.end method

.method public static getRxAudioInstance()I
    .locals 1

    invoke-static {}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_getRxAudioInstance()I

    move-result v0

    return v0
.end method

.method private getSwitchState(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "RtkHDMIRxManager"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const-string v2, "*** IOException in getSwitchState ***"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSwitchState state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private handleEventFromNative(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "native event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIRxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/realtek/hardware/RtkHDMIRxManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/realtek/hardware/RtkHDMIRxManager$1;-><init>(Lcom/realtek/hardware/RtkHDMIRxManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private native native_configureTargetFormat(IIIIIIIIIIIII)V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private static native native_getRxAudioInstance()I
.end method

.method private native native_getSnapshot(IIIIIII)[B
.end method

.method private native native_open(Ljava/lang/String;I)I
.end method

.method private native native_prepare()V
.end method

.method private native native_refreshCamera(II)V
.end method

.method private native native_release()V
.end method

.method private native native_setParameters(III)V
.end method

.method private native native_setPlayback(ZZ)V
.end method

.method private native native_setPreviewDisplay(Landroid/view/Surface;)V
.end method

.method private native native_setTargetFd(II)V
.end method

.method private native native_setTranscode(Z)V
.end method

.method private native native_startPreview()I
.end method

.method private native native_stopPreview()I
.end method

.method private parseRxInfo()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "*** SPDIF Type: "

    const-string v2, "*** Audio Samplerate: "

    const-string v3, "*** Audio Status: "

    const-string v4, "*** Video Framerate: "

    const-string v5, "*** Video Color: "

    const-string v6, "*** Video ScanMode: "

    const-string v7, "*** Video Height: "

    const-string v8, "*** Video Width: "

    const-string v9, "*** Video Status: "

    const-string v10, "*** Video Type: "

    const-string v11, "*** In parseRxInfo ****"

    const-string v12, "RtkHDMIRxManager"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    const-string v14, "/sys/class/video4linux/video250/hdmirx_video_info"

    invoke-direct {v13, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x3a

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    add-int/lit8 v15, v16, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "HDMIRx"

    invoke-virtual {v13, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_0

    iget-object v15, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v14, 0x0

    iput v14, v15, Lcom/realtek/hardware/HDMIRxStatus;->type:I

    goto :goto_0

    :cond_0
    iget-object v14, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v15, 0x1

    iput v15, v14, Lcom/realtek/hardware/HDMIRxStatus;->type:I

    :goto_0
    invoke-virtual {v10, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const/16 v13, 0x3a

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v13, 0x1

    add-int/2addr v14, v13

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v14, "Ready"

    invoke-virtual {v10, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    iput v13, v14, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    goto :goto_1

    :cond_2
    iget-object v13, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v14, 0x0

    iput v14, v13, Lcom/realtek/hardware/HDMIRxStatus;->status:I

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v10, 0x1

    add-int/2addr v13, v10

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v10, Lcom/realtek/hardware/HDMIRxStatus;->width:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    iget v8, v8, Lcom/realtek/hardware/HDMIRxStatus;->width:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v9, 0x1

    add-int/2addr v10, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v9, Lcom/realtek/hardware/HDMIRxStatus;->height:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    iget v7, v7, Lcom/realtek/hardware/HDMIRxStatus;->height:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v8, 0x1

    add-int/2addr v9, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Progressive"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v9, 0x0

    :goto_2
    iput v9, v8, Lcom/realtek/hardware/HDMIRxStatus;->scanMode:I

    goto :goto_3

    :cond_6
    iget-object v8, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v9, 0x1

    goto :goto_2

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v7, 0x1

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RGB"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v8, 0x0

    :goto_4
    iput v8, v7, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    goto :goto_5

    :cond_8
    const-string v7, "YUV422"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    const-string v7, "YUV444"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v8, 0x2

    iput v8, v7, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    goto :goto_5

    :cond_a
    iget-object v7, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v8, 0x3

    iput v8, v7, Lcom/realtek/hardware/HDMIRxStatus;->color:I

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v6, 0x1

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    iget v4, v4, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/video4linux/video250/hdmirx_audio_info"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v6, 0x1

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_d

    iget-object v7, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    iput v6, v7, Lcom/realtek/hardware/HDMIRxStatus;->audioStatus:I

    goto :goto_6

    :cond_d
    iget-object v6, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v7, 0x0

    iput v7, v6, Lcom/realtek/hardware/HDMIRxStatus;->audioStatus:I

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v5, 0x1

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    iget v2, v2, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Non-LPCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    :goto_7
    iput v5, v3, Lcom/realtek/hardware/HDMIRxStatus;->spdif:I

    goto :goto_8

    :cond_10
    iget-object v3, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    const/4 v5, 0x0

    goto :goto_7

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    const-string v1, "*** IOException in parseRxInfo ***"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

.method private resolveHDMIRxCamId()I
    .locals 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const-string v3, "RtkHDMIRxManager"

    if-ge v2, v0, :cond_1

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "back camera found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "no back camera"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public configureTargetFormat(Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "RtkHDMIRxManager"

    const-string v3, "configureTargetFormat.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->mFps:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->parseRxInfo()V

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    iget v3, v3, Lcom/realtek/hardware/HDMIRxStatus;->freq:I

    iput v3, v0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->mFps:I

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    :goto_0
    iget v5, v0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->width:I

    iget v6, v0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->height:I

    iget v7, v0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->mFps:I

    iget v8, v0, Lcom/realtek/hardware/RtkHDMIRxManager$VideoConfig;->bitrate:I

    iget v14, v1, Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;->channelCount:I

    iget v0, v1, Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;->sampleRate:I

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;->bitrate:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x800

    const/16 v13, 0x8

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move/from16 v16, v0

    move/from16 v17, v1

    invoke-direct/range {v4 .. v17}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_configureTargetFormat(IIIIIIIIIIIII)V

    return-void
.end method

.method public getAudioMode()I
    .locals 3

    const-string v0, "persist.rtk.hdmirx.raw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public getHDMIRxStatus()Lcom/realtek/hardware/HDMIRxStatus;
    .locals 1

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->parseRxInfo()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->mHDMIRxStatus:Lcom/realtek/hardware/HDMIRxStatus;

    return-object v0
.end method

.method public getParameters()Lcom/realtek/hardware/HDMIRxParameters;
    .locals 5

    new-instance v0, Lcom/realtek/hardware/HDMIRxParameters;

    invoke-direct {v0}, Lcom/realtek/hardware/HDMIRxParameters;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_getParameters()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getParameters Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RtkHDMIRxManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/realtek/hardware/HDMIRxParameters;->unflatten(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSnapshot(IIIIIII)[B
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_getSnapshot(IIIIIII)[B

    move-result-object p1

    return-object p1
.end method

.method public isHDMIRxPlugged()Z
    .locals 1

    const-string v0, "/sys/devices/virtual/switch/rx_video/state"

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->getSwitchState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public muteHDMIRxAudio()Z
    .locals 1

    const-string v0, "/sys/devices/virtual/switch/rx_audio/state"

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->getSwitchState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;)I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hdmi rx open(), package name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RtkHDMIRxManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v3, -0x1

    if-gtz v0, :cond_0

    const-string p1, "[HDMIRX-JNI] no camera found"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->resolveHDMIRxCamId()I

    move-result v0

    const/16 v4, 0xa

    :cond_1
    if-gez v0, :cond_2

    const-string v0, "no HDMIRx found - retry"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->resolveHDMIRxCamId()I

    move-result v0

    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/2addr v4, v3

    if-gtz v4, :cond_1

    const-string v4, "no HDMIRx found. break"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-gez v0, :cond_3

    return v3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " done"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_open(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public play()I
    .locals 2

    const-string v0, "RtkHDMIRxManager"

    const-string v1, "hdmi rx play()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_startPreview()I

    move-result v0

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->setHDMIRxAudio()Z

    return v0
.end method

.method public prepare()V
    .locals 2

    const-string v0, "RtkHDMIRxManager"

    const-string v1, "hdmi rx prepare(), package name:RtkHDMIRxManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_prepare()V

    return-void
.end method

.method public refreshCamera(II)V
    .locals 3

    const-string v0, "RtkHDMIRxManager"

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshCamera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_refreshCamera(II)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "refreshCamera error input"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "RtkHDMIRxManager"

    const-string v1, "hdmi rx release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_release()V

    return-void
.end method

.method public setHDMIRxAudio()Z
    .locals 1

    const-string v0, "/sys/devices/virtual/switch/rx_audio/state"

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->getSwitchState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager;->mListener:Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;

    return-void
.end method

.method public setParameters(Lcom/realtek/hardware/HDMIRxParameters;)V
    .locals 6

    .line 1
    const-string v0, "hdmi rx setParameters()"

    .line 2
    .line 3
    const-string v1, "RtkHDMIRxManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/realtek/hardware/HDMIRxParameters;->getPreviewSize()Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    .line 15
    .line 16
    iget v0, v0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/realtek/hardware/HDMIRxParameters;->getPreviewFrameRate()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v2, 0x2d0

    .line 24
    .line 25
    const/16 v0, 0x1e0

    .line 26
    .line 27
    const/16 p1, 0x1e

    .line 28
    .line 29
    :goto_0
    const-string v3, "hdmi rx preview size:("

    .line 30
    .line 31
    const-string v4, ","

    .line 32
    .line 33
    const-string v5, "), fps:"

    .line 34
    .line 35
    invoke-static {v3, v2, v4, v0, v5}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v2, v0, p1}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_setParameters(III)V

    .line 50
    .line 51
    .line 52
    return-void
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
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
.end method

.method public setPlayback(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_setPlayback(ZZ)V

    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hdmi rx setPreviewDisplay(), holder:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIRxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_setPreviewDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public final setPreviewDisplay2(Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hdmi rx setPreviewDisplay2(), surface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIRxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_setPreviewDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public final setPreviewDisplay3(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_setPreviewDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public setTargetFd(Landroid/os/ParcelFileDescriptor;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTargetFd fd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIRxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_setTargetFd(II)V

    return-void
.end method

.method public setTranscode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTranscode on:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIRxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->getAudioMode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "enable record during RAW mode"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_setTranscode(Z)V

    return-void
.end method

.method public stop()I
    .locals 2

    const-string v0, "RtkHDMIRxManager"

    const-string v1, "hdmi rx stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->muteHDMIRxAudio()Z

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxManager;->native_stopPreview()I

    move-result v0

    return v0
.end method
