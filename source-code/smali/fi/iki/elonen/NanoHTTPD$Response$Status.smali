.class public final enum Lfi/iki/elonen/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$Response$Status;",
        ">;",
        "Lfi/iki/elonen/NanoHTTPD$Response$IStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum EXPECTATION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum GONE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum LENGTH_REQUIRED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum MULTI_STATUS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PAYLOAD_TOO_LARGE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PRECONDITION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT_SEE_OTHER:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum SERVICE_UNAVAILABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum TEMPORARY_REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum TOO_MANY_REQUESTS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# instance fields
.field private final description:Ljava/lang/String;

.field private final requestStatus:I


# direct methods
.method private static synthetic $values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->MULTI_STATUS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT_SEE_OTHER:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->TEMPORARY_REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->GONE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->LENGTH_REQUIRED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PRECONDITION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PAYLOAD_TOO_LARGE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_MEDIA_TYPE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->EXPECTATION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->TOO_MANY_REQUESTS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SERVICE_UNAVAILABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    const-string v3, "SWITCH_PROTOCOL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v1, 0x1

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v3, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0xc9

    const-string v2, "Created"

    const-string v3, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    const-string v3, "ACCEPTED"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0xcc

    const-string v2, "No Content"

    const-string v3, "NO_CONTENT"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0xce

    const-string v2, "Partial Content"

    const-string v3, "PARTIAL_CONTENT"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0xcf

    const-string v2, "Multi-Status"

    const-string v3, "MULTI_STATUS"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->MULTI_STATUS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x12d

    const-string v2, "Moved Permanently"

    const-string v3, "REDIRECT"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x12e

    const-string v2, "Found"

    const-string v3, "FOUND"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x12f

    const-string v2, "See Other"

    const-string v3, "REDIRECT_SEE_OTHER"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT_SEE_OTHER:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x130

    const-string v2, "Not Modified"

    const-string v3, "NOT_MODIFIED"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x133

    const-string v2, "Temporary Redirect"

    const-string v3, "TEMPORARY_REDIRECT"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->TEMPORARY_REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    const-string v3, "BAD_REQUEST"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    const-string v3, "UNAUTHORIZED"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x193

    const-string v2, "Forbidden"

    const-string v3, "FORBIDDEN"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x194

    const-string v2, "Not Found"

    const-string v3, "NOT_FOUND"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x195

    const-string v2, "Method Not Allowed"

    const-string v3, "METHOD_NOT_ALLOWED"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x196

    const-string v2, "Not Acceptable"

    const-string v3, "NOT_ACCEPTABLE"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x198

    const-string v2, "Request Timeout"

    const-string v3, "REQUEST_TIMEOUT"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x199

    const-string v2, "Conflict"

    const-string v3, "CONFLICT"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x19a

    const-string v2, "Gone"

    const-string v3, "GONE"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->GONE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x19b

    const-string v2, "Length Required"

    const-string v3, "LENGTH_REQUIRED"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->LENGTH_REQUIRED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x19c

    const-string v2, "Precondition Failed"

    const-string v3, "PRECONDITION_FAILED"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PRECONDITION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x19d

    const-string v2, "Payload Too Large"

    const-string v3, "PAYLOAD_TOO_LARGE"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PAYLOAD_TOO_LARGE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x19f

    const-string v2, "Unsupported Media Type"

    const-string v3, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_MEDIA_TYPE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x1a0

    const-string v2, "Requested Range Not Satisfiable"

    const-string v3, "RANGE_NOT_SATISFIABLE"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x1a1

    const-string v2, "Expectation Failed"

    const-string v3, "EXPECTATION_FAILED"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->EXPECTATION_FAILED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x1ad

    const-string v2, "Too Many Requests"

    const-string v3, "TOO_MANY_REQUESTS"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->TOO_MANY_REQUESTS:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error"

    const-string v3, "INTERNAL_ERROR"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x1f5

    const-string v2, "Not Implemented"

    const-string v3, "NOT_IMPLEMENTED"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x1f7

    const-string v2, "Service Unavailable"

    const-string v3, "SERVICE_UNAVAILABLE"

    const/16 v4, 0x1e

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SERVICE_UNAVAILABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/16 v1, 0x1f9

    const-string v2, "HTTP Version Not Supported"

    const-string v3, "UNSUPPORTED_HTTP_VERSION"

    const/16 v4, 0x1f

    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    return-void
.end method

.method public static lookup(I)Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 5

    invoke-static {}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->getRequestStatus()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    const-class v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStatus()I
    .locals 1

    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    return v0
.end method
