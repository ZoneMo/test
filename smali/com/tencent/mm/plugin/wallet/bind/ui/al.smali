.class final Lcom/tencent/mm/plugin/wallet/bind/ui/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/w;


# instance fields
.field final synthetic eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/al;->eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ai(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    packed-switch p1, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    const-string v1, "showShare"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/al;->eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/b;->h(Landroid/content/Intent;Landroid/content/Context;)V

    .line 276
    return-void

    .line 259
    :pswitch_0
    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/al;->eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    sget v3, Lcom/tencent/mm/n;->bFj:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 262
    :pswitch_1
    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/al;->eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    sget v3, Lcom/tencent/mm/n;->bFk:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/al;->eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->c(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/al;->eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    sget v3, Lcom/tencent/mm/n;->bFi:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/al;->eZn:Lcom/tencent/mm/plugin/wallet/bind/ui/ak;

    iget-object v5, v5, Lcom/tencent/mm/plugin/wallet/bind/ui/ak;->eZk:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    invoke-static {v5}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->c(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;)Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
