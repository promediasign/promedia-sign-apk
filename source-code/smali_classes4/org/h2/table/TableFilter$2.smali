.class Lorg/h2/table/TableFilter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/table/TableFilter$TableFilterVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/table/TableFilter;

.field final synthetic val$on:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/table/TableFilter;Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/TableFilter$2;->this$0:Lorg/h2/table/TableFilter;

    iput-object p2, p0, Lorg/h2/table/TableFilter$2;->val$on:Lorg/h2/expression/Expression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/table/TableFilter;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/table/TableFilter$2;->val$on:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method
