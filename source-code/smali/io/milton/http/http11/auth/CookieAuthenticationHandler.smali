.class public Lio/milton/http/http11/auth/CookieAuthenticationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/AuthenticationHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final cookieUserUrlHash:Ljava/lang/String;

.field private final cookieUserUrlValue:Ljava/lang/String;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private keepLoggedInParamName:Ljava/lang/String;

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loginTokenName:Ljava/lang/String;

.field private final nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

.field private final principalResourceFactory:Lio/milton/http/ResourceFactory;

.field private final requestParamLogout:Ljava/lang/String;

.field private useLongLivedCookies:Z

.field private userUrlAttName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/auth/NonceProvider;Ljava/util/List;Lio/milton/http/ResourceFactory;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/http11/auth/NonceProvider;",
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;",
            "Lio/milton/http/ResourceFactory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miltonLogout"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->requestParamLogout:Ljava/lang/String;

    const-string v0, "miltonUserUrl"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->cookieUserUrlValue:Ljava/lang/String;

    const-string v0, "miltonUserUrlHash"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->cookieUserUrlHash:Ljava/lang/String;

    const-string v0, "loginToken"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->loginTokenName:Ljava/lang/String;

    const-string v0, "userUrl"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->userUrlAttName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    const-string v0, "keepLoggedIn"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keepLoggedInParamName:Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    iput-object p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    iput-object p3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->principalResourceFactory:Lio/milton/http/ResourceFactory;

    iput-object p4, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keys:Ljava/util/List;

    return-void
.end method

