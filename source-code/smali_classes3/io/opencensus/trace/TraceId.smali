.class public final Lio/opencensus/trace/TraceId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/opencensus/trace/TraceId;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:Lio/opencensus/trace/TraceId;

.field public static final SIZE:I = 0x10


# instance fields
.field private final idHi:J

.field private final idLo:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/opencensus/trace/TraceId;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lio/opencensus/trace/TraceId;-><init>(JJ)V

    sput-object v0, Lio/opencensus/trace/TraceId;->INVALID:Lio/opencensus/trace/TraceId;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/opencensus/trace/TraceId;->idHi:J

    iput-wide p3, p0, Lio/opencensus/trace/TraceId;->idLo:J

    return-void
.end method

.method public static fromBytes([B)Lio/opencensus/trace/TraceId;
    .locals 6

    .line 1
    const/4 v0, 0x1

    const-string v1, "src"

    invoke-static {p0, v1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    const-string v0, "Invalid size: expected %s, got %s"

    invoke-static {v1, v0, v5}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lio/opencensus/trace/TraceId;->fromBytes([BI)Lio/opencensus/trace/TraceId;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytes([BI)Lio/opencensus/trace/TraceId;
    .locals 3

    .line 2
    const-string v0, "src"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/opencensus/trace/TraceId;

    invoke-static {p0, p1}, Lio/opencensus/trace/BigendianEncoding;->longFromByteArray([BI)J

    move-result-wide v1

    add-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Lio/opencensus/trace/BigendianEncoding;->longFromByteArray([BI)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lio/opencensus/trace/TraceId;-><init>(JJ)V

    return-object v0
.end method

.method public static fromLowerBase16(Ljava/lang/CharSequence;)Lio/opencensus/trace/TraceId;
    .locals 6

    .line 1
    const/4 v0, 0x1

    const-string v1, "src"

    invoke-static {p0, v1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    const-string v0, "Invalid size: expected %s, got %s"

    invoke-static {v1, v0, v5}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lio/opencensus/trace/TraceId;->fromLowerBase16(Ljava/lang/CharSequence;I)Lio/opencensus/trace/TraceId;

    move-result-object p0

    return-object p0
.end method

.method public static fromLowerBase16(Ljava/lang/CharSequence;I)Lio/opencensus/trace/TraceId;
    .locals 3

    .line 2
    const-string v0, "src"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/opencensus/trace/TraceId;

    invoke-static {p0, p1}, Lio/opencensus/trace/BigendianEncoding;->longFromBase16String(Ljava/lang/CharSequence;I)J

    move-result-wide v1

    add-int/lit8 p1, p1, 0x10

    invoke-static {p0, p1}, Lio/opencensus/trace/BigendianEncoding;->longFromBase16String(Ljava/lang/CharSequence;I)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lio/opencensus/trace/TraceId;-><init>(JJ)V

    return-object v0
.end method

.method public static generateRandomId(Ljava/util/Random;)Lio/opencensus/trace/TraceId;
    .locals 7

    :cond_0
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    :cond_1
    new-instance p0, Lio/opencensus/trace/TraceId;

    invoke-direct {p0, v0, v1, v2, v3}, Lio/opencensus/trace/TraceId;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/opencensus/trace/TraceId;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idHi:J

    iget-wide v2, p1, Lio/opencensus/trace/TraceId;->idHi:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idLo:J

    iget-wide v2, p1, Lio/opencensus/trace/TraceId;->idLo:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 v4, -0x1

    :cond_1
    return v4

    :cond_2
    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    const/4 v4, -0x1

    :cond_3
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lio/opencensus/trace/TraceId;

    invoke-virtual {p0, p1}, Lio/opencensus/trace/TraceId;->compareTo(Lio/opencensus/trace/TraceId;)I

    move-result p1

    return p1
.end method

.method public copyBytesTo([BI)V
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idHi:J

    invoke-static {v0, v1, p1, p2}, Lio/opencensus/trace/BigendianEncoding;->longToByteArray(J[BI)V

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idLo:J

    add-int/lit8 p2, p2, 0x8

    invoke-static {v0, v1, p1, p2}, Lio/opencensus/trace/BigendianEncoding;->longToByteArray(J[BI)V

    return-void
.end method

.method public copyLowerBase16To([CI)V
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idHi:J

    invoke-static {v0, v1, p1, p2}, Lio/opencensus/trace/BigendianEncoding;->longToBase16String(J[CI)V

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idLo:J

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, v1, p1, p2}, Lio/opencensus/trace/BigendianEncoding;->longToBase16String(J[CI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/TraceId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/opencensus/trace/TraceId;

    iget-wide v3, p0, Lio/opencensus/trace/TraceId;->idHi:J

    iget-wide v5, p1, Lio/opencensus/trace/TraceId;->idHi:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lio/opencensus/trace/TraceId;->idLo:J

    iget-wide v5, p1, Lio/opencensus/trace/TraceId;->idLo:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBytes()[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-wide v1, p0, Lio/opencensus/trace/TraceId;->idHi:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lio/opencensus/trace/BigendianEncoding;->longToByteArray(J[BI)V

    iget-wide v1, p0, Lio/opencensus/trace/TraceId;->idLo:J

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lio/opencensus/trace/BigendianEncoding;->longToByteArray(J[BI)V

    return-object v0
.end method

.method public getLowerLong()J
    .locals 5

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idHi:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    neg-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idHi:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lio/opencensus/trace/TraceId;->idLo:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 5

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idHi:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lio/opencensus/trace/TraceId;->idLo:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toLowerBase16()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/trace/TraceId;->copyLowerBase16To([CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TraceId{traceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/opencensus/trace/TraceId;->toLowerBase16()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
