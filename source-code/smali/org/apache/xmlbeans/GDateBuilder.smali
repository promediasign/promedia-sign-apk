.class public final Lorg/apache/xmlbeans/GDateBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/GDateSpecification;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final TEN:Ljava/math/BigInteger;

.field static synthetic class$org$apache$xmlbeans$GDateBuilder:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _CY:I

.field private _D:I

.field private _M:I

.field private _bits:I

.field private _fs:Ljava/math/BigDecimal;

.field private _h:I

.field private _m:I

.field private _s:I

.field private _tzh:I

.field private _tzm:I

.field private _tzsign:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/GDateBuilder;->class$org$apache$xmlbeans$GDateBuilder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.GDateBuilder"

    invoke-static {v0}, Lorg/apache/xmlbeans/GDateBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/GDateBuilder;->class$org$apache$xmlbeans$GDateBuilder:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/GDateBuilder;->$assertionsDisabled:Z

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/GDateBuilder;->TEN:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIILjava/math/BigDecimal;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    if-eqz p1, :cond_3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    iput p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    iput p3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    iput p4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    iput p5, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    iput p6, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    if-nez p7, :cond_1

    sget-object p7, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_1
    iput-object p7, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(IIIIIILjava/math/BigDecimal;III)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    if-eqz p1, :cond_3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    iput p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    iput p3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    iput p4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    iput p5, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    iput p6, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    if-nez p7, :cond_1

    sget-object p7, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_1
    iput-object p7, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    iput p8, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzsign:I

    iput p9, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzh:I

    iput p10, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzm:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/xmlbeans/GDate;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDate;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/xmlbeans/GDate;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDate;-><init>(Ljava/util/Calendar;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setDate(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/GDateBuilder;->setTimeZone(III)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/xmlbeans/GDateBuilder;->setTime(IIILjava/math/BigDecimal;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setDay(I)V

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setMonth(I)V

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setYear(I)V

    :cond_4
    return-void
.end method

.method private static final _fQuotient(JI)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gez p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-ne v0, v2, :cond_2

    int-to-long v0, p2

    div-long/2addr p0, v0

    return-wide p0

    :cond_2
    int-to-long v0, p2

    sub-long p0, v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    div-long/2addr p0, v0

    neg-long p0, p0

    return-wide p0
.end method

.method private static final _fQuotient(JII)J
    .locals 2

    .line 2
    int-to-long v0, p2

    sub-long/2addr p0, v0

    sub-int/2addr p3, p2

    invoke-static {p0, p1, p3}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static _isLeapYear(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static _maxDayInMonth(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0x1d

    return p0

    :cond_1
    const/16 p0, 0x1f

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x1e

    return p0
.end method

.method private static _maxDayInMonthFor(II)I
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1d

    goto :goto_0

    :cond_1
    const/16 p0, 0x1c

    :goto_0
    return p0

    :cond_2
    const/16 p0, 0x1f

    return p0

    :cond_3
    :goto_1
    const/16 p0, 0x1e

    return p0
.end method

.method private static _mod(JIJ)I
    .locals 2

    int-to-long v0, p2

    mul-long p3, p3, v0

    sub-long/2addr p0, p3

    long-to-int p1, p0

    return p1
.end method

.method private static final _modulo(JII)I
    .locals 2

    int-to-long v0, p2

    sub-long/2addr p0, v0

    sub-int/2addr p3, p2

    invoke-static {p0, p1, p3}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JI)J

    move-result-wide v0

    invoke-static {p0, p1, p3, v0, v1}, Lorg/apache/xmlbeans/GDateBuilder;->_mod(JIJ)I

    move-result p0

    add-int/2addr p0, p2

    return p0
.end method

.method private _normalizeDate()V
    .locals 5

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_0

    iget v2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    if-lt v2, v1, :cond_0

    iget v3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    invoke-static {v3, v0}, Lorg/apache/xmlbeans/GDateBuilder;->_maxDayInMonthFor(II)I

    move-result v0

    if-le v2, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    int-to-long v2, v0

    const/16 v0, 0xd

    invoke-static {v2, v3, v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->_modulo(JII)I

    move-result v4

    iput v4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    iget v4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    invoke-static {v2, v3, v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JII)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    sub-int/2addr v0, v1

    iput v1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->getJulianDate()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/GDateBuilder;->setJulianDate(I)V

    :cond_1
    return-void
.end method

.method private _normalizeTime()J
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    sget-object v3, Lorg/apache/xmlbeans/GDate;->_one:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    if-ltz v0, :cond_2

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    if-ltz v0, :cond_2

    const/16 v1, 0x32

    if-gt v0, v1, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    if-ltz v0, :cond_2

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JI)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/xmlbeans/GDateBuilder;->_mod(JIJ)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JI)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/xmlbeans/GDateBuilder;->_mod(JIJ)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    const/16 v2, 0x18

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JI)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/xmlbeans/GDateBuilder;->_mod(JIJ)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    :cond_3
    return-wide v3
.end method

.method private _normalizeTimeAndDate()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_normalizeTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_normalizeDate()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const/16 v2, 0xc

    if-le v0, v2, :cond_4

    :cond_3
    int-to-long v2, v0

    const/16 v0, 0xd

    invoke-static {v2, v3, v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->_modulo(JII)I

    move-result v4

    iput v4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasYear()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    invoke-static {v2, v3, v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JII)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    :cond_4
    :goto_1
    return-void
.end method

.method private _setToFirstMoment()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasYear()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x630

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setYear(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasMonth()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/GDateBuilder;->setMonth(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/GDateBuilder;->setDay(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setTime(IIILjava/math/BigDecimal;)V

    :cond_3
    return-void
.end method

.method public static btcForFlags(I)I
    .locals 3

    const/16 v0, 0x1e

    and-int/2addr p0, v0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x4

    if-eq p0, v1, :cond_6

    const/4 v1, 0x6

    if-eq p0, v1, :cond_5

    const/16 v1, 0x8

    if-eq p0, v1, :cond_4

    const/16 v1, 0xc

    if-eq p0, v1, :cond_3

    const/16 v1, 0x10

    const/16 v2, 0xe

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    :cond_1
    const/16 p0, 0xf

    return p0

    :cond_2
    return v1

    :cond_3
    const/16 p0, 0x13

    return p0

    :cond_4
    const/16 p0, 0x14

    return p0

    :cond_5
    const/16 p0, 0x11

    return p0

    :cond_6
    const/16 p0, 0x15

    return p0

    :cond_7
    const/16 p0, 0x12

    return p0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
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

.method public static final compareGDate(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I
    .locals 9

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFlags()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getFlags()I

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1f

    const/16 v2, 0xe

    if-nez v1, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFlags()I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {v0}, Lorg/apache/xmlbeans/GDateBuilder;->_setToFirstMoment()V

    new-instance p1, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-direct {p1}, Lorg/apache/xmlbeans/GDateBuilder;->_setToFirstMoment()V

    move-object p0, p1

    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xmlbeans/GDateBuilder;->normalizeToTimeZone(III)V

    move-object p1, v0

    :cond_4
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->fieldwiseCompare(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p0

    return p0

    :cond_5
    and-int/lit8 v0, v0, 0x1e

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/GDateBuilder;->compareGDate(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p0

    if-ne p0, v1, :cond_7

    goto :goto_0

    :cond_7
    neg-int v1, p0

    :goto_0
    return v1

    :cond_8
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFlags()I

    move-result v3

    and-int/2addr v3, v2

    const/16 v4, 0xc

    const/4 v5, 0x1

    if-ne v3, v4, :cond_a

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v3

    const/16 v4, 0x1d

    const/4 v6, 0x3

    const/16 v7, 0x1c

    if-ne v3, v7, :cond_9

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    if-ne v3, v1, :cond_9

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    if-ne v3, v6, :cond_a

    :goto_1
    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/GDateBuilder;->setDay(I)V

    goto :goto_2

    :cond_9
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v3

    if-ne v3, v7, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    if-ne v3, v1, :cond_a

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    if-ne v3, v6, :cond_a

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/GDateBuilder;->setMonth(I)V

    goto :goto_1

    :cond_a
    :goto_2
    invoke-direct {v0}, Lorg/apache/xmlbeans/GDateBuilder;->_setToFirstMoment()V

    new-instance v3, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v3, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-direct {v3}, Lorg/apache/xmlbeans/GDateBuilder;->_setToFirstMoment()V

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v2, v4}, Lorg/apache/xmlbeans/GDateBuilder;->setTimeZone(III)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v6

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Lorg/apache/xmlbeans/GDateBuilder;->normalizeToTimeZone(III)V

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/GDateBuilder;->fieldwiseCompare(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    return v7

    :cond_b
    invoke-virtual {v3, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setGDate(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-direct {v3}, Lorg/apache/xmlbeans/GDateBuilder;->_setToFirstMoment()V

    invoke-virtual {v3, v7, v2, v4}, Lorg/apache/xmlbeans/GDateBuilder;->setTimeZone(III)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result p0

    invoke-virtual {v3, p1, v2, p0}, Lorg/apache/xmlbeans/GDateBuilder;->normalizeToTimeZone(III)V

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/GDateBuilder;->fieldwiseCompare(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p0

    if-ne p0, v5, :cond_c

    return v5

    :cond_c
    return v1
.end method

.method public static dateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/util/Date;
    .locals 7

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->julianDateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x253d8c

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMillisecond()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v2

    const v3, 0xea60

    mul-int v2, v2, v3

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v2

    const v4, 0x36ee80

    mul-int v2, v2, v4

    int-to-long v5, v2

    add-long/2addr v0, v5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v5

    mul-int v5, v5, v2

    mul-int v5, v5, v3

    int-to-long v2, v5

    sub-long/2addr v0, v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result p0

    mul-int p0, p0, v2

    mul-int p0, p0, v4

    :goto_0
    int-to-long v2, p0

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    goto :goto_0

    :goto_1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method private static fieldwiseCompare(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I
    .locals 5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v3

    if-ge v3, v0, :cond_0

    return v2

    :cond_0
    if-le v3, v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    if-ge v3, v0, :cond_2

    return v2

    :cond_2
    if-le v3, v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v3

    if-ge v3, v0, :cond_4

    return v2

    :cond_4
    if-le v3, v0, :cond_5

    return v1

    :cond_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v4

    if-ge v4, v0, :cond_6

    return v2

    :cond_6
    if-le v4, v0, :cond_7

    return v1

    :cond_7
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v4

    if-ge v4, v0, :cond_8

    return v2

    :cond_8
    if-le v4, v0, :cond_9

    return v1

    :cond_9
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v4

    if-ge v4, v0, :cond_a

    return v2

    :cond_a
    if-le v4, v0, :cond_b

    return v1

    :cond_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_c

    if-nez p1, :cond_c

    return v3

    :cond_c
    if-nez p0, :cond_d

    sget-object p0, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_d
    if-nez p1, :cond_e

    sget-object p1, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_e
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    :cond_f
    return v3
.end method

.method public static final isValidGDate(Lorg/apache/xmlbeans/GDateSpecification;)Z
    .locals 5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    if-lt v0, v2, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_6

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v3

    add-int/2addr v3, v2

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/GDateBuilder;->_maxDayInMonthFor(II)I

    move-result v3

    if-le v0, v3, :cond_6

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/GDateBuilder;->_maxDayInMonth(I)I

    move-result v3

    if-le v0, v3, :cond_6

    :cond_5
    :goto_1
    return v1

    :cond_6
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    const/16 v3, 0x17

    if-gt v0, v3, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v0

    const/16 v3, 0x3b

    if-gt v0, v3, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v0

    if-gt v0, v3, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v3, Lorg/apache/xmlbeans/GDate;->_one:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_9

    :cond_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    const/16 v3, 0x18

    if-ne v0, v3, :cond_8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v3, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return v1

    :cond_9
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    if-ne v0, v2, :cond_d

    :cond_b
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    if-ltz v0, :cond_d

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    if-ltz v0, :cond_d

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_c

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    if-ge v0, v3, :cond_d

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result p0

    const/16 v0, 0x3c

    if-lt p0, v0, :cond_e

    :cond_d
    return v1

    :cond_e
    return v2
.end method

.method public static julianDateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)I
    .locals 4

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    add-int/lit16 v0, v0, -0x7d4b

    add-int/lit16 v2, p0, 0x12c0

    add-int/lit8 v3, v1, -0xe

    div-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x5b5

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, -0x2

    mul-int/lit8 v0, v3, 0xc

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x16f

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v2

    add-int/lit16 p0, p0, 0x1324

    add-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x4

    sub-int/2addr v1, p0

    if-ltz v1, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "date too far in the past (year allowed to -4713)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot do date math without a complete date"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addDuration(IIIIIIILjava/math/BigDecimal;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    if-nez p7, :cond_1

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot do time math without a complete time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p4, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDate()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot do date math without a complete date"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    if-nez p3, :cond_8

    if-eqz p2, :cond_c

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_normalizeDate()V

    :cond_9
    iget v3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    mul-int p3, p3, p1

    add-int/2addr p3, v3

    int-to-long v3, p3

    const/16 p3, 0xd

    invoke-static {v3, v4, v1, p3}, Lorg/apache/xmlbeans/GDateBuilder;->_modulo(JII)I

    move-result v5

    iput v5, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    iget v5, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    mul-int p2, p2, p1

    add-int/2addr p2, v5

    invoke-static {v3, v4, v1, p3}, Lorg/apache/xmlbeans/GDateBuilder;->_fQuotient(JII)J

    move-result-wide v3

    long-to-int p3, v3

    add-int/2addr p2, p3

    iput p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result p2

    if-eqz p2, :cond_c

    sget-boolean p2, Lorg/apache/xmlbeans/GDateBuilder;->$assertionsDisabled:Z

    if-nez p2, :cond_b

    iget p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    if-lt p2, v1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_4
    iget p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    iget p3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    invoke-static {p2, p3}, Lorg/apache/xmlbeans/GDateBuilder;->_maxDayInMonthFor(II)I

    move-result p2

    iget p3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    if-le p3, p2, :cond_c

    iput p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    :cond_c
    if-eqz v2, :cond_10

    if-eqz p8, :cond_f

    invoke-virtual {p8}, Ljava/math/BigDecimal;->signum()I

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/math/BigDecimal;->signum()I

    move-result p2

    if-nez p2, :cond_d

    if-ne p1, v1, :cond_d

    iput-object p8, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    goto :goto_6

    :cond_d
    iget-object p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_e

    invoke-virtual {p2, p8}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    goto :goto_5

    :cond_e
    invoke-virtual {p2, p8}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    :goto_5
    iput-object p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    :cond_f
    :goto_6
    iget p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    mul-int p7, p7, p1

    add-int/2addr p7, p2

    iput p7, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    iget p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    mul-int p6, p6, p1

    add-int/2addr p6, p2

    iput p6, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    iget p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    mul-int p5, p5, p1

    add-int/2addr p5, p2

    iput p5, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_normalizeTime()J

    move-result-wide p2

    goto :goto_7

    :cond_10
    const-wide/16 p2, 0x0

    :goto_7
    if-eqz v0, :cond_11

    iget p5, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    int-to-long p5, p5

    mul-int p1, p1, p4

    int-to-long p7, p1

    add-long/2addr p7, p2

    add-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_normalizeDate()V

    :cond_11
    return-void
.end method

.method public addGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 9

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSign()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getYear()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMonth()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getDay()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getHour()I

    move-result v5

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMinute()I

    move-result v6

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSecond()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/xmlbeans/GDateBuilder;->addDuration(IIIIIIILjava/math/BigDecimal;)V

    return-void
.end method

.method public canonicalString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->getTimeZoneSign()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasMonth()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasYear()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->getFraction()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->getFraction()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/GDateBuilder;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->normalize()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearDay()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    return-void
.end method

.method public clearMonth()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    return-void
.end method

.method public clearTime()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    return-void
.end method

.method public clearTimeZone()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzsign:I

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzh:I

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzm:I

    return-void
.end method

.method public clearYear()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-object v0
.end method

.method public final compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->compareGDate(Lorg/apache/xmlbeans/GDateSpecification;Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result p1

    return p1
.end method

.method public final getBuiltinTypeCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    invoke-static {v0}, Lorg/apache/xmlbeans/GDateBuilder;->btcForFlags(I)I

    move-result v0

    return v0
.end method

.method public getCalendar()Lorg/apache/xmlbeans/XmlCalendar;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/XmlCalendar;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/XmlCalendar;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->dateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getDay()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    return v0
.end method

.method public final getFraction()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getHour()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    return v0
.end method

.method public final getJulianDate()I
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->julianDateForGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v0

    return v0
.end method

.method public final getMillisecond()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getMinute()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    return v0
.end method

.method public final getSecond()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    return v0
.end method

.method public final getTimeZoneHour()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzh:I

    return v0
.end method

.method public final getTimeZoneMinute()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzm:I

    return v0
.end method

.method public final getTimeZoneSign()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzsign:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method public final hasDate()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/16 v1, 0xe

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasDay()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasMonth()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasTime()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasTimeZone()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final hasYear()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImmutable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDateBuilder;->isValidGDate(Lorg/apache/xmlbeans/GDateSpecification;)Z

    move-result v0

    return v0
.end method

.method public normalize()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasMonth()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasYear()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lorg/apache/xmlbeans/GDateBuilder;->normalizeToTimeZone(III)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_normalizeTimeAndDate()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :goto_1
    iput-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    if-lez v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_4
    return-void
.end method

.method public normalize24h()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->getHour()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;->_normalizeTimeAndDate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public normalizeToTimeZone(I)V
    .locals 3

    .line 1
    const/16 v0, -0x348

    if-lt p1, v0, :cond_2

    const/16 v0, 0x348

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    mul-int p1, p1, v0

    div-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xmlbeans/GDateBuilder;->normalizeToTimeZone(III)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "time zone out of range (-840 to 840 minutes). ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public normalizeToTimeZone(III)V
    .locals 12

    .line 2
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    :cond_1
    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    const/16 v0, 0xe

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-ge p2, v0, :cond_6

    const/16 v0, 0x3c

    if-ge p3, v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasMonth()Z

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasDay()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->hasYear()Z

    move-result v1

    if-ne v0, v1, :cond_4

    mul-int v0, p1, p2

    iget v1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzsign:I

    iget v2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzh:I

    mul-int v2, v2, v1

    sub-int v8, v0, v2

    mul-int v0, p1, p3

    iget v2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzm:I

    mul-int v1, v1, v2

    sub-int v9, v0, v1

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzsign:I

    iput p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzh:I

    iput p3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzm:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lorg/apache/xmlbeans/GDateBuilder;->addDuration(IIIIIIILjava/math/BigDecimal;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot do date math without a complete date"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot normalize time zone without both time and timezone"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "time zone must be between -14:00 and +14:00"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuiltinTypeCode(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "codeType must be one of SchemaType BTC_  DATE TIME related types."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearYear()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearDay()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearTime()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearYear()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearMonth()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearTime()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearYear()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearTime()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearMonth()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearDay()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearTime()V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearDay()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearTime()V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearTime()V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearYear()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearMonth()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->clearDay()V

    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 13

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    neg-int v0, v0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const v3, 0xea60

    div-int/2addr v0, v3

    div-int/lit8 v4, v0, 0x3c

    mul-int/lit8 v5, v4, 0x3c

    sub-int/2addr v0, v5

    invoke-virtual {p0, v2, v4, v0}, Lorg/apache/xmlbeans/GDateBuilder;->setTimeZone(III)V

    add-int/2addr v0, v5

    mul-int v0, v0, v2

    mul-int v0, v0, v3

    sget-object v2, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v3, v2}, Lorg/apache/xmlbeans/GDateBuilder;->setTime(IIILjava/math/BigDecimal;)V

    iget v3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    or-int/lit8 v3, v3, 0xe

    iput v3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    const/16 v3, 0x7b2

    iput v3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    iput v1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    iput v1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    new-instance v1, Lorg/apache/xmlbeans/GDuration;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    const/4 p1, 0x3

    invoke-static {v3, v4, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v12

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lorg/apache/xmlbeans/GDuration;-><init>(IIIIIIILjava/math/BigDecimal;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/GDateBuilder;->addGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-nez p1, :cond_1

    iput-object v2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    :cond_1
    return-void
.end method

.method public setDay(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "day out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGDate(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getYear()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMonth()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getDay()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getHour()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getMinute()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getSecond()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneSign()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzsign:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneHour()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzh:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getTimeZoneMinute()I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzm:I

    return-void
.end method

.method public setJulianDate(I)V
    .locals 4

    if-ltz p1, :cond_0

    const v0, 0x10bd9

    add-int/2addr p1, v0

    mul-int/lit8 v0, p1, 0x4

    const v1, 0x23ab1

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr p1, v1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit16 v1, v1, 0xfa0

    const v2, 0x164b09

    div-int/2addr v1, v2

    mul-int/lit16 v2, v1, 0x5b5

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 v2, p1, 0x50

    div-int/lit16 v2, v2, 0x98f

    mul-int/lit16 v3, v2, 0x98f

    div-int/lit8 v3, v3, 0x50

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_D:I

    div-int/lit8 p1, v2, 0xb

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, p1, 0xc

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    add-int/lit8 v0, v0, -0x31

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    iget p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    or-int/lit8 p1, p1, 0xe

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "date before year -4713"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMonth(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_M:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "month out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 3

    if-ltz p1, :cond_7

    const/16 v0, 0x18

    if-gt p1, v0, :cond_7

    if-ltz p2, :cond_6

    const/16 v1, 0x3b

    if-gt p2, v1, :cond_6

    if-ltz p3, :cond_5

    if-gt p3, v1, :cond_5

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/GDate;->_one:Ljava/math/BigDecimal;

    invoke-virtual {p4, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fraction out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    sget-object v0, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    invoke-virtual {v0, p4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when hour is 24, min sec and fracton must be 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_h:I

    iput p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_m:I

    iput p3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_s:I

    if-nez p4, :cond_4

    sget-object p4, Lorg/apache/xmlbeans/GDate;->_zero:Ljava/math/BigDecimal;

    :cond_4
    iput-object p4, p0, Lorg/apache/xmlbeans/GDateBuilder;->_fs:Ljava/math/BigDecimal;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "second out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minute out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hour out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeZone(I)V
    .locals 3

    .line 1
    const/16 v0, -0x348

    if-lt p1, v0, :cond_2

    const/16 v0, 0x348

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    mul-int p1, p1, v0

    div-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setTimeZone(III)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "time zone out of range (-840 to 840 minutes). ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeZone(III)V
    .locals 3

    .line 2
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_4

    :cond_1
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    const/16 v1, 0xe

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-ge p2, v1, :cond_4

    const/16 v1, 0x3c

    if-lt p3, v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzsign:I

    iput p2, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzh:I

    iput p3, p0, Lorg/apache/xmlbeans/GDateBuilder;->_tzm:I

    return-void

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "time zone out of range (-14:00 to +14:00). ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-gez p1, :cond_5

    const-string p1, "-"

    goto :goto_1

    :cond_5
    const-string p1, "+"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYear(I)V
    .locals 1

    const v0, -0x116bc45f

    if-lt p1, v0, :cond_2

    const v0, 0x116bcc11

    if-gt p1, v0, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/GDateBuilder;->_bits:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/GDateBuilder;->_CY:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "year cannot be 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "year out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subtractGDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 10

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSign()I

    move-result v0

    neg-int v2, v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getYear()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMonth()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getDay()I

    move-result v5

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getHour()I

    move-result v6

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getMinute()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getSecond()I

    move-result v8

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDurationSpecification;->getFraction()Ljava/math/BigDecimal;

    move-result-object v9

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/apache/xmlbeans/GDateBuilder;->addDuration(IIIIIIILjava/math/BigDecimal;)V

    return-void
.end method

.method public toGDate()Lorg/apache/xmlbeans/GDate;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/GDate;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDate;-><init>(Lorg/apache/xmlbeans/GDateSpecification;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/GDate;->formatGDate(Lorg/apache/xmlbeans/GDateSpecification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
