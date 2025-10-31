.class public Lio/milton/http/HandlerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final authenticationService:Lio/milton/http/AuthenticationService;

.field private enableExpectContinue:Z

.field private final storageCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/quota/StorageChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/HandlerHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/AuthenticationService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/HandlerHelper;->enableExpectContinue:Z

    iput-object p1, p0, Lio/milton/http/HandlerHelper;->authenticationService:Lio/milton/http/AuthenticationService;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/milton/http/HandlerHelper;->storageCheckers:Ljava/util/List;

    new-instance v0, Lio/milton/http/quota/DefaultStorageChecker;

    invoke-direct {v0}, Lio/milton/http/quota/DefaultStorageChecker;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public checkAuthentication(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;
    .locals 1

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const-string v0, "checkAuthentication"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/HandlerHelper;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-virtual {v0, p2, p3}, Lio/milton/http/AuthenticationService;->authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "checkAuthentication: null authStatus"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "checkAuthentication: authStatus.failed ="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p2, Lio/milton/http/AuthenticationService$AuthStatus;->loginFailed:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object p2
.end method

.method public checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/milton/http/HandlerHelper;->checkAuthentication(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;

    move-result-object v0

    sget-object v1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkAuthorisation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lio/milton/http/AuthenticationService$AuthStatus;->loginFailed:Z

    if-eqz v2, :cond_0

    const-string p1, "checkAuthorisation: loginFailed"

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "checkAuthorisation: got auth object"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, v0, Lio/milton/http/AuthenticationService$AuthStatus;->auth:Lio/milton/http/Auth;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const-string v0, "checkAuthorisation: authStatus is null, no authentication was attempted"

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-interface {p3}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result p1

    return p1
.end method

.method public checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z
    .locals 1

    .line 2
    invoke-interface {p2, p3, p4, p5}, Lio/milton/resource/Resource;->authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "authorisation declined, requesting authentication: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". resource type: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  - auth: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "  - anonymous request rejected"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_3
    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "checkAuthorisation: request permitted"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public checkExpects(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;)Z
    .locals 4

    const/4 p1, 0x0

    iget-boolean v0, p0, Lio/milton/http/HandlerHelper;->enableExpectContinue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lio/milton/http/Request;->getExpectHeader()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "checkExpects"

    aput-object v3, v2, p1

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Lio/milton/common/LogUtils;->trace(Lorg/slf4j/Logger;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    sget-object p2, Lio/milton/http/Response$Status;->SC_CONTINUE:Lio/milton/http/Response$Status;

    invoke-interface {p3, p2}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return p1

    :cond_0
    return v1
.end method

.method public checkStorageOnAdd(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 3

    iget-object v0, p0, Lio/milton/http/HandlerHelper;->storageCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/quota/StorageChecker;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/milton/http/quota/StorageChecker;->checkStorageOnAdd(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "insufficient storage reason: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " reported by: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkStorageOnReplace(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/resource/Resource;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 3

    iget-object v0, p0, Lio/milton/http/HandlerHelper;->storageCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/quota/StorageChecker;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/milton/http/quota/StorageChecker;->checkStorageOnReplace(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/resource/Resource;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "insufficient storage reason: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " reported by: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public doCheckRedirect(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)Z
    .locals 1

    invoke-interface {p4, p2}, Lio/milton/resource/Resource;->checkRedirect(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, p3, p2, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLocked(Lio/milton/resource/Resource;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lio/milton/resource/LockableResource;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/milton/resource/LockableResource;

    invoke-interface {p1}, Lio/milton/resource/LockableResource;->getCurrentLock()Lio/milton/http/LockToken;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_8

    .line 3
    .line 4
    instance-of v1, p2, Lio/milton/resource/LockableResource;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    check-cast p2, Lio/milton/resource/LockableResource;

    .line 11
    .line 12
    invoke-interface {p2}, Lio/milton/resource/LockableResource;->getCurrentLock()Lio/milton/http/LockToken;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_8

    .line 17
    .line 18
    invoke-interface {p1}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_0
    iget-object v3, p2, Lio/milton/http/LockToken;->info:Lio/milton/http/LockInfo;

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    .line 35
    .line 36
    const-string p2, "Found a lock on this resource, but it has no info property so is ignored"

    .line 37
    .line 38
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_2
    iget-object v3, v3, Lio/milton/http/LockInfo;->lockedByUser:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    .line 47
    .line 48
    const-string p2, "Resource is locked with a null user. Ignoring the lock"

    .line 49
    .line 50
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_8

    .line 59
    .line 60
    sget-object v4, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    .line 61
    .line 62
    invoke-interface {v4}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    const-string v5, "lock owned by: "

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-string v6, " not by "

    .line 81
    .line 82
    invoke-static {v5, v3, v6}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v1}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_1
    invoke-interface {p1}, Lio/milton/http/Request;->getIfHeader()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    iget-object v5, p2, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    const-string p1, "Request contains valid If lock-token so operation is permitted"

    .line 115
    .line 116
    invoke-interface {v4, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v0

    .line 120
    :cond_6
    invoke-interface {p1}, Lio/milton/http/Request;->getLockTokenHeader()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    iget-object v5, p2, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_7

    .line 133
    .line 134
    const-string p1, "Request contains valid lock-token so operation is permitted"

    .line 135
    .line 136
    invoke-interface {v4, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return v0

    .line 140
    :cond_7
    const-string v0, "Locked out. ifHeader="

    .line 141
    .line 142
    const-string v5, " lock-token header="

    .line 143
    .line 144
    const-string v6, ", but actual token: "

    .line 145
    .line 146
    invoke-static {v0, v1, v5, p1, v6}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p2, p2, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    .line 151
    .line 152
    const-string v0, " LockedByUser="

    .line 153
    .line 154
    const-string v1, " RequestUser="

    .line 155
    .line 156
    invoke-static {p1, p2, v0, v3, v1}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-interface {v4, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 p1, 0x1

    .line 170
    return p1

    .line 171
    :cond_8
    :goto_2
    return v0
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

.method public isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public missingLock(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z
    .locals 0

    invoke-interface {p1}, Lio/milton/http/Request;->getIfHeader()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "(<DAV:no-lock>)"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lio/milton/http/HandlerHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "Contained valid token. so is unlocked"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEnableExpectContinue(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/http/HandlerHelper;->enableExpectContinue:Z

    return-void
.end method
