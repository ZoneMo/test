.class final Lcom/tencent/mm/plugin/wallet/pwd/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/wallet/ui/l;


# instance fields
.field final synthetic fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aN(Z)V
    .locals 5
    .parameter

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->a(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 127
    instance-of v2, v0, Lcom/tencent/mm/plugin/wallet/b/k;

    if-eqz v2, :cond_2

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "key_bankcard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 129
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->b(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/offline/model/a;

    invoke-direct {v3, v0, v1}, Lcom/tencent/mm/plugin/wallet/offline/model/a;-><init>(Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->k(Lcom/tencent/mm/n/x;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz v0, :cond_0

    .line 136
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/bind/model/i;

    iget-object v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->k(Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 143
    :cond_2
    instance-of v2, v0, Lcom/tencent/mm/plugin/wallet/b/g;

    if-eqz v2, :cond_3

    .line 145
    const/4 v0, 0x4

    .line 151
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/pwd/a/b;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;->fdr:Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoK()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4}, Lcom/tencent/mm/plugin/wallet/pwd/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->l(Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 146
    :cond_3
    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/b/f;

    if-eqz v0, :cond_4

    .line 147
    const/4 v0, 0x3

    goto :goto_1

    .line 149
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method
