.class final Lcom/tencent/mm/plugin/wallet/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->f(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->g(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 483
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoA()V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->c(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I

    .line 492
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->d(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I

    .line 493
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->e(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Ljava/lang/String;

    .line 495
    return-void

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->g(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/b/h;->f(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 474
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->Vh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->gI(I)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoA()V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/u;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->g(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/b/h;->d(Landroid/app/Activity;I)V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
