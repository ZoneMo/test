.class final Lcom/tencent/mm/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/ak;


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tencent/mm/app/t;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/n/ac;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 306
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/n/ac;->wR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/app/t;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nX()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    const-string v0, "MicroMsg.WorkerProfile"

    const-string v1, "can\'t kill the working process"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->aFj()V

    .line 314
    const-string v0, "MicroMsg.WorkerProfile"

    const-string v1, "now killing the working process...."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const-string v0, "MicroMsg.WorkerProfile"

    const-string v1, "address book syncing, wait a minute please"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 331
    new-instance v0, Lcom/tencent/mm/app/u;

    invoke-direct {v0, p0}, Lcom/tencent/mm/app/u;-><init>(Lcom/tencent/mm/app/t;)V

    invoke-static {v0}, Lcom/tencent/mm/m/ac;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final nY()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/tencent/mm/app/t;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-static {v0}, Lcom/tencent/mm/app/WorkerProfile;->b(Lcom/tencent/mm/app/WorkerProfile;)Lcom/tencent/mm/app/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/app/t;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-static {v1}, Lcom/tencent/mm/app/WorkerProfile;->a(Lcom/tencent/mm/app/WorkerProfile;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/app/b;->s(Landroid/content/Context;)V

    .line 344
    return-void
.end method
