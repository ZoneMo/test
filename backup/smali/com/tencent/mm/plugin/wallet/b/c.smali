.class public Lcom/tencent/mm/plugin/wallet/b/c;
.super Lcom/tencent/mm/plugin/wallet/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 201
    const-string v0, "MicroMsg.ProcessActivityMgr"

    const-string v1, "start Process : BindCardProcess"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-class v0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 203
    return-object p0
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/pay/model/l;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    const-string v0, "2"

    iput-object v0, p1, Lcom/tencent/mm/plugin/wallet/pay/model/l;->flag:Ljava/lang/String;

    .line 250
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/e;

    invoke-direct {v0, p1}, Lcom/tencent/mm/plugin/wallet/bind/model/e;-><init>(Lcom/tencent/mm/plugin/wallet/pay/model/l;)V

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/protocal/Authen;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/b/c;->anN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x2

    iput v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bOY:I

    .line 244
    :goto_0
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/d;

    invoke-direct {v0, p1}, Lcom/tencent/mm/plugin/wallet/bind/model/d;-><init>(Lcom/tencent/mm/plugin/wallet/protocal/Authen;)V

    return-object v0

    .line 242
    :cond_0
    const/4 v0, 0x5

    iput v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bOY:I

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/bind/model/e;

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "key_is_import_bind"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-class v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 225
    :goto_0
    return-void

    .line 212
    :cond_0
    const-class v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletInputCardIDUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 214
    :cond_1
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    if-eqz v0, :cond_4

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/b/c;->anN()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    const-class v0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 220
    :cond_4
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 223
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/b;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/b/c;->anJ()Z

    .line 230
    if-eqz p2, :cond_0

    const-string v0, "need_bind_response"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->i(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/c;->h(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final d(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 263
    instance-of v1, p1, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/b/c;->anN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    instance-of v1, p1, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    goto :goto_0
.end method
