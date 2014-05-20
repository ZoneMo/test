.class public abstract Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field protected dID:Landroid/app/Dialog;

.field private dJf:Ljava/lang/String;

.field private fcC:Lcom/tenpay/android/wechat/MyKeyboardWindow;

.field private fea:Landroid/os/Bundle;

.field private feb:I

.field private fec:I

.field private fed:Ljava/lang/String;

.field private fee:Ljava/util/HashSet;

.field private fef:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    .line 63
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->feb:I

    .line 64
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fec:I

    .line 65
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dJf:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fed:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    return-void
.end method

.method private a(Lcom/tencent/mm/plugin/wallet/b/i;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 627
    if-eqz p1, :cond_3

    .line 629
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/b/f;

    if-nez v0, :cond_3

    .line 630
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/b/c;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/b/d;

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    sget v0, Lcom/tencent/mm/n;->bFu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    .line 635
    :cond_1
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/b/e;

    if-eqz v0, :cond_2

    .line 636
    sget v0, Lcom/tencent/mm/n;->bFv:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_2
    sget v0, Lcom/tencent/mm/n;->bFw:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_3
    sget v0, Lcom/tencent/mm/n;->bFw:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->feb:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fec:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dJf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->feb:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fec:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)Lcom/tenpay/android/wechat/MyKeyboardWindow;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fcC:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    return-object v0
.end method


# virtual methods
.method protected Vf()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method protected Vh()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public Vi()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    return v0
.end method

