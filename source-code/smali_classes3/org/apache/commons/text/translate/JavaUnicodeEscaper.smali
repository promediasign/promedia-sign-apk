.class public Lorg/apache/commons/text/translate/JavaUnicodeEscaper;
.super Lorg/apache/commons/text/translate/UnicodeEscaper;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-void
.end method

.method public static outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;
    .locals 2

    new-instance v0, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public toUtf16Escape(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-static {v2}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-char p1, p1, v1

    invoke-static {p1}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->hex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
