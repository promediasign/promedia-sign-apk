.class public Lch/qos/logback/core/net/LoginAuthenticator;
.super Ljavax/mail/Authenticator;
.source "SourceFile"


# instance fields
.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/net/LoginAuthenticator;->username:Ljava/lang/String;

    iput-object p2, p0, Lch/qos/logback/core/net/LoginAuthenticator;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lch/qos/logback/core/net/LoginAuthenticator;->username:Ljava/lang/String;

    iget-object v2, p0, Lch/qos/logback/core/net/LoginAuthenticator;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
