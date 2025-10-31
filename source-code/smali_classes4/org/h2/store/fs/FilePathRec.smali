.class public Lorg/h2/store/fs/FilePathRec;
.super Lorg/h2/store/fs/FilePathWrapper;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lorg/h2/store/fs/FilePathRec;

.field private static recorder:Lorg/h2/store/fs/Recorder;


# instance fields
.field private trace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/h2/store/fs/FilePathRec;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathRec;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FilePathRec;->INSTANCE:Lorg/h2/store/fs/FilePathRec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathWrapper;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 1

    sget-object v0, Lorg/h2/store/fs/FilePathRec;->INSTANCE:Lorg/h2/store/fs/FilePathRec;

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->register(Lorg/h2/store/fs/FilePath;)V

    return-void
.end method

.method public static setRecorder(Lorg/h2/store/fs/Recorder;)V
    .locals 0

    sput-object p0, Lorg/h2/store/fs/FilePathRec;->recorder:Lorg/h2/store/fs/Recorder;

    return-void
.end method


# virtual methods
.method public createFile()Z
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;)V

    invoke-super {p0}, Lorg/h2/store/fs/FilePathWrapper;->createFile()Z

    move-result v0

    return v0
.end method

.method public createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathWrapper;->unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lorg/h2/store/fs/FilePathWrapper;->createTempFile(Ljava/lang/String;ZZ)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method

.method public delete()V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;)V

    invoke-super {p0}, Lorg/h2/store/fs/FilePathWrapper;->delete()V

    return-void
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "rec"

    return-object v0
.end method

.method public isTrace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/store/fs/FilePathRec;->trace:Z

    return v0
.end method

.method public log(ILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;[BJ)V

    return-void
.end method

.method public log(ILjava/lang/String;[BJ)V
    .locals 6

    .line 2
    sget-object v0, Lorg/h2/store/fs/FilePathRec;->recorder:Lorg/h2/store/fs/Recorder;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/h2/store/fs/Recorder;->log(ILjava/lang/String;[BJ)V

    :cond_0
    return-void
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathWrapper;->unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathWrapper;->unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/h2/store/fs/FilePathWrapper;->moveTo(Lorg/h2/store/fs/FilePath;Z)V

    return-void
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 2

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/h2/store/fs/FilePathRec;->log(ILjava/lang/String;)V

    invoke-super {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->newOutputStream(Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 2

    new-instance v0, Lorg/h2/store/fs/FileRec;

    invoke-super {p0, p1}, Lorg/h2/store/fs/FilePathWrapper;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/store/fs/FileRec;-><init>(Lorg/h2/store/fs/FilePathRec;Ljava/nio/channels/FileChannel;Ljava/lang/String;)V

    return-object v0
.end method

.method public setTrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/store/fs/FilePathRec;->trace:Z

    return-void
.end method
