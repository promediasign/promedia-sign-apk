.class public final synthetic Le1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p2, p0, Le1/f;->a:I

    iput-object p1, p0, Le1/f;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget v0, p0, Le1/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le1/f;->b:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/ScreenControlHelper;->b(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Le1/f;->b:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/ScreenControlHelper;->c(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
