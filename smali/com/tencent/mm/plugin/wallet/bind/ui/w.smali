.class final Lcom/tencent/mm/plugin/wallet/bind/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/w;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    const-string v1, "key_support_bankcard"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/w;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_support_bankcard"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v1, "key_bank_type"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/w;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "key_bankcard_type"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/w;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;->a(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    move-result-object v2

    iget v2, v2, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXn:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/w;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/w;->eZd:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    const-class v3, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/plugin/wallet/b/i;->d(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 201
    return-void
.end method
