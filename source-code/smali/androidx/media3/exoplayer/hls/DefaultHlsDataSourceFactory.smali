.class public final Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createDataSource(I)Landroidx/media3/datasource/DataSource;
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {p1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method
