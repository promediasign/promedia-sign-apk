.class Lorg/h2/store/fs/FileZip$1;
.super Ljava/nio/channels/FileLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/store/fs/FileZip;->tryLock(JJZ)Ljava/nio/channels/FileLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/store/fs/FileZip;


# direct methods
.method public constructor <init>(Lorg/h2/store/fs/FileZip;Ljava/nio/channels/FileChannel;JJZ)V
    .locals 7

    iput-object p1, p0, Lorg/h2/store/fs/FileZip$1;->this$0:Lorg/h2/store/fs/FileZip;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
