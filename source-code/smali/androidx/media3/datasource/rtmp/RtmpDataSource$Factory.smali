.class public final Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/rtmp/RtmpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private transferListener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;->createDataSource()Landroidx/media3/datasource/rtmp/RtmpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Landroidx/media3/datasource/rtmp/RtmpDataSource;
    .locals 2

    .line 2
    new-instance v0, Landroidx/media3/datasource/rtmp/RtmpDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/rtmp/RtmpDataSource;-><init>()V

    iget-object v1, p0, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/BaseDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-object v0
.end method
