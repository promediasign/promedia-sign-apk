.class public abstract Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.super Lio/netty/handler/ssl/SslContext;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ReferenceCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;
    }
.end annotation


# static fields
.field private static final DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

.field private static final DH_KEY_LENGTH:Ljava/lang/Integer;

.field static final NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field static final USE_TASKS:Z

.field protected static final VERIFY_DEPTH:I = 0xa

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field private volatile bioNonApplicationBufferSize:I

.field final clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field protected ctx:J

.field final ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final enableOcsp:Z

.field final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field final keyCertChain:[Ljava/security/cert/Certificate;

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I

.field final protocols:[Ljava/lang/String;

.field private final refCnt:Lio/netty/util/AbstractReferenceCounted;

.field private final sessionCacheSize:J

.field private final sessionTimeout:J

.field private final unmodifiableCiphers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ReferenceCountedOpenSslContext supports -Djdk.tls.ephemeralDHKeySize={int}, but got: "

    const-class v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "io.netty.handler.ssl.openssl.bioNonApplicationBufferSize"

    const/16 v3, 0x800

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

    const-string v2, "io.netty.handler.ssl.openssl.useTasks"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->USE_TASKS:Z

    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$2;

    invoke-direct {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$2;-><init>()V

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "jdk.tls.ephemeralDHKeySize"

    invoke-static {v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_0
    :goto_0
    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DH_KEY_LENGTH:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJI[",
            "Ljava/security/cert/Certificate;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .line 1
    invoke-static/range {p3 .. p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;",
            "JJI[",
            "Ljava/security/cert/Certificate;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .line 2
    move-object v1, p0

    move/from16 v0, p8

    move/from16 v2, p13

    const-string v3, ""

    const-string v4, "failed to set cipher suite: "

    move/from16 v5, p12

    invoke-direct {p0, v5}, Lio/netty/handler/ssl/SslContext;-><init>(Z)V

    new-instance v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;

    invoke-direct {v5, p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    iput-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    new-instance v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;)V

    iput-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    new-instance v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    sget v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

    iput v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    if-eqz v2, :cond_1

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isOcspSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "OCSP is not supported."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "mode most be either SSL.SSL_MODE_SERVER or SSL.SSL_MODE_CLIENT"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz p14, :cond_4

    sget-object v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v7, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v6

    :goto_2
    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leak:Lio/netty/util/ResourceLeakTracker;

    iput v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->mode:I

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->isServer()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "clientAuth"

    move-object/from16 v8, p10

    invoke-static {v8, v7}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/handler/ssl/ClientAuth;

    goto :goto_3

    :cond_5
    sget-object v7, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_3
    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    move-object/from16 v7, p11

    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    iput-boolean v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    if-nez p9, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual/range {p9 .. p9}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;

    :goto_4
    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->keyCertChain:[Ljava/security/cert/Certificate;

    const-string v6, "cipherFilter"

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/handler/ssl/CipherSuiteFilter;

    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->availableJavaCipherSuites()Ljava/util/Set;

    move-result-object v8

    move-object v9, p1

    invoke-interface {v6, p1, v7, v8}, Lio/netty/handler/ssl/CipherSuiteFilter;->filterCipherSuites(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    const-string v7, "apn"

    move-object/from16 v8, p3

    invoke-static {v8, v7}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x3e

    goto :goto_5

    :cond_7
    const/16 v7, 0x1e

    :goto_5
    invoke-static {v7, v0}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v9

    iput-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v9, v10, v3, v11}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    if-eqz v0, :cond_9

    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v9, v10, v3, v5}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_8
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v3

    invoke-static {v6, v7, v9, v3}, Lio/netty/handler/ssl/CipherSuiteConverter;->convertToCipherStrings(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v13, v3, v11}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    if-eqz v0, :cond_9

    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v13, v0, v5}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :goto_6
    :try_start_3
    iget-wide v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSLContext;->getOptions(J)I

    move-result v0

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    or-int/2addr v0, v3

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v0, v3

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    or-int/2addr v0, v3

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    or-int/2addr v0, v3

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_COMPRESSION:I

    or-int/2addr v0, v3

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    or-int/2addr v0, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_a

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v3, v4

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    or-int/2addr v3, v4

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    or-int/2addr v3, v4

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    or-int/2addr v3, v4

    or-int/2addr v0, v3

    :cond_a
    iget-wide v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v3, v4, v0}, Lio/netty/internal/tcnative/SSLContext;->setOptions(JI)V

    iget-wide v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSLContext;->getMode(J)I

    move-result v0

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER:I

    or-int/2addr v0, v6

    invoke-static {v3, v4, v0}, Lio/netty/internal/tcnative/SSLContext;->setMode(JI)I

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DH_KEY_LENGTH:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-wide v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v4, v0}, Lio/netty/internal/tcnative/SSLContext;->setTmpDHLength(JI)V

    :cond_b
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    new-array v3, v11, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v3

    invoke-static {v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->opensslSelectorFailureBehavior(Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I

    move-result v3

    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    if-eq v4, v5, :cond_e

    const/4 v5, 0x2

    if-eq v4, v5, :cond_d

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v4, v5, v0, v3}, Lio/netty/internal/tcnative/SSLContext;->setNpnProtos(J[Ljava/lang/String;I)V

    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    :goto_7
    invoke-static {v4, v5, v0, v3}, Lio/netty/internal/tcnative/SSLContext;->setAlpnProtos(J[Ljava/lang/String;I)V

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    :cond_d
    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    goto :goto_7

    :cond_e
    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v4, v5, v0, v3}, Lio/netty/internal/tcnative/SSLContext;->setNpnProtos(J[Ljava/lang/String;I)V

    :cond_f
    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v0, p4, v3

    if-gtz v0, :cond_10

    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const-wide/16 v7, 0x5000

    invoke-static {v5, v6, v7, v8}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheSize(JJ)J

    move-result-wide v5

    goto :goto_9

    :cond_10
    move-wide/from16 v5, p4

    :goto_9
    iput-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionCacheSize:J

    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheSize(JJ)J

    cmp-long v0, p6, v3

    if-gtz v0, :cond_11

    iget-wide v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const-wide/16 v5, 0x12c

    invoke-static {v3, v4, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J

    move-result-wide v3

    goto :goto_a

    :cond_11
    move-wide/from16 v3, p6

    :goto_a
    iput-wide v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionTimeout:J

    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v5, v6, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J

    if-eqz v2, :cond_12

    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v0

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V

    :cond_12
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->USE_TASKS:Z

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->setUseTasks(JZ)V

    return-void

    :goto_b
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_c
    throw v0

    :catch_2
    move-exception v0

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "failed to create an SSL_CTX"

    invoke-direct {v2, v3, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_d
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->release()Z

    throw v0
.end method

.method public static synthetic access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)Lio/netty/util/ResourceLeakTracker;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leak:Lio/netty/util/ResourceLeakTracker;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->destroy()V

    return-void
.end method

.method public static synthetic access$300()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static certificates([[B)[Ljava/security/cert/X509Certificate;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lio/netty/handler/ssl/OpenSslX509Certificate;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result p0

    const/4 v0, 0x7

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    if-lt p0, v0, :cond_0

    invoke-static {v2}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no X509TrustManager found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no X509KeyManager found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroy()V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->disableOcsp(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    iput-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionContext;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static freeBio(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_0
    return-void
.end method

.method private static newBIO(Lio/netty/buffer/ByteBuf;)J
    .locals 7

    :try_start_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->newMemBIO()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-static {p0}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4, v2}, Lio/netty/internal/tcnative/SSL;->bioWrite(JJI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    return-wide v0

    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not write data to memory BIO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v0
.end method

.method private static opensslSelectorFailureBehavior(Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I
    .locals 2

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .locals 1

    instance-of v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;->newProvider()Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;->newProvider(Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p3

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    const/4 v5, 0x1

    move-object/from16 v6, p2

    invoke-static {v4, v5, v6}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-interface {v3}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v6

    invoke-static {v4, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v14
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-interface {v3}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v6

    invoke-static {v4, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v11
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {v4, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    if-nez p4, :cond_1

    const-string v0, ""
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v0

    goto :goto_1

    :cond_1
    move-object/from16 v13, p4

    :goto_1
    move-wide/from16 v7, p0

    move-wide v9, v14

    move-object/from16 p2, v3

    move-wide v3, v11

    move-wide v11, v1

    :try_start_4
    invoke-static/range {v7 .. v13}, Lio/netty/internal/tcnative/SSLContext;->setCertificateBio(JJJLjava/lang/String;)Z

    move-wide/from16 v6, p0

    invoke-static {v6, v7, v3, v4, v5}, Lio/netty/internal/tcnative/SSLContext;->setCertificateChainBio(JJZ)Z
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    invoke-static {v14, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    invoke-static {v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    invoke-interface/range {p2 .. p2}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    return-void

    :catchall_1
    move-exception v0

    move-wide v11, v3

    move-object/from16 v3, p2

    goto :goto_7

    :catch_2
    move-exception v0

    move-wide v11, v3

    move-object/from16 v3, p2

    goto :goto_5

    :catch_3
    move-exception v0

    move-wide v11, v3

    move-object/from16 v3, p2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 p2, v3

    move-wide v11, v1

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 p2, v3

    move-wide v11, v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 p2, v3

    move-wide v11, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 p2, v3

    :goto_2
    move-wide v11, v1

    move-wide v14, v11

    goto :goto_7

    :catch_6
    move-exception v0

    move-object/from16 p2, v3

    :goto_3
    move-wide v11, v1

    move-wide v14, v11

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 p2, v3

    :goto_4
    move-wide v11, v1

    move-wide v14, v11

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_4

    :goto_5
    :try_start_5
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "failed to set certificate and key"

    invoke-direct {v4, v5, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :goto_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    invoke-static {v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    invoke-static {v14, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    invoke-static {v11, v12}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    :cond_2
    throw v0
.end method

.method public static toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newBIO(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    return-wide v0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newBIO(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->isSensitive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    return-wide v0

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->isSensitive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_7
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v0

    :goto_3
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    throw p0
.end method

.method public static toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J
    .locals 2

    .line 2
    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->toPEM(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/PrivateKey;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    throw p0
.end method

.method public static varargs toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J
    .locals 2

    .line 3
    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "certChain can\'t be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object p0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 p0, 0x4

    if-ne v0, p0, :cond_1

    sget-object p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_2
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-string v3, " behavior"

    const-string v4, "OpenSSL provider does not support "

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    new-instance v0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/ApplicationProtocolConfig;)V

    return-object v0
.end method

.method public static useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of p0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object v0
.end method

.method public final cipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    return-object v0
.end method

.method public final context()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sslCtxPointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBioNonApplicationBufferSize()I
    .locals 1

    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    return v0
.end method

.method public getRejectRemoteInitiatedRenegotiation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final isClient()Z
    .locals 1

    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->mode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method public newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;
    .locals 8

    new-instance v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V

    return-object v7
.end method

.method public final newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Lio/netty/handler/ssl/SslHandler;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-direct {v0, p1, p4}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v0
.end method

.method public newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZLjava/util/concurrent/Executor;)Lio/netty/handler/ssl/SslHandler;
    .locals 1

    .line 2
    new-instance p4, Lio/netty/handler/ssl/SslHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-direct {p4, p1, p5}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V

    return-object p4
.end method

.method public final newHandler(Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/ssl/SslHandler;
    .locals 4

    .line 3
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v0
.end method

.method public newHandler(Lio/netty/buffer/ByteBufAllocator;ZLjava/util/concurrent/Executor;)Lio/netty/handler/ssl/SslHandler;
    .locals 4

    .line 4
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final refCnt()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result p1

    return p1
.end method

.method public final retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public final retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public final sessionCacheSize()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionCacheSize:J

    return-wide v0
.end method

.method public abstract sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final sessionTimeout()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionTimeout:J

    return-wide v0
.end method

.method public setBioNonApplicationBufferSize(I)V
    .locals 1

    const-string v0, "bioNonApplicationBufferSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    return-void
.end method

.method public final setPrivateKeyMethod(Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 5

    const-string v0, "method"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    new-instance v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;

    iget-object v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-direct {v3, v4, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V

    invoke-static {v1, v2, v3}, Lio/netty/internal/tcnative/SSLContext;->setPrivateKeyMethod(JLio/netty/internal/tcnative/SSLPrivateKeyMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setRejectRemoteInitiatedRenegotiation(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Renegotiation is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTicketKeys([B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionContext;->setTicketKeys([B)V

    return-void
.end method

.method public final setUseTasks(Z)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2, p1}, Lio/netty/internal/tcnative/SSLContext;->setUseTasks(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final sslCtxPointer()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSslCtx(J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final stats()Lio/netty/handler/ssl/OpenSslSessionStats;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionContext;->stats()Lio/netty/handler/ssl/OpenSslSessionStats;

    move-result-object v0

    return-object v0
.end method

.method public final touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public final touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method
