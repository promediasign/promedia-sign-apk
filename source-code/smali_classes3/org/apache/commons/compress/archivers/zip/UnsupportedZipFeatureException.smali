.class public Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;
.super Ljava/util/zip/ZipException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133a2c3L


# instance fields
.field private final transient entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private final reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " used in archive."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " used in entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported compression method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") used in entry "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-void
.end method
