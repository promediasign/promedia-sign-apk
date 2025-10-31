.class public Lsk/mimac/slideshow/http/page/AboutSoftwarePage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# static fields
.field private static final LICENCE:Ljava/lang/String;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x3d0fffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;->LICENCE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-wide v1, -0x127cffaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 2

    const-wide v0, -0x1268ffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 0

    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 6

    const-wide v0, -0x125fffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-wide v3, -0x1258ffaab768L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;->dateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-wide v3, -0x124bffaab768L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-wide v1, -0x1228ffaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1373ffaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x136bffaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1362ffaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->BUILD:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x134dffaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x1345ffaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x133effaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, -0x1335ffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x131effaab768L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x1310ffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, -0x1309ffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide v0, -0x13faffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, -0x13ceffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, -0x3d10ffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
