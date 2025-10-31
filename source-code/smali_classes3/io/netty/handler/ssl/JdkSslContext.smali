.class public Lio/netty/handler/ssl/JdkSslContext;
.super Lio/netty/handler/ssl/SslContext;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CIPHERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CIPHERS_NON_TLSV13:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:[Ljava/lang/String;

.field private static final DEFAULT_PROVIDER:Ljava/security/Provider;

.field static final PROTOCOL:Ljava/lang/String; = "TLS"

.field private static final SUPPORTED_CIPHERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CIPHERS_NON_TLSV13:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

.field private final cipherSuites:[Ljava/lang/String;

.field private final clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field private final isClient:Z

.field private final protocols:[Ljava/lang/String;

.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final unmodifiableCipherSuites:Ljava/util/List;
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
    .locals 7

    const-class v0, Lio/netty/handler/ssl/JdkSslContext;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/JdkSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROVIDER:Ljava/security/Provider;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/JdkSslContext;->defaultProtocols(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    invoke-static {v2}, Lio/netty/handler/ssl/JdkSslContext;->supportedCiphers(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS:Ljava/util/Set;

    invoke-static {v2, v3}, Lio/netty/handler/ssl/JdkSslContext;->defaultCiphers(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS_NON_TLSV13:Ljava/util/List;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS_NON_TLSV13:Ljava/util/Set;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Default protocols (JDK): {} "

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Default cipher suites (JDK): {}"

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    const-string v2, "failed to initialize the default SSL context"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZLio/netty/handler/ssl/ClientAuth;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v4, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    sget-object v5, Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;->INSTANCE:Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;Lio/netty/handler/ssl/ClientAuth;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "Lio/netty/handler/ssl/ClientAuth;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 3
    xor-int/lit8 v0, p2, 0x1

    move-object v1, p5

    invoke-static {p5, v0}, Lio/netty/handler/ssl/JdkSslContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;Z)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    move-result-object v5

    if-nez p7, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p7 .. p7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p8}, Lio/netty/handler/ssl/SslContext;-><init>(Z)V

    const-string p8, "apn"

    invoke-static {p5, p8}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    iput-object p5, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    const-string p5, "clientAuth"

    invoke-static {p6, p5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/netty/handler/ssl/ClientAuth;

    iput-object p5, p0, Lio/netty/handler/ssl/JdkSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    const-string p5, "sslContext"

    invoke-static {p1, p5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljavax/net/ssl/SSLContext;

    iput-object p5, p0, Lio/netty/handler/ssl/JdkSslContext;->sslContext:Ljavax/net/ssl/SSLContext;

    sget-object p5, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROVIDER:Ljava/security/Provider;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    if-nez p7, :cond_0

    sget-object p7, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    :cond_0
    iput-object p7, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    invoke-static {p7}, Lio/netty/handler/ssl/JdkSslContext;->isTlsV13Supported([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS:Ljava/util/Set;

    sget-object p5, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS:Ljava/util/List;

    goto :goto_2

    :cond_1
    sget-object p1, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS_NON_TLSV13:Ljava/util/Set;

    sget-object p5, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS_NON_TLSV13:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p5

    if-nez p7, :cond_3

    :try_start_0
    invoke-static {p1, p5}, Lio/netty/handler/ssl/JdkSslContext;->defaultProtocols(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    iput-object p7, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    :goto_0
    invoke-static {p5}, Lio/netty/handler/ssl/JdkSslContext;->supportedCiphers(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p5, p1}, Lio/netty/handler/ssl/JdkSslContext;->defaultCiphers(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;

    move-result-object p6

    iget-object p7, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    invoke-static {p7}, Lio/netty/handler/ssl/JdkSslContext;->isTlsV13Supported([Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_4

    sget-object p7, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    array-length p8, p7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p8, :cond_4

    aget-object v1, p7, v0

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p5}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    move-object p5, p6

    :goto_2
    const-string p6, "cipherFilter"

    invoke-static {p4, p6}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/netty/handler/ssl/CipherSuiteFilter;

    invoke-interface {p4, p3, p5, p1}, Lio/netty/handler/ssl/CipherSuiteFilter;->filterCipherSuites(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/JdkSslContext;->cipherSuites:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/JdkSslContext;->unmodifiableCipherSuites:Ljava/util/List;

    iput-boolean p2, p0, Lio/netty/handler/ssl/JdkSslContext;->isClient:Z

    return-void

    :goto_3
    invoke-static {p5}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    throw p1
.end method

.method public static buildKeyManagerFactory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/JdkSslContext;->buildKeyManagerFactory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method public static buildKeyManagerFactory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 7

    .line 2
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SunX509"

    :cond_0
    move-object v2, v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lio/netty/handler/ssl/JdkSslContext;->buildKeyManagerFactory(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method public static buildKeyManagerFactory(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p0}, Lio/netty/handler/ssl/SslContext;->toX509Certificates(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {p2, p3}, Lio/netty/handler/ssl/SslContext;->toPrivateKey(Ljava/io/File;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/handler/ssl/SslContext;->buildKeyManagerFactory([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method public static buildKeyManagerFactory(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 6

    .line 4
    invoke-static {p0}, Lio/netty/handler/ssl/SslContext;->toX509Certificates(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {p2, p3}, Lio/netty/handler/ssl/SslContext;->toPrivateKey(Ljava/io/File;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/netty/handler/ssl/SslContext;->buildKeyManagerFactory([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method private configureAndWrapEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->isClient()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->isServer()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ClientAuth:[I

    iget-object v1, p0, Lio/netty/handler/ssl/JdkSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown auth "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    invoke-interface {v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->wrapperFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    move-result-object v0

    instance-of v1, v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;

    if-eqz v1, :cond_4

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;

    iget-object v1, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->isServer()Z

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;->wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p2, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->isServer()Z

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;->wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method private static defaultCiphers(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/netty/handler/ssl/SslUtils;->DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/netty/handler/ssl/SslUtils;->useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;[Ljava/lang/String;)V

    return-object v0
.end method

.method private static defaultProtocols(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "TLSv1.1"

    const-string v2, "TLSv1"

    const-string v3, "TLSv1.2"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isTlsV13Supported([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const-string v4, "TLSv1.3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static supportedCiphers(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v0

    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const-string v4, "SSL_"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v5, "TLS_"

    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    invoke-static {v3, v5, v4}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :try_start_0
    filled-new-array {v3}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {p0, v4}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-object v1
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

.method public static toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;Z)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .locals 7

    if-nez p0, :cond_0

    sget-object p0, Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;->INSTANCE:Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;

    return-object p0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x0

    const-string v3, " failure behavior"

    const-string v4, "JDK provider does not support "

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    const/4 v6, 0x3

    if-ne v0, v6, :cond_6

    if-eqz p1, :cond_3

    sget-object p1, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_2

    if-ne p1, v5, :cond_1

    new-instance p1, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_3
    sget-object p1, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_5

    if-ne p1, v5, :cond_4

    new-instance p1, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " protocol"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz p1, :cond_a

    sget-object p1, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_9

    if-ne p1, v5, :cond_8

    new-instance p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_a
    sget-object p1, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_c

    if-ne p1, v5, :cond_b

    new-instance p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    :cond_d
    sget-object p0, Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;->INSTANCE:Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    move-result-object v0

    return-object v0
.end method

.method public final applicationProtocolNegotiator()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

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

    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->unmodifiableCipherSuites:Ljava/util/List;

    return-object v0
.end method

.method public final context()Ljavax/net/ssl/SSLContext;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public final isClient()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/ssl/JdkSslContext;->isClient:Z

    return v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/JdkSslContext;->configureAndWrapEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/netty/handler/ssl/JdkSslContext;->configureAndWrapEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method public final sessionCacheSize()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->sessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionCacheSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final sessionTimeout()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->sessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
