.class public Lcom/tencent/mm/plugin/wallet/b/d;
.super Lcom/tencent/mm/plugin/wallet/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 128
    if-eqz p2, :cond_0

    .line 129
    const-string v0, "key_bind_scene"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/b/l;->aI(II)V

    .line 131
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "key_is_import_bind"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-class v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/d;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 135
    :goto_0
    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/pay/model/l;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    const-string v0, "1"

    iput-object v0, p1, Lcom/tencent/mm/plugin/wallet/pay/model/l;->flag:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/e;

    invoke-direct {v0, p1}, Lcom/tencent/mm/plugin/wallet/bind/model/e;-><init>(Lcom/tencent/mm/plugin/wallet/pay/model/l;)V

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/protocal/Authen;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/b/d;->anN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x1

    iput v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bOY:I

    .line 162
    :goto_0
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/d;

    invoke-direct {v0, p1}, Lcom/tencent/mm/plugin/wallet/bind/model/d;-><init>(Lcom/tencent/mm/plugin/wallet/protocal/Authen;)V

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x4

    iput v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bOY:I

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/bind/model/e;

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 141
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardElmentUI;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardImportUI;

    if-eqz v0, :cond_2

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/b/d;->anN()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const-class v0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/d;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_1
    const-class v0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletSetPasswordUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/d;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 147
    :cond_2
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/b/d;->diG:Landroid/os/Bundle;

    const-string v1, "key_bind_scene"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/b/l;->aI(II)V

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/d;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/b;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/b/d;->anJ()Z

    .line 182
    if-eqz p2, :cond_0

    const-string v0, "need_bind_response"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/d;->i(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/d;->h(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final d(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;

    return v0
.end method
