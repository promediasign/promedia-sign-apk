.class public Landroidx/media3/common/FrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/FrameInfo$Builder;
    }
.end annotation


# instance fields
.field public final colorInfo:Landroidx/media3/common/ColorInfo;

.field public final height:I

.field public final offsetToAddUs:J

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Landroidx/media3/common/ColorInfo;IIFJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "width must be positive, but is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height must be positive, but is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/common/FrameInfo;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput p2, p0, Landroidx/media3/common/FrameInfo;->width:I

    iput p3, p0, Landroidx/media3/common/FrameInfo;->height:I

    iput p4, p0, Landroidx/media3/common/FrameInfo;->pixelWidthHeightRatio:F

    iput-wide p5, p0, Landroidx/media3/common/FrameInfo;->offsetToAddUs:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/ColorInfo;IIFJLandroidx/media3/common/FrameInfo$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Landroidx/media3/common/FrameInfo;-><init>(Landroidx/media3/common/ColorInfo;IIFJ)V

    return-void
.end method
