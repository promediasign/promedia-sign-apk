.class final Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/NativeLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoexecVolumeDetector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;->canExecuteExecutable(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static canExecuteExecutable(Ljava/io/File;)Z
    .locals 5

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lf/a;->j(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Lf/a;->l(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lf/a;->k()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    invoke-static {}, Lf/a;->t()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-static {}, Lf/a;->v()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lf/a;->j(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, v0}, Lf/a;->r(Ljava/nio/file/Path;Ljava/util/EnumSet;)V

    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result p0

    return p0
.end method
