.class final Lcom/tencent/mm/plugin/wallet/iap/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/wallet/iap/ui/g;


# instance fields
.field private cZs:Ljava/lang/String;

.field private dcy:Ljava/lang/String;

.field dsL:Landroid/content/BroadcastReceiver;

.field private eZU:Ljava/lang/String;

.field final synthetic fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

.field private fad:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

.field private fae:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

.field private faf:Lcom/tencent/mm/plugin/wallet/a/a/a;

.field private fag:Lcom/tencent/mm/plugin/wallet/a/a/d;

.field private fah:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 414
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fad:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 372
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fae:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 564
    new-instance v0, Lcom/tencent/mm/plugin/wallet/iap/ui/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/iap/ui/e;-><init>(Lcom/tencent/mm/plugin/wallet/iap/ui/d;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dsL:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    const-string v1, "com.tencent.mm.gwallet.ACTION_QUERY_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v1, "com.tencent.mm.gwallet.ACTION_PAY_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dsL:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    new-instance v0, Lcom/tencent/mm/plugin/wallet/a/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->faf:Lcom/tencent/mm/plugin/wallet/a/a/a;

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/iap/ui/d;Lcom/tencent/mm/plugin/wallet/a/a/d;)Lcom/tencent/mm/plugin/wallet/a/a/d;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fag:Lcom/tencent/mm/plugin/wallet/a/a/d;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/iap/ui/d;)Lcom/tencent/mm/plugin/wallet/iap/ui/h;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fad:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/iap/ui/d;)Lcom/tencent/mm/plugin/wallet/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->faf:Lcom/tencent/mm/plugin/wallet/a/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/iap/ui/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->cZs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/iap/ui/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->eZU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/iap/ui/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dcy:Ljava/lang/String;

    return-object v0
.end method

.method private jJ(I)V
    .locals 4
    .parameter

    .prologue
    .line 477
    invoke-static {p1}, Lcom/tencent/mm/plugin/wallet/a/a/c;->jH(I)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    .line 478
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 479
    const-string v2, "key_err_code"

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->QC()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    const-string v2, "key_err_msg"

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->setResult(ILandroid/content/Intent;)V

    .line 482
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->finish()V

    .line 483
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/tencent/mm/plugin/wallet/iap/a/a;Lcom/tencent/mm/plugin/wallet/iap/ui/h;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fad:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 430
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->Lg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->cZs:Ljava/lang/String;

    .line 431
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dcy:Ljava/lang/String;

    .line 432
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->eZU:Ljava/lang/String;

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.gwallet.ACTION_PAY_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->cZs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p2}, Lcom/tencent/mm/plugin/wallet/iap/a/a;->anB()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fah:Ljava/lang/String;

    .line 438
    const-string v1, "developer_pay_load"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fah:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    const-string v1, "MicroMsg.WalletIapUI"

    const-string v2, "GWallet Found!"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/16 v1, 0x2711

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "Try to downloading GWallet Moudle!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/16 v0, -0x7d0

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->jH(I)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fad:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fad:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/plugin/wallet/iap/ui/h;->a(Lcom/tencent/mm/plugin/wallet/a/a/c;Lcom/tencent/mm/plugin/wallet/a/a/e;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Lcom/tencent/mm/plugin/wallet/iap/ui/h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fae:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    .line 527
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "consumePurchase. consume..."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fag:Lcom/tencent/mm/plugin/wallet/a/a/d;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/wallet/a/a/d;->aj(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 531
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.mm.gwallet.ACTION_CONSUME_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v2, "tokens"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 534
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/a/a/c;->jH(I)Lcom/tencent/mm/plugin/wallet/a/a/c;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fae:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fae:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/plugin/wallet/iap/ui/h;->a(Lcom/tencent/mm/plugin/wallet/a/a/c;Lcom/tencent/mm/plugin/wallet/a/a/e;)V

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 496
    const/16 v1, 0x2711

    if-ne p1, v1, :cond_2

    .line 497
    const-string v1, "MicroMsg.WalletIapUI"

    const-string v2, "purchase flow!result_code: %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    if-eqz p3, :cond_1

    .line 499
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 500
    const/16 v2, -0x7d1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fah:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->cZs:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dcy:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v2, v3, v4, v1, v5}, Lcom/tencent/mm/plugin/wallet/b/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 502
    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->jJ(I)V

    .line 511
    :goto_0
    return v0

    .line 506
    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->jJ(I)V

    goto :goto_0

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->faf:Lcom/tencent/mm/plugin/wallet/a/a/a;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fae:Lcom/tencent/mm/plugin/wallet/iap/ui/h;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fah:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->cZs:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dcy:Ljava/lang/String;

    invoke-static {p3, v0, v1, v2, v3}, Lcom/tencent/mm/plugin/wallet/a/a/a;->a(Landroid/content/Intent;Lcom/tencent/mm/plugin/wallet/iap/ui/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final anF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dcy:Ljava/lang/String;

    return-object v0
.end method

.method public final anG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->cZs:Ljava/lang/String;

    return-object v0
.end method

.method public final anH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fah:Ljava/lang/String;

    return-object v0
.end method

.method public final anI()I
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x3

    return v0
.end method

.method public final bY(Z)V
    .locals 3
    .parameter

    .prologue
    .line 516
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "restorePurchase. Querying inventory."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v0, "MicroMsg.WalletIapUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is direct? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.gwallet.ACTION_QUERY_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v1, "is_direct"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 522
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->dsL:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->ag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "close front UI."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.gwallet.ACTION_CONSUME_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/iap/ui/d;->fac:Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/iap/ui/WalletIapUI;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    :cond_0
    const-string v0, "MicroMsg.WalletIapUI"

    const-string v1, "Destroying helper."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v1, "MicroMsg.WalletIapUI"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
