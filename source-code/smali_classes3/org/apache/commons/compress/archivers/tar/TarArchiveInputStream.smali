.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field private currentSparseInputStreamIndex:I

.field final encoding:Ljava/lang/String;

.field private entryOffset:J

.field private entrySize:J

.field private globalPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final globalSparseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation
.end field

.field private hasHitEOF:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final lenient:Z

.field private final recordSize:I

.field private final smallBuf:[B

.field private sparseInputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 6

    .line 3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->encoding:Ljava/lang/String;

    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iput p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    iput-boolean p5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->lenient:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 5
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method private applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->updateEntryFromPaxHeaders(Ljava/util/Map;)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    return-void
.end method

.method private buildSparseInputStreams()V
    .locals 11

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;-><init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    if-eqz v0, :cond_5

    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$TarArchiveSparseZeroInputStream;-><init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream$1;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v7

    sub-long/2addr v7, v4

    cmp-long v9, v7, v2

    if-ltz v9, :cond_4

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v7

    sub-long/2addr v7, v4

    cmp-long v9, v7, v2

    if-lez v9, :cond_2

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    new-instance v8, Lorg/apache/commons/compress/utils/BoundedInputStream;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-direct {v8, v1, v9, v10}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v4

    cmp-long v7, v4, v2

    if-lez v7, :cond_3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    new-instance v5, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v8

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v4

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted struct sparse detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    :cond_6
    return-void
.end method

.method private consumeRemainderOfLastBlock()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    int-to-long v4, v2

    sub-long/2addr v4, v0

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    :cond_0
    return-void
.end method

.method private getRecord()[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->tryToConsumeSecondEOFRecord()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->consumeRemainderOfLastBlock()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private isDirectory()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static matches([BI)Z
    .locals 7

    const/16 v0, 0x109

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const-string p1, "ustar\u0000"

    const/16 v0, 0x101

    const/4 v2, 0x6

    invoke-static {p1, p0, v0, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x107

    if-eqz v3, :cond_1

    const-string v3, "00"

    invoke-static {v3, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    const-string v3, "ustar "

    invoke-static {v3, p0, v0, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " \u0000"

    invoke-static {v3, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0\u0000"

    invoke-static {v3, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v4

    :cond_3
    invoke-static {p1, p0, v0, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u0000\u0000"

    invoke-static {p1, p0, v6, v5}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private parsePAX01SparseHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-direct {v6, v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parsePAX1XSparseHeaders()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readLineOfNumberForPax1X(Ljava/io/InputStream;)[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    :goto_0
    const-wide/16 v8, 0x1

    sub-long v8, v3, v8

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readLineOfNumberForPax1X(Ljava/io/InputStream;)[J

    move-result-object v1

    aget-wide v3, v1, v2

    aget-wide v10, v1, v5

    add-long/2addr v6, v10

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readLineOfNumberForPax1X(Ljava/io/InputStream;)[J

    move-result-object v1

    aget-wide v10, v1, v2

    aget-wide v12, v1, v5

    add-long/2addr v6, v12

    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-direct {v1, v3, v4, v10, v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v3, v8

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v2, v1

    int-to-long v4, v1

    rem-long/2addr v6, v4

    sub-long/2addr v2, v6

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    return-object v0
.end method

.method private paxHeaders()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "GNU.sparse.map"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePAX01SparseHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNU1XSparse()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePAX1XSparseHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buildSparseInputStreams()V

    return-void
.end method

.method private readGlobalPaxHeaders()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    invoke-virtual {p0, p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-void
.end method

.method private readLineOfNumberForPax1X(Ljava/io/InputStream;)[J
    .locals 8

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0xa

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    if-eq v4, v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-wide/16 v5, 0xa

    mul-long v2, v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected EOF when reading parse information of 1.X PAX format"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [J

    const/4 v4, 0x0

    aput-wide v2, p1, v4

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    return-object p1
.end method

.method private readOldGNUSparse()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;-><init>([B)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buildSparseInputStreams()V

    return-void
.end method

.method private readSparse([BII)I
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    return v0

    :cond_2
    if-ne v0, v2, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result p1

    return p1

    :cond_3
    if-ge v0, p3, :cond_5

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result p1

    if-ne p1, v2, :cond_4

    return v0

    :cond_4
    add-int/2addr v0, p1

    :cond_5
    return v0

    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method private skipRecordPadding()V
    .locals 8

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v5, v4

    rem-long v5, v0, v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_0

    int-to-long v2, v4

    div-long v2, v0, v2

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    int-to-long v4, v4

    mul-long v2, v2, v4

    sub-long/2addr v2, v0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    :cond_0
    return-void
.end method

.method private skipSparse(J)J
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    goto :goto_0

    :cond_2
    return-wide v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private tryToConsumeSecondEOFRecord()V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public available()I
    .locals 5

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getLongNameData()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    array-length v3, v0

    if-eq v1, v3, :cond_3

    new-array v3, v1, [B

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :cond_3
    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipRecordPadding()V

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    :cond_2
    :try_start_0
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->lenient:Z

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongLinkEntry()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongNameEntry()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readGlobalPaxHeaders()V

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->paxHeaders()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V

    :cond_9
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readOldGNUSparse()V

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error detected parsing the header"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isAtEOF()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    return v0
.end method

.method public isEOFRecord([B)Z
    .locals 1

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isArrayZero([BI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    :cond_0
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    const-wide/16 v9, 0x0

    .line 21
    .line 22
    const/4 v11, -0x1

    .line 23
    if-eq v8, v11, :cond_1

    .line 24
    .line 25
    const/4 v12, 0x1

    .line 26
    add-int/2addr v6, v12

    .line 27
    const/16 v13, 0xa

    .line 28
    .line 29
    if-ne v8, v13, :cond_2

    .line 30
    .line 31
    :cond_1
    move-object/from16 v15, p1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_2
    const/16 v13, 0x20

    .line 36
    .line 37
    if-ne v8, v13, :cond_b

    .line 38
    .line 39
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 40
    .line 41
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    if-eq v13, v11, :cond_3

    .line 49
    .line 50
    add-int/2addr v6, v12

    .line 51
    const/16 v14, 0x3d

    .line 52
    .line 53
    if-ne v13, v14, :cond_a

    .line 54
    .line 55
    const-string v14, "UTF-8"

    .line 56
    .line 57
    invoke-virtual {v8, v14}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    sub-int/2addr v7, v6

    .line 62
    if-ne v7, v12, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_3
    move-object/from16 v15, p1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    new-array v6, v7, [B

    .line 71
    .line 72
    move-object/from16 v15, p1

    .line 73
    .line 74
    invoke-static {v15, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-ne v12, v7, :cond_9

    .line 79
    .line 80
    new-instance v12, Ljava/lang/String;

    .line 81
    .line 82
    add-int/lit8 v7, v7, -0x1

    .line 83
    .line 84
    invoke-direct {v12, v6, v5, v7, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v5, "GNU.sparse.offset"

    .line 91
    .line 92
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_6

    .line 97
    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    invoke-direct {v5, v6, v7, v9, v10}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :cond_6
    const-string v5, "GNU.sparse.numbytes"

    .line 117
    .line 118
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_8

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    invoke-direct {v5, v6, v7, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    goto :goto_2

    .line 144
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 145
    .line 146
    const-string v1, "Failed to read Paxheader.GNU.sparse.offset is expected before GNU.sparse.numbytes shows up."

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_8
    :goto_2
    move v8, v13

    .line 153
    goto :goto_3

    .line 154
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 155
    .line 156
    const-string v1, "Failed to read Paxheader. Expected "

    .line 157
    .line 158
    const-string v3, " bytes, read "

    .line 159
    .line 160
    invoke-static {v1, v7, v3, v12}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_a
    move-object/from16 v15, p1

    .line 169
    .line 170
    int-to-byte v3, v13

    .line 171
    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_b
    move-object/from16 v15, p1

    .line 177
    .line 178
    mul-int/lit8 v7, v7, 0xa

    .line 179
    .line 180
    add-int/lit8 v8, v8, -0x30

    .line 181
    .line 182
    add-int/2addr v7, v8

    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :goto_3
    if-ne v8, v11, :cond_0

    .line 186
    .line 187
    if-eqz v4, :cond_c

    .line 188
    .line 189
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    invoke-direct {v3, v4, v5, v9, v10}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;-><init>(JJ)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_c
    return-object v1
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
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
.end method

.method public read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    if-nez v0, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    :goto_0
    if-ne p1, v1, :cond_6

    if-gtz p3, :cond_5

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Truncated TAR archive"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    :goto_1
    return p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current tar entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return v1
.end method

.method public readRecord()[B
    .locals 3

    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordSize:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final setAtEOF(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->hasHitEOF:Z

    return-void
.end method

.method public skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->inputStream:Ljava/io/InputStream;

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v2, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipSparse(J)J

    move-result-wide p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    return-wide p1

    :cond_2
    :goto_1
    return-wide v0
.end method
