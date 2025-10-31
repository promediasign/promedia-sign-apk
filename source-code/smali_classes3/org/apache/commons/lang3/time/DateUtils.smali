.class public abstract Lorg/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/16 v1, 0xe

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xd

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0xc

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0xb

    const/16 v5, 0xa

    filled-new-array {v1, v5}, [I

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const/16 v5, 0x9

    filled-new-array {v1, v1, v5}, [I

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const/16 v5, 0x3e9

    filled-new-array {v4, v5}, [I

    move-result-object v4

    aput-object v4, v0, v1

    filled-new-array {v3}, [I

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    filled-new-array {v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .locals 7

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->setLenient(Z)V

    array-length p3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_2

    aget-object v5, p2, v4

    new-instance v6, Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {v6, v5, v0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    :try_start_0
    invoke-virtual {v6, p0, v1, v3}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/text/ParseException;

    const-string p2, "Unable to parse the date: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Date and Patterns must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
