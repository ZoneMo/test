.class final Lcom/tencent/mm/plugin/wallet/pay/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    sget v2, Lcom/tencent/mm/n;->bHd:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    sget v4, Lcom/tencent/mm/n;->bHc:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    sget v5, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {v4, v5}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/plugin/wallet/pay/ui/aw;

    invoke-direct {v5, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/aw;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/av;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 171
    return-void
.end method