.method private clearCookieValue(Lio/milton/http/Response;)V
    .locals 2

    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "clearCookieValue"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v0, "miltonUserUrl"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lio/milton/http/Response;->setCookie(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/Cookie;

    const-string v0, "miltonUserUrlHash"

    invoke-interface {p1, v0, v1}, Lio/milton/http/Response;->setCookie(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/Cookie;

    return-void
.end method

.method private getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1, p2}, Lio/milton/http/Request;->getCookie(Ljava/lang/String;)Lio/milton/http/Cookie;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lio/milton/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private getDomain(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "nohost"

    :cond_1
    return-object p1
.end method

.method private getParamVal(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isLogout(Lio/milton/http/Request;)Z
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "miltonLogout"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setCookieValues(Lio/milton/http/Response;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "setCookieValues"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v0, Lio/milton/http/BeanCookie;

    const-string v1, "miltonUserUrl"

    invoke-direct {v0, v1}, Lio/milton/http/BeanCookie;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->encodeUserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/milton/http/BeanCookie;->setValue(Ljava/lang/String;)V

    const-string p2, "/"

    invoke-virtual {v0, p2}, Lio/milton/http/BeanCookie;->setPath(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/milton/http/BeanCookie;->setVersion(I)V

    const v2, 0x1e13380

    if-eqz p4, :cond_0

    iget-boolean v3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lio/milton/http/BeanCookie;->setExpiry(I)V

    :cond_0
    invoke-interface {p1, v0}, Lio/milton/http/Response;->setCookie(Lio/milton/http/Cookie;)Lio/milton/http/Cookie;

    new-instance v0, Lio/milton/http/BeanCookie;

    const-string v3, "miltonUserUrlHash"

    invoke-direct {v0, v3}, Lio/milton/http/BeanCookie;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/milton/http/BeanCookie;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/milton/http/BeanCookie;->setHttpOnly(Z)V

    invoke-virtual {v0, v1}, Lio/milton/http/BeanCookie;->setVersion(I)V

    invoke-virtual {v0, p2}, Lio/milton/http/BeanCookie;->setPath(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    iget-boolean p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0, v2}, Lio/milton/http/BeanCookie;->setExpiry(I)V

    :cond_1
    invoke-interface {p1, v0}, Lio/milton/http/Response;->setCookie(Lio/milton/http/Cookie;)Lio/milton/http/Cookie;

    return-void
.end method

.method private verifyHash(Ljava/lang/String;Lio/milton/http/Request;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getHashFromRequest(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "cookie signature is not present in cookie: miltonUserUrlHash"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, p1, v3, v0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->verifyHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/milton/http/Request;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private verifyHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/milton/http/Request;)Z
    .locals 9

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Invalid cookie signing format, no semi-colon: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Should be in form - nonce:hmac"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-direct {p0, p4}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getDomain(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/milton/http/http11/auth/HmacUtils;->calcShaHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Message:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Key:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Hash:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const-string p2, "Given Signing:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cookie sig does not match expected. Given="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Expected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    iget-object p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    const/4 p3, 0x0

    invoke-interface {p2, v5, p3}, Lio/milton/http/http11/auth/NonceProvider;->getNonceValidity(Ljava/lang/String;Ljava/lang/Long;)Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    move-result-object p2

    const-string p3, "Unhandled nonce validity value"

    if-eqz p2, :cond_7

    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler$1;->$SwitchMap$io$milton$http$http11$auth$NonceProvider$NonceValidity:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    const-string p1, "Received an invalid nonce: "

    const-string p2, " not found in provider: "

    .line 2
    invoke-static {p1, v5, p2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p2, "Nonce is valid, but expired. We will accept it but reset it"

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->setLoginCookies(Ljava/lang/String;Lio/milton/http/Request;)V

    :cond_6
    return v3

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Request;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v1, p1, p2}, Lio/milton/http/AuthenticationHandler;->isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lio/milton/http/AuthenticationHandler;->appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "Couldnt check userUrl in cookie"

    .line 2
    .line 3
    const-string v1, "found current user: "

    .line 4
    .line 5
    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "_delegatedAuthenticationHandler"

    .line 10
    .line 11
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/List;

    .line 16
    .line 17
    const-class v3, Lio/milton/principal/DiscretePrincipal;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_4

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lio/milton/http/AuthenticationHandler;

    .line 43
    .line 44
    sget-object v2, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 45
    .line 46
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v6, "authenticate: use delegateHandler: "

    .line 55
    .line 56
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-interface {v1, p1, p2}, Lio/milton/http/AuthenticationHandler;->authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "authenticate: auth.tag is not an instance of "

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ", is: "

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, " so is not compatible with cookie authentication"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    instance-of p1, v1, Lio/milton/http/http11/auth/FormAuthenticationHandler;

    .line 110
    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    invoke-static {p2}, Lio/milton/http/http11/auth/LoginResponseHandler;->setDisableHtmlResponse(Lio/milton/http/Request;)V

    .line 114
    .line 115
    .line 116
    return-object v4

    .line 117
    :cond_1
    return-object v5

    .line 118
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v6, "Login failed by delegated handler: "

    .line 121
    .line 122
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    return-object v4

    .line 141
    :cond_4
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 142
    .line 143
    const-string v2, "no delegating handler"

    .line 144
    .line 145
    invoke-interface {p1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->isLogout(Lio/milton/http/Request;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    const-string p2, "authenticate: is logout"

    .line 155
    .line 156
    :goto_1
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v4

    .line 160
    :cond_5
    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_6

    .line 165
    .line 166
    const-string p2, "authenticate: no userUrl in request or cookie, nothing to do"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_7

    .line 174
    .line 175
    const-string v5, "authenticate: userUrl="

    .line 176
    .line 177
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-interface {p1, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-interface {p2}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    :try_start_0
    iget-object v6, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->principalResourceFactory:Lio/milton/http/ResourceFactory;

    .line 189
    .line 190
    invoke-interface {v6, v5, v2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    move-object v4, v6

    .line 210
    goto :goto_3

    .line 211
    :catch_0
    move-exception p1

    .line 212
    goto :goto_2

    .line 213
    :catch_1
    move-exception p1

    .line 214
    :goto_2
    sget-object v1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 215
    .line 216
    invoke-interface {v1, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :goto_3
    if-nez v4, :cond_8

    .line 220
    .line 221
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 222
    .line 223
    const-string p2, "User not found host: "

    .line 224
    .line 225
    const-string v0, " userUrl: "

    .line 226
    .line 227
    const-string v1, " with resourcefactory: "

    .line 228
    .line 229
    invoke-static {p2, v5, v0, v2, v1}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->principalResourceFactory:Lio/milton/http/ResourceFactory;

    .line 234
    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lio/milton/http/HttpManager;->response()Lio/milton/http/Response;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->clearCookieValue(Lio/milton/http/Response;)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_8
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-eqz p1, :cond_a

    .line 258
    .line 259
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    const-string v0, "miltonUserUrl"

    .line 264
    .line 265
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_9

    .line 270
    .line 271
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const-string p2, "loginToken"

    .line 276
    .line 277
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_a

    .line 282
    .line 283
    :cond_9
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 284
    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v0, "Found user from request, but user object is not expected type. Should be "

    .line 288
    .line 289
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v0, " but is "

    .line 296
    .line 297
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_a
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 316
    .line 317
    const-string p2, "Do not set cookies, because token did not come from request variable"

    .line 318
    .line 319
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :goto_4
    return-object v4
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
.end method

.method public credentialsPresent(Lio/milton/http/Request;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrlFromRequest(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v2, p1}, Lio/milton/http/AuthenticationHandler;->credentialsPresent(Lio/milton/http/Request;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public encodeUserUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/milton/common/Utils;->UTF8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/milton/dns/utils/base64;->toString([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/milton/common/Utils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "b64"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
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
.end method

.method public getHashFromRequest(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 7

    const-string v0, "miltonUserUrlHash"

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getParamVal(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-nez v1, :cond_2

    const-string v2, "loginToken"

    invoke-direct {p0, p1, v2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lio/milton/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "getHashFromRequest: loginToken is invalid: {}"

    if-eqz v2, :cond_1

    const-string v2, "\\|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v1, 0x1

    aget-object v1, v2, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getDomain(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-interface {v0, p2}, Lio/milton/http/http11/auth/NonceProvider;->createNonce(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keys:Ljava/util/List;

    const/4 v0, 0x1

    .line 2
    invoke-static {p3, v0}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lio/milton/http/http11/auth/HmacUtils;->calcShaHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p2, v1, v0}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object v1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Key:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Hash:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Signing:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method public getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrlFromRequest(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0, v1, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->verifyHash(Ljava/lang/String;Lio/milton/http/Request;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "Invalid userUrl hash, possible attempted hacking attempt. userUrl="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getUserUrlFromRequest(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 6

    const-string v0, "loginToken"

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/milton/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "getUserUrlFromRequest: loginToken is invalid: {}"

    if-eqz v0, :cond_0

    const-string v0, "\\|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const-string v4, "miltonUserUrlHash"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    const-string v0, "miltonUserUrl"

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    if-nez v2, :cond_3

    const-string v0, "getUserUrlFromRequest: Null encodedUserUrl"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "getUserUrlFromRequest: Raw:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_4
    const-string v0, "b64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Looks like a plain path, return as is"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string v0, "Looks like a base64 encoded string"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/milton/common/Utils;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUserUrlFromRequest: Percent decoded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_6
    invoke-static {v0}, Lio/milton/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "Failed to decode encodedUserUrl, so maybe its not encoded, return as it is"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "getUserUrlFromRequest: Decoded user url:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v1, p1, p2}, Lio/milton/http/AuthenticationHandler;->isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setLoginCookies(Ljava/lang/String;Lio/milton/http/Request;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/milton/http/HttpManager;->response()Lio/milton/http/Response;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "setLoginCookies: No response object"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keepLoggedInParamName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v0, p1, v1, v2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->setCookieValues(Lio/milton/http/Response;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->userUrlAttName:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUseLongLivedCookies(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    return-void
.end method

.method public supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 5

    invoke-direct {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->isLogout(Lio/milton/http/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "Is LogOut request, clear cookie"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lio/milton/http/HttpManager;->response()Lio/milton/http/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->clearCookieValue(Lio/milton/http/Response;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v2, p1, p2}, Lio/milton/http/AuthenticationHandler;->supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v4, "Found child handler who supports this request {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string p2, "_delegatedAuthenticationHandler"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