.method public a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    const-string v0, "MicroMsg.WalletBaseUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/e/a;->aoO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tenpay/android/wechat/TenpaySecureEditText;->setSalt(Ljava/lang/String;)V

    .line 232
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget v0, Lcom/tencent/mm/n;->bHu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    invoke-virtual {v1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 238
    const/4 v0, 0x1

    .line 239
    const-string v1, "MicroMsg.WalletBaseUI"

    const-string v2, "has find scene "

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 246
    :goto_0
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/c/a;

    if-eqz v0, :cond_e

    move-object v0, p4

    .line 247
    check-cast v0, Lcom/tencent/mm/plugin/wallet/c/a;

    .line 249
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/a;->anV()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    const-string v2, "MicroMsg.WalletBaseUI"

    const-string v3, "order pay end!!!"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    const-string v3, "intent_pay_end_errcode"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    const-string v3, "intent_pay_app_url"

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/a;->anW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    const-string v3, "intent_pay_end"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    invoke-static {p0, v2}, Lcom/tencent/mm/plugin/wallet/b/h;->g(Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 257
    :cond_1
    if-eqz v1, :cond_4

    .line 258
    const/4 v1, 0x0

    .line 259
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_14

    .line 260
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 261
    sget v2, Lcom/tencent/mm/n;->bHu:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_1
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v8

    .line 264
    packed-switch p2, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v0, v1

    .line 417
    :goto_2
    if-nez v0, :cond_d

    .line 425
    check-cast p4, Lcom/tencent/mm/plugin/wallet/c/a;

    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 427
    if-nez p1, :cond_3

    if-eqz p2, :cond_c

    .line 429
    :cond_3
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->feb:I

    .line 430
    iput p2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fec:I

    .line 431
    iput-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dJf:Ljava/lang/String;

    .line 432
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "wallet base consume this response in the end!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "scenes & forcescenes isEmpty!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fec:I

    if-eqz v0, :cond_11

    .line 462
    const-string v0, "MicroMsg.WalletBaseUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showAlert! mErrCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dJf:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/mm/plugin/wallet/ui/u;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/wallet/ui/u;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 502
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    .line 503
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    .line 508
    :cond_6
    return-void

    .line 240
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    invoke-virtual {v1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 242
    const/4 v0, 0x1

    .line 243
    const-string v1, "MicroMsg.WalletBaseUI"

    const-string v2, "has find forcescenes "

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v1, v0

    goto/16 :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, ""

    sget v4, Lcom/tencent/mm/n;->bGk:I

    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/plugin/wallet/ui/ad;

    invoke-direct {v6, p0}, Lcom/tencent/mm/plugin/wallet/ui/ad;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    new-instance v7, Lcom/tencent/mm/plugin/wallet/ui/ae;

    invoke-direct {v7, p0}, Lcom/tencent/mm/plugin/wallet/ui/ae;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 288
    const/4 v0, 0x1

    .line 290
    goto/16 :goto_2

    .line 294
    :pswitch_2
    if-eqz v8, :cond_2

    instance-of v0, v8, Lcom/tencent/mm/plugin/wallet/b/g;

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/tencent/mm/plugin/wallet/b/i;->anQ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    const-string v3, "key_bankcard"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 295
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 296
    sget v0, Lcom/tencent/mm/n;->bHd:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    :goto_5
    const-string v2, ""

    sget v0, Lcom/tencent/mm/n;->bHc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/plugin/wallet/ui/af;

    invoke-direct {v5, p0, p2, v8}, Lcom/tencent/mm/plugin/wallet/ui/af;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;ILcom/tencent/mm/plugin/wallet/b/i;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 310
    const/4 v0, 0x1

    move-object v2, v1

    goto/16 :goto_2

    .line 315
    :pswitch_3
    new-instance v0, Lcom/tencent/mm/plugin/wallet/c/b;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/c/b;-><init>()V

    .line 316
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 317
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/mm/plugin/wallet/ui/ag;

    invoke-direct {v4, p0, p2}, Lcom/tencent/mm/plugin/wallet/ui/ag;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;I)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 327
    const/4 v0, 0x1

    .line 328
    goto/16 :goto_2

    .line 330
    :pswitch_4
    if-eqz v8, :cond_b

    instance-of v0, v8, Lcom/tencent/mm/plugin/wallet/b/g;

    if-eqz v0, :cond_b

    .line 331
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "404 pay error, cancel pay or change!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/c/c;->aoa()Ljava/util/ArrayList;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 334
    :cond_9
    const-string v3, ""

    sget v0, Lcom/tencent/mm/n;->bGG:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->a(Lcom/tencent/mm/plugin/wallet/b/i;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/plugin/wallet/ui/ah;

    invoke-direct {v6, p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/ah;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/b/i;)V

    new-instance v7, Lcom/tencent/mm/plugin/wallet/ui/p;

    invoke-direct {v7, p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/p;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/b/i;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 383
    :goto_6
    const/4 v0, 0x1

    .line 384
    goto/16 :goto_2

    .line 356
    :cond_a
    const-string v3, ""

    sget v0, Lcom/tencent/mm/n;->bGW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->a(Lcom/tencent/mm/plugin/wallet/b/i;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/plugin/wallet/ui/q;

    invoke-direct {v6, p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/q;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/b/i;)V

    new-instance v7, Lcom/tencent/mm/plugin/wallet/ui/r;

    invoke-direct {v7, p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/r;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/b/i;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_6

    .line 384
    :cond_b
    if-eqz v8, :cond_2

    instance-of v0, v8, Lcom/tencent/mm/plugin/wallet/b/b;

    if-eqz v0, :cond_2

    .line 385
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "404 bind error, cancel bind!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->a(Lcom/tencent/mm/plugin/wallet/b/i;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/tencent/mm/plugin/wallet/ui/s;

    invoke-direct {v6, p0, v8}, Lcom/tencent/mm/plugin/wallet/ui/s;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/b/i;)V

    invoke-static/range {v1 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 401
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 406
    :pswitch_5
    const-string v3, ""

    sget v1, Lcom/tencent/mm/n;->bHp:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/plugin/wallet/ui/t;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/t;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/c/a;)V

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 435
    :cond_c
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "wallet this response havn\'t error!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 439
    :cond_d
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "wallet base consume this response before subclass!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 443
    :cond_e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->c(IILjava/lang/String;Lcom/tencent/mm/n/x;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 445
    if-nez p1, :cond_f

    if-eqz p2, :cond_10

    .line 447
    :cond_f
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->feb:I

    .line 448
    iput p2, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fec:I

    .line 449
    iput-object p3, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dJf:Ljava/lang/String;

    .line 450
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "wallet base consume this response in the end!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 453
    :cond_10
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "wallet other scene this response havn\'t error!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 498
    :cond_11
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->Vh()Z

    move-result v0

    if-nez v0, :cond_5

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->gI(I)V

    goto/16 :goto_4

    :cond_12
    move-object v1, v2

    goto/16 :goto_5

    :cond_13
    move-object v2, p3

    goto/16 :goto_1

    :cond_14
    move v0, v1

    move-object v2, p3

    goto/16 :goto_2

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Landroid/view/View;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    sget v0, Lcom/tencent/mm/i;->aMJ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tenpay/android/wechat/MyKeyboardWindow;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fcC:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    .line 688
    sget v0, Lcom/tencent/mm/i;->awb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 689
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fcC:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Landroid/widget/EditText;)V

    .line 695
    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/x;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/tencent/mm/plugin/wallet/ui/x;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;ZILandroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/n/x;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    if-eqz p2, :cond_2

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->anq()Z

    move-result v1

    new-instance v2, Lcom/tencent/mm/plugin/wallet/ui/o;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/ui/o;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    .line 106
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 107
    return-void
.end method

.method public abstract a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z
.end method

.method protected final anc()V
    .locals 2

    .prologue
    .line 606
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_4

    .line 608
    instance-of v1, v0, Lcom/tencent/mm/plugin/wallet/b/f;

    if-eqz v1, :cond_0

    .line 609
    sget v0, Lcom/tencent/mm/n;->bHr:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fed:Ljava/lang/String;

    .line 622
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->SM()V

    .line 623
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->showDialog(I)V

    .line 624
    return-void

    .line 610
    :cond_0
    instance-of v1, v0, Lcom/tencent/mm/plugin/wallet/b/c;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/tencent/mm/plugin/wallet/b/d;

    if-eqz v1, :cond_2

    .line 612
    :cond_1
    sget v0, Lcom/tencent/mm/n;->bGq:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fed:Ljava/lang/String;

    goto :goto_0

    .line 613
    :cond_2
    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/b/e;

    if-eqz v0, :cond_3

    .line 614
    sget v0, Lcom/tencent/mm/n;->bGl:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fed:Ljava/lang/String;

    goto :goto_0

    .line 616
    :cond_3
    sget v0, Lcom/tencent/mm/n;->bGY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fed:Ljava/lang/String;

    goto :goto_0

    .line 619
    :cond_4
    sget v0, Lcom/tencent/mm/n;->bGY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fed:Ljava/lang/String;

    goto :goto_0
.end method

.method protected anq()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method protected ant()Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method protected aoA()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public aoB()Z
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method protected aoC()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "cancelforceScene"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoL()V

    .line 116
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->finish()V

    .line 117
    return-void
.end method

.method public final aoJ()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    return-object v0
.end method

.method public final aoK()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 78
    const-string v0, ""

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    const-string v1, "key_pay_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 81
    if-eqz v0, :cond_1

    .line 82
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final aoL()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/n/x;

    .line 516
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/n/x;

    .line 519
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    goto :goto_1

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 522
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 523
    return-void
.end method

.method protected final aoM()V
    .locals 5

    .prologue
    .line 584
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    const-string v1, "key_pay_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 585
    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_pay_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 588
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->dnL:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/wallet/pay/model/a;

    iget-object v3, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->dnL:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/plugin/wallet/pay/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 590
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->dnL:Ljava/lang/String;

    .line 592
    :cond_1
    return-void
.end method

.method public final b(Lcom/tencent/mm/n/x;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    const-string v0, "MicroMsg.WalletBaseUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isShowProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->anq()Z

    move-result v1

    new-instance v2, Lcom/tencent/mm/plugin/wallet/ui/aa;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/ui/aa;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->dID:Landroid/app/Dialog;

    .line 146
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 147
    return-void
.end method

.method public c(IILjava/lang/String;Lcom/tencent/mm/n/x;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method protected final gI(I)V
    .locals 2
    .parameter

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->Vf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    if-nez p1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aFe()V

    .line 547
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aFd()V

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aFe()V

    goto :goto_0
.end method

.method public final k(Lcom/tencent/mm/n/x;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->a(Lcom/tencent/mm/n/x;Z)V

    .line 111
    return-void
.end method

.method public final l(Lcom/tencent/mm/n/x;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->b(Lcom/tencent/mm/n/x;Z)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->gI(I)V

    .line 153
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x181

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 154
    const-string v0, "MicroMsg.WalletBaseUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current process:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "process_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "MicroMsg.WalletBaseUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "proc "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->l(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fea:Landroid/os/Bundle;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->Vi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->k(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string v1, "mall"

    const-string v2, ".ui.MallIndexUI"

    invoke-static {p0, v1, v2, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->finish()V

    .line 198
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->getLayoutId()I

    move-result v0

    if-lez v0, :cond_2

    .line 173
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/e/b;->b(Lcom/tencent/mm/ui/MMActivity;)V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->ant()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    new-instance v0, Lcom/tencent/mm/plugin/wallet/ui/ab;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/ab;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    .line 188
    :cond_3
    new-instance v0, Lcom/tencent/mm/plugin/wallet/ui/ac;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/ac;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 648
    packed-switch p1, :pswitch_data_0

    .line 673
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 650
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fed:Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/mm/plugin/wallet/ui/v;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/ui/v;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    new-instance v3, Lcom/tencent/mm/plugin/wallet/ui/w;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/wallet/ui/w;-><init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 220
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x181

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 221
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoL()V

    .line 222
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "MicroMsg.WalletBaseUI"

    const-string v1, "clean wallet cache"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 596
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->ant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->anc()V

    .line 599
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 215
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 203
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/e/a;->aoN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lcom/tencent/mm/plugin/wallet/c/b;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/c/b;-><init>()V

    .line 205
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fef:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->fee:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->gI(I)V

    .line 210
    :cond_1
    return-void
.end method
