.class public final Lcom/tencent/mm/ui/MMAppMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static gnR:Ljava/lang/StringBuffer;

.field private static gnS:J


# instance fields
.field private cxQ:J

.field private gnT:Ljava/lang/String;

.field private gnU:Lcom/tencent/mm/ui/MMAppMgr$Receiver;

.field private gnV:Z

.field private gnW:Z

.field private final gnX:Lcom/tencent/mm/sdk/platformtools/ay;

.field private final gnY:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v3, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnV:Z

    .line 152
    iput-boolean v3, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnW:Z

    .line 154
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/bu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bu;-><init>(Lcom/tencent/mm/ui/MMAppMgr;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnX:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 175
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/cb;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/cb;-><init>(Lcom/tencent/mm/ui/MMAppMgr;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnY:Lcom/tencent/mm/sdk/platformtools/ay;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMAppMgr;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/tencent/mm/ui/MMAppMgr;->cxQ:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMAppMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnT:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderFlush()V

    .line 427
    invoke-static {}, Lcom/tencent/mm/booter/al;->oR()V

    .line 429
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 430
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    const-string v1, "absolutely_exit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v1, "exit_and_view"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 436
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMAppMgr;Landroid/content/Intent;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "classname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "MicroMsg.MMAppMgr"

    const-string v1, "dealWithClickStream className is null, broadcast should set this intent flag"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/at;->sH(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x320

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/mm/ui/MMAppMgr;->gnS:J

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    const-string v2, "start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p2, :cond_3

    const-string v1, "desktop"

    iget-object v2, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    const-string v2, "desktop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/tencent/mm/ui/MMAppMgr;->cxQ:J

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->O(J)J

    move-result-wide v2

    const-wide/16 v4, 0x320

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FE()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/ui/MMAppMgr;->cxQ:J

    iput-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnT:Ljava/lang/String;

    :goto_1
    const-string v1, "MicroMsg.MMAppMgr"

    const-string v2, "classname %s, isAcitvity %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/tencent/mm/ui/MMAppMgr;->cxQ:J

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->O(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMAppMgr;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnW:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMAppMgr;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnW:Z

    return p1
.end method

.method public static aFj()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->di(Z)V

    .line 378
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderClose()V

    .line 379
    return-void
.end method

.method public static aFk()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 390
    const-string v0, "MicroMsg.MMAppMgr"

    const-string v1, "killProcess thread:%s proc:%d stack:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FJ()Lcom/tencent/mm/platformtools/av;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/booter/CoreService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/booter/cache/CacheService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 393
    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->reset()V

    .line 396
    new-instance v0, Lcom/tencent/mm/c/a/dg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dg;-><init>()V

    .line 397
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iput v4, v1, Lcom/tencent/mm/c/a/dh;->status:I

    .line 398
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iput v6, v1, Lcom/tencent/mm/c/a/dh;->bOo:I

    .line 399
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 400
    invoke-static {v5}, Lcom/tencent/mm/ui/MMAppMgr;->di(Z)V

    .line 401
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FJ()Lcom/tencent/mm/platformtools/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/av;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/be;->dr(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/tencent/mm/model/be;->release()V

    .line 404
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderClose()V

    .line 405
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 406
    return-void
.end method

.method static synthetic aFl()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic aFm()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->di(Z)V

    return-void
.end method

.method public static aT(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    invoke-static {}, Lcom/tencent/mm/model/be;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/model/ap;->aT(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public static b(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f070782

    const v5, 0x7f070780

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 714
    .line 715
    const v0, 0x7f030216

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 716
    const v0, 0x7f0a060f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 717
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 718
    new-instance v4, Lcom/tencent/mm/ui/by;

    invoke-direct {v4}, Lcom/tencent/mm/ui/by;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 725
    const v0, 0x7f0a060e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    const v0, 0x7f0a060d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 728
    packed-switch p1, :pswitch_data_0

    .line 753
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    .line 756
    :goto_0
    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 758
    const v4, 0x7f0709bb

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/aa;->mR(I)Lcom/tencent/mm/ui/base/aa;

    .line 759
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    .line 760
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    .line 761
    const v2, 0x7f070783

    invoke-virtual {v0, v2, p2}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 762
    invoke-virtual {v0, v6, p3}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 764
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    move v0, v1

    .line 768
    :goto_1
    return v0

    .line 730
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    move v0, v2

    .line 747
    goto :goto_0

    .line 749
    :pswitch_2
    const v4, 0x7f07077f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    .line 751
    goto :goto_0

    :cond_0
    move v0, v2

    .line 768
    goto :goto_1

    .line 728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMAppMgr;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnV:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MMAppMgr;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnX:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method private static di(Z)V
    .locals 6
    .parameter

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 347
    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    if-nez v1, :cond_0

    .line 348
    sput-object v0, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    .line 349
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mm/ui/MMAppMgr;->gnS:J

    .line 360
    :goto_0
    return-void

    .line 353
    :cond_0
    sget-object v1, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v1}, Lcom/tencent/mm/ui/MMAppMgr;->vV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    sput-object v0, Lcom/tencent/mm/ui/MMAppMgr;->gnR:Ljava/lang/StringBuffer;

    .line 357
    const-string v0, "MicroMsg.MMAppMgr"

    const-string v2, "oreh report clickstream %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x290c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/tencent/mm/ui/MMAppMgr;->gnS:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->a(ZILjava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mm/ui/MMAppMgr;->gnS:J

    goto :goto_0
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 663
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 664
    const-string v0, "gprs_alert"

    const/4 v3, 0x1

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 665
    sget-boolean v3, Lcom/tencent/mm/sdk/platformtools/j;->gcp:Z

    and-int/2addr v3, v0

    sput-boolean v3, Lcom/tencent/mm/sdk/platformtools/j;->gcp:Z

    .line 666
    if-eqz v0, :cond_0

    .line 667
    const v0, 0x7f03013a

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 668
    const v0, 0x7f0a0416

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 669
    const v4, 0x7f070a56

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070198

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/ui/bv;

    invoke-direct {v6, v0, v7}, Lcom/tencent/mm/ui/bv;-><init>(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    new-instance v7, Lcom/tencent/mm/ui/bw;

    invoke-direct {v7, p0}, Lcom/tencent/mm/ui/bw;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 689
    if-nez v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    new-instance v1, Lcom/tencent/mm/ui/bx;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bx;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public static i(Landroid/app/Activity;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 584
    sget-boolean v0, Lcom/tencent/mm/protocal/a;->fxu:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/mm/protocal/a;->fxv:Z

    if-eqz v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const-string v0, "show_whatsnew"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    const-string v0, "MicroMsg.MMAppMgr"

    const-string v1, "showWhatsNewForResult, hasSetUin fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    const-string v1, "MicroMsg.MMAppMgr"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 602
    const v1, 0xdead

    if-eq p1, v1, :cond_3

    .line 603
    const-string v1, "whatsnew"

    const-string v2, ".ui.ThirdAnniversaryUI"

    invoke-static {p0, v1, v2, v0, p1}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 605
    :cond_3
    const-string v1, "whatsnew"

    const-string v2, ".ui.ThirdAnniversaryUI"

    invoke-static {p0, v1, v2, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static nJ()V
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/tencent/mm/model/be;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/ap;->nJ()V

    .line 387
    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 635
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 636
    const-string v1, "Main_ShortCut"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 637
    if-nez v1, :cond_0

    .line 638
    const v1, 0x7f0701a1

    const v2, 0x7f0709bb

    new-instance v3, Lcom/tencent/mm/ui/cj;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/cj;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    const-string v1, "Main_ShortCut"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    :cond_0
    return-void
.end method

.method public static v(Landroid/content/Context;)Lcom/tencent/mm/ui/base/x;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 773
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 774
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/ba;->bt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 811
    :goto_0
    return-object v0

    .line 778
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x1009

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 779
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 780
    goto :goto_0

    .line 782
    :cond_1
    const v0, 0x7f030159

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 783
    const v0, 0x7f0a0450

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 784
    new-instance v3, Lcom/tencent/mm/ui/bz;

    invoke-direct {v3}, Lcom/tencent/mm/ui/bz;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 795
    new-instance v0, Lcom/tencent/mm/ui/ca;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ca;-><init>(Landroid/content/Context;)V

    .line 803
    new-instance v3, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 804
    const v4, 0x7f070b9e

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/base/aa;->mR(I)Lcom/tencent/mm/ui/base/aa;

    .line 805
    invoke-virtual {v3, v2}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    .line 806
    const v2, 0x7f0709bf

    invoke-virtual {v3, v2, v0}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 807
    const v0, 0x7f070a14

    invoke-virtual {v3, v0, v1}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 809
    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    goto :goto_0
.end method

.method private static vV(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 366
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_0

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 369
    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 370
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 373
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final V(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 294
    if-eqz p1, :cond_0

    .line 295
    invoke-static {}, Lcom/tencent/mm/m/ac;->wg()V

    .line 296
    new-instance v0, Lcom/tencent/mm/c/a/fc;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fc;-><init>()V

    .line 297
    iget-object v1, v0, Lcom/tencent/mm/c/a/fc;->bPR:Lcom/tencent/mm/c/a/fd;

    iput v2, v1, Lcom/tencent/mm/c/a/fd;->state:I

    .line 298
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 300
    new-instance v0, Lcom/tencent/mm/c/a/c;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/c;-><init>()V

    .line 301
    iget-object v1, v0, Lcom/tencent/mm/c/a/c;->bLK:Lcom/tencent/mm/c/a/d;

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/d;->bLL:Z

    .line 302
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 304
    new-instance v0, Lcom/tencent/mm/c/a/fo;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fo;-><init>()V

    .line 305
    iget-object v1, v0, Lcom/tencent/mm/c/a/fo;->bQj:Lcom/tencent/mm/c/a/fp;

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/fp;->CZ:Z

    .line 306
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 309
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnV:Z

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnY:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 311
    return-void
.end method

.method public final bP(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnU:Lcom/tencent/mm/ui/MMAppMgr$Receiver;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/tencent/mm/ui/MMAppMgr$Receiver;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/MMAppMgr$Receiver;-><init>(Lcom/tencent/mm/ui/MMAppMgr;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnU:Lcom/tencent/mm/ui/MMAppMgr$Receiver;

    .line 277
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->aEX()V

    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    const-string v1, "com.tencent.mm.ui.ACTION_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "com.tencent.mm.ui.ACTION_DEACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v1, "com.tencent.mm.sandbox.updater.intent.ACTION_EXIT_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "com.tencent.mm.sandbox.updater.intent.ACTION_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnU:Lcom/tencent/mm/ui/MMAppMgr$Receiver;

    const-string v2, "com.tencent.mm.permission.MM_MESSAGE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    return-void
.end method

.method public final bQ(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnU:Lcom/tencent/mm/ui/MMAppMgr$Receiver;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->gnU:Lcom/tencent/mm/ui/MMAppMgr$Receiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    :cond_0
    return-void
.end method
