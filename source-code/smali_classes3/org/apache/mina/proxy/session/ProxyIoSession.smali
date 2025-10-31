.class public Lorg/apache/mina/proxy/session/ProxyIoSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final PROXY_SESSION:Ljava/lang/String;


# instance fields
.field private authenticationFailed:Z

.field private charsetName:Ljava/lang/String;

.field private connector:Lorg/apache/mina/proxy/ProxyConnector;

.field private eventQueue:Lorg/apache/mina/proxy/event/IoSessionEventQueue;

.field private handler:Lorg/apache/mina/proxy/ProxyLogicHandler;

.field private preferedOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
            ">;"
        }
    .end annotation
.end field

.field private proxyAddress:Ljava/net/InetSocketAddress;

.field private proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

.field private reconnectionNeeded:Z

.field private request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

.field private session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/mina/proxy/ProxyConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ProxySession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lorg/apache/mina/proxy/handlers/ProxyRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyAddress:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->reconnectionNeeded:Z

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->eventQueue:Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setProxyAddress(Ljava/net/InetSocketAddress;)V

    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setRequest(Lorg/apache/mina/proxy/handlers/ProxyRequest;)V

    return-void
.end method

.method private setProxyAddress(Ljava/net/InetSocketAddress;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyAddress:Ljava/net/InetSocketAddress;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "proxyAddress object cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setRequest(Lorg/apache/mina/proxy/handlers/ProxyRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "request cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnector()Lorg/apache/mina/proxy/ProxyConnector;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->connector:Lorg/apache/mina/proxy/ProxyConnector;

    return-object v0
.end method

.method public getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->eventQueue:Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->handler:Lorg/apache/mina/proxy/ProxyLogicHandler;

    return-object v0
.end method

.method public getPreferedOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->preferedOrder:Ljava/util/List;

    return-object v0
.end method

.method public getProxyAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    return-object v0
.end method

.method public getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public isAuthenticationFailed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->authenticationFailed:Z

    return v0
.end method

.method public isReconnectionNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->reconnectionNeeded:Z

    return v0
.end method

.method public setAuthenticationFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->authenticationFailed:Z

    return-void
.end method

.method public setCharsetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->charsetName:Ljava/lang/String;

    return-void
.end method

.method public setConnector(Lorg/apache/mina/proxy/ProxyConnector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->connector:Lorg/apache/mina/proxy/ProxyConnector;

    return-void
.end method

.method public setHandler(Lorg/apache/mina/proxy/ProxyLogicHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->handler:Lorg/apache/mina/proxy/ProxyLogicHandler;

    return-void
.end method

.method public setPreferedOrder(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->preferedOrder:Ljava/util/List;

    return-void
.end method

.method public setProxyFilter(Lorg/apache/mina/proxy/filter/ProxyFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    return-void
.end method

.method public setReconnectionNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->reconnectionNeeded:Z

    return-void
.end method

.method public setSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSession;->session:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method
