.class public abstract Landroidx/media3/exoplayer/rtsp/RtpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getIncomingRtpDataSpec(I)Landroidx/media3/datasource/DataSpec;
    .locals 4

    new-instance v0, Landroidx/media3/datasource/DataSpec;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "rtp://0.0.0.0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s:%d"

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method
