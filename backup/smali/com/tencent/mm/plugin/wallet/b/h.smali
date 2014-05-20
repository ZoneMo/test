.class public final Lcom/tencent/mm/plugin/wallet/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fal:Landroid/util/SparseArray;

.field private static fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic Fp()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 71
    :cond_0
    const-string v0, "key_support_bankcard"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v1, "key_is_oversea"

    if-nez p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 74
    invoke-virtual {v0, p2}, Lcom/tencent/mm/plugin/wallet/b/i;->m(Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;

    .line 75
    invoke-virtual {v0, p0, p2}, Lcom/tencent/mm/plugin/wallet/b/i;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;

    .line 76
    sget-object v1, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Class;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 84
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v3, "key_support_bankcard"

    if-eqz p2, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "key_is_oversea"

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 90
    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/wallet/b/i;->m(Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;

    .line 91
    invoke-virtual {v0, p0, v2}, Lcom/tencent/mm/plugin/wallet/b/i;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;

    .line 92
    sget-object v1, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_2
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static a(Lcom/tencent/mm/plugin/wallet/pay/ui/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    sput-object p0, Lcom/tencent/mm/plugin/wallet/b/h;->fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public static anK()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;

    if-eqz v0, :cond_3

    .line 46
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/pay/ui/a;->a(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 47
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;

    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/OrderHandlerUI;

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "MicroMsg.ProcessActivityMgr"

    const-string v1, "notifyPay app pay Finish!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;

    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletBrandUI;

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "MicroMsg.ProcessActivityMgr"

    const-string v1, "notifyPay brand pay Finish!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fam:Lcom/tencent/mm/plugin/wallet/pay/ui/a;

    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/c;

    if-eqz v0, :cond_2

    .line 52
    const-string v0, "MicroMsg.ProcessActivityMgr"

    const-string v1, "notifyPay qrcode pay Finish!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "MicroMsg.ProcessActivityMgr"

    const-string v1, "notifyPay not found instanceof Finish!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "MicroMsg.ProcessActivityMgr"

    const-string v1, "notifyPay callback is null. Finish!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/app/Activity;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 127
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "process_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/plugin/wallet/b/i;->c(Landroid/app/Activity;I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static e(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "process_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/plugin/wallet/b/i;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static f(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 136
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "process_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/plugin/wallet/b/i;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static g(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 158
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "process_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/wallet/b/i;->m(Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static j(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 120
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "process_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p0, v3}, Lcom/tencent/mm/plugin/wallet/b/i;->c(Landroid/app/Activity;I)V

    .line 124
    :cond_0
    return-void
.end method

.method public static k(Landroid/app/Activity;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "process_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 146
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static l(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 4
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "process_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/b/i;->anL()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;
    .locals 4
    .parameter

    .prologue
    .line 167
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b/h;->fal:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "process_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/i;

    .line 168
    return-object v0
.end method
