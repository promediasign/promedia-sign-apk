.class public Lorg/apache/mina/core/file/FilenameFileRegion;
.super Lorg/apache/mina/core/file/DefaultFileRegion;
.source "SourceFile"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/nio/channels/FileChannel;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/core/file/FilenameFileRegion;-><init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V
    .locals 6

    .line 2
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/file/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/file/FilenameFileRegion;->file:Ljava/io/File;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "file can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/file/FilenameFileRegion;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
