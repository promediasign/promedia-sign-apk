.class public Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
.super Lorg/apache/poi/poifs/filesystem/BlockStore;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _bat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field private _data:Lorg/apache/poi/poifs/nio/DataSource;

.field private _header:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field private _mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

.field private _property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

.field private _root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private _xbat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x2

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    const/4 v1, -0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->setNextBlock(II)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/property/PropertyTableBase;->setStartBlock(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    :try_start_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x200

    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    new-instance v3, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v3, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->sanityCheckBlockCount(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-static {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateMaximumSize(Lorg/apache/poi/poifs/storage/HeaderBlock;)J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    long-to-int v4, v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v1, v3}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readCoreContents()V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable read a >2gb file via an InputStream"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v2

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V

    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    throw v2
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V
    .locals 5

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Z)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_0
    new-instance p2, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p2}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw p2

    :cond_1
    new-instance p2, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/nio/channels/FileChannel;Z)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    :goto_0
    const/16 p2, 0x200

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    new-instance p3, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {p3, p2}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readCoreContents()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_2
    throw p2

    :goto_2
    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    throw p2
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 2

    .line 7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZ)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/BlockStore;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    new-instance v1, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    new-instance v0, Lorg/apache/poi/poifs/property/NPropertyTable;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/property/NPropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([B)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    :cond_0
    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "can\'t close input stream"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x7

    invoke-virtual {p2, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    mul-int v1, v1, p1

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    return-object p2
.end method

.method public static createNonClosingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/util/CloseIgnoringInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static hasPOIFSHeader(Ljava/io/InputStream;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasPOIFSHeader([B)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid header check"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "two arguments required: input filename and output filename"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method private readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 1

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v0, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readCoreContents()V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-direct {p0, v5, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v5

    const/4 v6, -0x2

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v7, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v2

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    invoke-virtual {v5, v8}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    if-ne v9, v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, v9, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sub-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/poi/poifs/property/NPropertyTable;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/poifs/property/NPropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v2, p0, v4, v1, v5}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v2

    :goto_4
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-eq v2, v6, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v5, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getNextBlock(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private syncWithDataSource()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;->syncWithDataSource()V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/NPropertyTable;->preWrite()V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/property/NPropertyTable;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V

    new-instance v0, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/storage/HeaderBlockWriter;->writeBlock(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BlockAllocationTableWriter;->writeBlock(Lorg/apache/poi/poifs/storage/BATBlock;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public _get_property_table()Lorg/apache/poi/poifs/property/NPropertyTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    return-object v0
.end method

.method public addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public addDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/DataSource;->close()V

    return-void
.end method

.method public createBlockIfNeeded(I)Ljava/nio/ByteBuffer;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    int-to-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v3, v2, v0, v1}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createOrUpdateDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    return-object p1
.end method

.method public getBigBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getBlockAt(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    int-to-long v0, p1

    .line 2
    const-wide/16 v2, 0x1

    .line 3
    .line 4
    add-long/2addr v0, v2

    .line 5
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    mul-long v0, v0, v2

    .line 13
    .line 14
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    .line 15
    .line 16
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 17
    .line 18
    invoke-virtual {v3}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/poi/poifs/nio/DataSource;->read(IJ)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "Block "

    .line 31
    .line 32
    const-string v3, " not found"

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    throw v1
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
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
.end method

.method public getBlockStoreBlockSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBigBlockSize()I

    move-result v0

    return v0
.end method

.method public getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V

    return-object v0
.end method

.method public getFreeBlock()I
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, -0x1

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 27
    .line 28
    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_1
    if-ge v6, v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v6}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-ne v7, v5, :cond_0

    .line 42
    .line 43
    add-int/2addr v3, v6

    .line 44
    return v3

    .line 45
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/2addr v3, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v3, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v4, -0x3

    .line 56
    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 65
    .line 66
    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/16 v6, 0x6d

    .line 71
    .line 72
    if-lt v4, v6, :cond_8

    .line 73
    .line 74
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 91
    .line 92
    invoke-virtual {v6}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/4 v6, 0x0

    .line 100
    :goto_2
    if-nez v6, :cond_6

    .line 101
    .line 102
    add-int/lit8 v4, v3, 0x1

    .line 103
    .line 104
    invoke-direct {p0, v4, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5, v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 109
    .line 110
    .line 111
    const/4 v2, -0x4

    .line 112
    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_5

    .line 122
    .line 123
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATStart(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 130
    .line 131
    invoke-static {v1, v0}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    .line 136
    .line 137
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 138
    .line 139
    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 144
    .line 145
    .line 146
    :goto_3
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 152
    .line 153
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATCount(I)V

    .line 160
    .line 161
    .line 162
    move v3, v4

    .line 163
    goto :goto_5

    .line 164
    :cond_6
    :goto_4
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 165
    .line 166
    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ge v2, v1, :cond_9

    .line 171
    .line 172
    invoke-virtual {v6, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-ne v1, v5, :cond_7

    .line 177
    .line 178
    invoke-virtual {v6, v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_8
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 186
    .line 187
    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    add-int/lit8 v4, v1, 0x1

    .line 192
    .line 193
    new-array v4, v4, [I

    .line 194
    .line 195
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 196
    .line 197
    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    .line 203
    .line 204
    aput v3, v4, v1

    .line 205
    .line 206
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 207
    .line 208
    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    .line 209
    .line 210
    .line 211
    :cond_9
    :goto_5
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 212
    .line 213
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    .line 220
    .line 221
    .line 222
    add-int/2addr v3, v0

    .line 223
    return v3
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

.method public getHeaderBlock()Lorg/apache/poi/poifs/storage/HeaderBlock;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    return-object v0
.end method

.method public getMiniStore()Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/NPOIFSMiniStore;

    return-object v0
.end method

.method public getNextBlock(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result p1

    return p1
.end method

.method public getPropertyTable()Lorg/apache/poi/poifs/property/NPropertyTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "POIFS FileSystem"

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->preferArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->getViewableIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isInPlaceWriteable()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    instance-of v1, v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->isWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preferArray()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/dev/POIFSViewable;->preferArray()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->free()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/NPropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->removeProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public setNextBlock(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public writeFilesystem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    instance-of v1, v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->isWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->syncWithDataSource()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "POIFS opened in read only mode, so writeFilesystem() may not be called. Open the FileSystem in read-write mode first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "POIFS opened from an inputstream, so writeFilesystem() may not be called. Use writeFilesystem(OutputStream) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeFilesystem(Ljava/io/OutputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->syncWithDataSource()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/nio/DataSource;->copyTo(Ljava/io/OutputStream;)V

    return-void
.end method
