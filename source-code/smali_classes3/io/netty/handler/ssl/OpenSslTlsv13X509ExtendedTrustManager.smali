.class final Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SourceFile"


# instance fields
.field private final tm:Ljavax/net/ssl/X509ExtendedTrustManager;


# direct methods
.method private constructor <init>(Ljavax/net/ssl/X509ExtendedTrustManager;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    return-void
.end method

.method public static wrap(Ljavax/net/ssl/X509ExtendedTrustManager;)Ljavax/net/ssl/X509ExtendedTrustManager;
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;-><init>(Ljavax/net/ssl/X509ExtendedTrustManager;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private static wrapEngine(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;
    .locals 3

    invoke-static {p0}, Lio/netty/channel/socket/nio/a;->o(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TLSv1.3"

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1;

    invoke-direct {v1, p0, p0, v0}, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1;-><init>(Ljavax/net/ssl/SSLEngine;Ljavax/net/ssl/SSLEngine;Ljavax/net/ssl/SSLSession;)V

    return-object v1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-static {p3}, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->wrapEngine(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-static {p3}, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->wrapEngine(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->tm:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
