.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# instance fields
.field private final blockSize:I

.field private closed:Z

.field private crc:J

.field final encoding:Ljava/lang/String;

.field private entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

.field private entryBytesRead:J

.field private entryEOF:Z

.field private final fourBytesBuf:[B

.field private final in:Ljava/io/InputStream;

.field private final sixBytesBuf:[B

.field private final tmpbuf:[B

.field private final twoBytesBuf:[B

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    const/16 v0, 0x200

    const-string v1, "US-ASCII"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->fourBytesBuf:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    if-lez p2, :cond_0

    iput p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->encoding:Ljava/lang/String;

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "blockSize must be bigger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    return-void
.end method

.method private closeEntry()V
    .locals 5

    :goto_0
    const-wide/32 v0, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureOpen()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static matches([BI)Z
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    aget-byte p1, p0, v1

    const/16 v0, 0xc7

    const/16 v2, 0x71

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v0, :cond_1

    return v3

    :cond_1
    aget-byte v4, p0, v3

    if-ne v4, v2, :cond_2

    and-int/lit16 v2, p1, 0xff

    if-ne v2, v0, :cond_2

    return v3

    :cond_2
    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    const/16 p1, 0x37

    if-eq v4, p1, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-eq v2, v0, :cond_5

    return v1

    :cond_5
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    if-eq v2, v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x5

    aget-byte p0, p0, v0

    const/16 v0, 0x31

    if-ne p0, v0, :cond_8

    return v3

    :cond_8
    const/16 v0, 0x32

    if-ne p0, v0, :cond_9

    return v3

    :cond_9
    if-ne p0, p1, :cond_a

    return v3

    :cond_a
    return v1
.end method

.method private readAsciiLong(II)J
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method private readBinaryLong(IZ)J
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    invoke-static {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private readCString(I)Ljava/lang/String;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private final readFully([BII)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    if-lt p1, p3, :cond_0

    return p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 9

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    :goto_0
    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDeviceMaj(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDeviceMin(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDeviceMaj(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDeviceMin(J)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_4

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setChksum(J)V

    long-to-int v0, v4

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v1

    cmp-long v3, v1, v6

    if-nez v3, :cond_3

    const-string v1, "TRAILER!!!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mode 0 only allowed in the trailer. Found entry name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Occured at byte: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Found illegal entry with negative name length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Found illegal entry with negative length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readOldAsciiEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 11

    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDevice(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDevice(J)V

    const/16 v5, 0xb

    invoke-direct {p0, v5, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-ltz v1, :cond_4

    invoke-direct {p0, v5, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v1

    cmp-long v5, v1, v7

    if-ltz v5, :cond_3

    long-to-int v1, v9

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v2

    cmp-long v4, v2, v7

    if-nez v4, :cond_2

    const-string v2, "TRAILER!!!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Occured at byte: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Found illegal entry with negative length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Found illegal entry with negative name length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 10

    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDevice(J)V

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDevice(J)V

    const/4 v4, 0x4

    invoke-direct {p0, v4, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_4

    invoke-direct {p0, v4, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v4

    cmp-long p1, v4, v6

    if-ltz p1, :cond_3

    long-to-int p1, v8

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->fileType(J)J

    move-result-wide v1

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    const-string v1, "TRAILER!!!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Occured at byte: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-wide/16 v1, 0x1

    sub-long/2addr v8, v1

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount(J)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Found illegal entry with negative length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Found illegal entry with negative name length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skip(I)V
    .locals 2

    .line 2
    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->fourBytesBuf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    :cond_0
    return-void
.end method

.method private skipRemainderOfLastBlock()V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    int-to-long v5, v2

    sub-long/2addr v5, v0

    :goto_0
    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    int-to-long v7, v2

    sub-long/2addr v7, v0

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    sub-long/2addr v5, v7

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public getNextCPIOEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closeEntry()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    .line 19
    .line 20
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v3, 0x71c7

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    cmp-long v6, v0, v3

    .line 28
    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    .line 40
    .line 41
    invoke-static {v0, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    cmp-long v6, v0, v3

    .line 46
    .line 47
    if-nez v6, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    .line 55
    .line 56
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    .line 57
    .line 58
    array-length v3, v0

    .line 59
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    .line 63
    .line 64
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->twoBytesBuf:[B

    .line 65
    .line 66
    array-length v1, v1

    .line 67
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->fourBytesBuf:[B

    .line 68
    .line 69
    array-length v3, v3

    .line 70
    invoke-direct {p0, v0, v1, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->sixBytesBuf:[B

    .line 74
    .line 75
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/4 v1, -0x1

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    sparse-switch v3, :sswitch_data_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :sswitch_0
    const-string v3, "070707"

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 v1, 0x2

    .line 104
    goto :goto_1

    .line 105
    :sswitch_1
    const-string v3, "070702"

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const/4 v1, 0x1

    .line 115
    goto :goto_1

    .line 116
    :sswitch_2
    const-string v3, "070701"

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    const/4 v1, 0x0

    .line 126
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljava/io/IOException;

    .line 130
    .line 131
    const-string v2, "Unknown magic ["

    .line 132
    .line 133
    const-string v3, "]. Occured at byte: "

    .line 134
    .line 135
    invoke-static {v2, v0, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldAsciiEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :goto_2
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :pswitch_1
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_2

    .line 166
    :pswitch_2
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    goto :goto_2

    .line 171
    :goto_3
    const-wide/16 v0, 0x0

    .line 172
    .line 173
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    .line 174
    .line 175
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 176
    .line 177
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    .line 178
    .line 179
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 180
    .line 181
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "TRAILER!!!"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_6

    .line 192
    .line 193
    iput-boolean v5, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 194
    .line 195
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skipRemainderOfLastBlock()V

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x0

    .line 199
    return-object v0

    .line 200
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 201
    .line 202
    return-object v0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x550650cf -> :sswitch_2
        0x550650d0 -> :sswitch_1
        0x550650d5 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getNextCPIOEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 9

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_9

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v5

    const/4 v1, 0x2

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDataPadCount()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p1

    if-ne p1, v1, :cond_3

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "CRC Error. Occured at byte: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return v2

    :cond_4
    int-to-long v3, p3

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    if-gez p3, :cond_5

    return v2

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    move-result p2

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result p3

    if-ne p3, v1, :cond_6

    :goto_1
    if-ge v0, p2, :cond_6

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    aget-byte p3, p1, v0

    and-int/lit16 p3, p3, 0xff

    int-to-long v3, p3

    add-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    if-lez p2, :cond_7

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    :cond_7
    return p2

    :cond_8
    :goto_2
    return v2

    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public skip(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    sub-int v1, p2, v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    array-length v1, v2

    :cond_0
    invoke-virtual {p0, v2, p1, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long p1, v0

    return-wide p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative skip length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
