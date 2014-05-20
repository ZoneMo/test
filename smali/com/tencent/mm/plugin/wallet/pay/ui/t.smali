.class final Lcom/tencent/mm/plugin/wallet/pay/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fbV:Lcom/tencent/mm/plugin/wallet/pay/ui/s;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/s;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/t;->fbV:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/t;->fbV:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/t;->fbV:Lcom/tencent/mm/plugin/wallet/pay/ui/s;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->showDialog(I)V

    .line 451
    :cond_0
    return-void
.end method
