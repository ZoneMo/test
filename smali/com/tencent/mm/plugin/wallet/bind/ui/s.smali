.class final Lcom/tencent/mm/plugin/wallet/bind/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/wallet/pay/ui/a;


# instance fields
.field final synthetic eYr:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBindUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBindUI;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/s;->eYr:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBindUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/s;->eYr:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBindUI;

    const-class v1, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardManageUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBindUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBindUI;Ljava/lang/Class;)V

    .line 158
    :cond_0
    return-void
.end method
