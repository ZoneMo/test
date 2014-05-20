.class final Lcom/tencent/mm/ui/contact/profile/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic gWd:Lcom/tencent/mm/ui/contact/profile/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 543
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 545
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->d(Lcom/tencent/mm/ui/contact/profile/e;)V

    goto :goto_0

    .line 548
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->b(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    const v1, 0x7f070064

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/profile/e;->c(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/storage/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lcom/tencent/mm/ao/a;->ti(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->b(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/e;->b(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    const v2, 0x7f0704af

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/profile/e;->b(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v3

    const v4, 0x7f0704ae

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v4}, Lcom/tencent/mm/ui/contact/profile/e;->b(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v4

    const v5, 0x7f0709c1

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/profile/p;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/profile/p;-><init>(Lcom/tencent/mm/ui/contact/profile/o;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 562
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->f(Lcom/tencent/mm/ui/contact/profile/e;)V

    goto :goto_0

    .line 565
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/o;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->g(Lcom/tencent/mm/ui/contact/profile/e;)V

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
