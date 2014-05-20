.class public Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private count:I

.field private dbm:Landroid/app/ProgressDialog;

.field private eZV:Z

.field private eZW:Ljava/util/List;

.field private eZX:Ljava/util/ArrayList;

.field private eZY:Ljava/util/ArrayList;

.field private eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

.field private faa:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

.field private fab:Lcom/tencent/mm/plugin/wallet/iap/ui/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZV:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZW:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->count:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZX:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZY:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Lcom/tencent/mm/plugin/wallet/iap/ui/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/b;-><init>(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->faa:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 241
    new-instance v0, Lcom/tencent/mm/plugin/wallet/iap/ui/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/c;-><init>(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->fab:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 721
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)Lcom/tencent/mm/plugin/wallet/iap/ui/g;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZW:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->count:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZX:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZY:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)Lcom/tencent/mm/plugin/wallet/iap/ui/h;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->fab:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 275
    const-string v0, "MicroMsg.WalletIapUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p2, p3}, Lcom/tencent/mm/plugin/wallet/a/a/c;->o(ILjava/lang/String;)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->QC()I

    move-result v1

    .line 278
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v2, "MicroMsg.WalletIapUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWeiXinResult errCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",errMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    .line 281
    sparse-switch v2, :sswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 283
    :sswitch_0
    if-nez v1, :cond_1

    .line 284
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "Prepare OK, LaunchPay..."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    check-cast p4, Lcom/tencent/mm/plugin/wallet/iap/a/a;

    .line 286
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->faa:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    invoke-interface {v0, p0, p4, v1}, Lcom/tencent/mm/plugin/wallet/iap/ui/g;->a(Landroid/app/Activity;Lcom/tencent/mm/plugin/wallet/iap/a/a;Lcom/tencent/mm/plugin/wallet/iap/ui/h;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string v2, "MicroMsg.WalletIapUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "back to preview UI, reason: PreparePurchase fail , errCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , errMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 290
    const-string v3, "key_err_code"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v1, "key_err_msg"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v6, v2}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->finish()V

    goto :goto_0

    .line 297
    :sswitch_1
    check-cast p4, Lcom/tencent/mm/plugin/wallet/iap/a/b;

    .line 298
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/iap/a/b;->Lg()Ljava/lang/String;

    move-result-object v2

    .line 299
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZW:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    if-nez v1, :cond_2

    .line 301
    const-string v3, "MicroMsg.WalletIapUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Verify "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZX:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZY:Ljava/util/ArrayList;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/iap/a/b;->Li()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const-string v2, "MicroMsg.WalletIapUI"

    const-string v3, "Verify All End... "

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZX:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 311
    const-string v0, "MicroMsg.WalletIapUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mResultProductIds size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZX:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Consume ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZX:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->fab:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/iap/ui/g;->a(Ljava/util/ArrayList;Lcom/tencent/mm/plugin/wallet/iap/ui/h;)V

    goto/16 :goto_0

    .line 305
    :cond_2
    const-string v3, "MicroMsg.WalletIapUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Verify "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " fail"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :cond_3
    const-string v2, "MicroMsg.WalletIapUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "back to preview UI, reason: VerifyPurchase fail , errCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , errMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 316
    const-string v3, "key_err_code"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string v1, "key_err_msg"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v6, v2}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->setResult(ILandroid/content/Intent;)V

    .line 319
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->finish()V

    goto/16 :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x19e -> :sswitch_1
        0x1a6 -> :sswitch_0
    .end sparse-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->dbm:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->dbm:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->dbm:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->dbm:Landroid/app/ProgressDialog;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/g;->onDestroy()V

    .line 718
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    .line 719
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/mm/plugin/wallet/iap/ui/g;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "onActivityResult handled by mWalletPay."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "havn\'t handle user action"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    invoke-static {v4}, Lcom/tencent/mm/plugin/wallet/a/a/c;->jI(I)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v1

    .line 149
    const-string v2, "key_err_code"

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/a/a/c;->QC()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v2, "key_err_msg"

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/a/a/c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v4, v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x30d41

    .line 77
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a6

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 81
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x19e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 82
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_action_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 93
    sget v0, Lcom/tencent/mm/n;->beu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/wallet/iap/ui/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/a;-><init>(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)V

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/al;->b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/plugin/wallet/ui/al;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->dbm:Landroid/app/ProgressDialog;

    .line 103
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/v;->ts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "Pay use Google Wallet!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/d;-><init>(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "Pay use WeiXin Wallet!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/tencent/mm/plugin/wallet/iap/ui/i;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/i;-><init>(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 136
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1a6

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 137
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x19e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 138
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 121
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 123
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "Handler jump"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZV:Z

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZV:Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_action_type"

    const v2, 0x30d41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const v2, 0x30d42

    if-ne v1, v2, :cond_1

    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "start to restore the purchase!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    invoke-interface {v0, v5}, Lcom/tencent/mm/plugin/wallet/iap/ui/g;->bY(Z)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v1, "key_product_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZW:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "MicroMsg.WalletIapUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prepare pay product: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_price"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_currency_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_ext_info"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "key_count"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->count:I

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v7

    new-instance v0, Lcom/tencent/mm/plugin/wallet/iap/a/a;

    iget v4, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->count:I

    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->eZZ:Lcom/tencent/mm/plugin/wallet/iap/ui/g;

    invoke-interface {v5}, Lcom/tencent/mm/plugin/wallet/iap/ui/g;->anI()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/wallet/iap/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method
