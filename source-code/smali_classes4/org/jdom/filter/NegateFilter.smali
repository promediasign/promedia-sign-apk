.class final Lorg/jdom/filter/NegateFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: NegateFilter.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:00 $"


# instance fields
.field private filter:Lorg/jdom/filter/Filter;


# direct methods
.method public constructor <init>(Lorg/jdom/filter/Filter;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    iput-object p1, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/jdom/filter/NegateFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    check-cast p1, Lorg/jdom/filter/NegateFilter;

    iget-object p1, p1, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public negate()Lorg/jdom/filter/Filter;
    .locals 1

    iget-object v0, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[NegateFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/filter/NegateFilter;->filter:Lorg/jdom/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
