.class final Lcom/tencent/mm/plugin/wallet/iap/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/wallet/iap/ui/g;
.implements Lcom/tencent/mm/plugin/wallet/pay/ui/a;


# instance fields
.field private cZs:Ljava/lang/String;

.field private dcy:Ljava/lang/String;

.field private eZU:Ljava/lang/String;

.field final synthetic fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

.field private fah:Ljava/lang/String;

.field private fak:Lcom/tencent/mm/plugin/wallet/iap/ui/h;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 634
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fak:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 629
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fah:Ljava/lang/String;

    .line 630
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->cZs:Ljava/lang/String;

    .line 631
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->dcy:Ljava/lang/String;

    .line 632
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->eZU:Ljava/lang/String;

    .line 635
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->a(Lcom/tencent/mm/plugin/wallet/pay/ui/a;)Z

    .line 636
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/tencent/mm/plugin/wallet/iap/a/a;Lcom/tencent/mm/plugin/wallet/iap/ui/h;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anT()V

    .line 646
    iput-object p3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fak:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 647
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->Lg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->cZs:Ljava/lang/String;

    .line 648
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fah:Ljava/lang/String;

    .line 649
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->dcy:Ljava/lang/String;

    .line 650
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->eZU:Ljava/lang/String;

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletLauncherUI;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;-><init>()V

    .line 653
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    .line 654
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anD()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->fbi:Ljava/lang/String;

    .line 655
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anE()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->fbj:Ljava/lang/String;

    .line 656
    const/4 v2, 0x5

    iput v2, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->fbh:I

    .line 658
    const-string v2, "key_pay_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 660
    return-void
.end method

.method public final a(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    const-string v0, "MicroMsg.WalletIapUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPayEnd payResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fak:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 674
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->jI(I)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    .line 679
    :goto_0
    new-instance v1, Lcom/tencent/mm/plugin/wallet/a/a/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->cZs:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fah:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->eZU:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->dcy:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/mm/plugin/wallet/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fak:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    invoke-interface {v2, v0, v1}, Lcom/tencent/mm/plugin/wallet/iap/ui/h;->a(Lcom/tencent/mm/plugin/wallet/a/a/c;Lcom/tencent/mm/plugin/wallet/a/a/e;)V

    .line 682
    :cond_0
    return-void

    .line 676
    :cond_1
    const v0, 0x5f5e100

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->jI(I)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Lcom/tencent/mm/plugin/wallet/iap/ui/h;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 700
    if-eqz p2, :cond_0

    .line 701
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->jI(I)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    .line 702
    new-instance v1, Lcom/tencent/mm/plugin/wallet/a/a/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->cZs:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fah:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->eZU:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->dcy:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/mm/plugin/wallet/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-interface {p2, v0, v1}, Lcom/tencent/mm/plugin/wallet/iap/ui/h;->a(Lcom/tencent/mm/plugin/wallet/a/a/c;Lcom/tencent/mm/plugin/wallet/a/a/e;)V

    .line 705
    :cond_0
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public final anI()I
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x2

    return v0
.end method

.method public final bY(Z)V
    .locals 3
    .parameter

    .prologue
    .line 691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 692
    const-string v1, "key_err_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string v1, "key_err_msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->setResult(ILandroid/content/Intent;)V

    .line 695
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->finish()V

    .line 696
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 686
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/h;->anK()Z

    .line 687
    return-void
.end method
