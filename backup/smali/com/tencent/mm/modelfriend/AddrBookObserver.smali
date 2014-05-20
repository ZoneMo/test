.class public final Lcom/tencent/mm/modelfriend/AddrBookObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/modelfriend/g;


# static fields
.field private static cpO:Lcom/tencent/mm/modelfriend/e;

.field private static cpT:Z

.field private static cpU:Z

.field private static cpV:Z

.field private static cpW:Landroid/content/Intent;

.field private static handler:Landroid/os/Handler;


# instance fields
.field private final context:Landroid/content/Context;

.field private cpP:Ljava/util/List;

.field private cpQ:Ljava/util/List;

.field private cpR:Lcom/tencent/mm/modelfriend/d;

.field private cpS:Lcom/tencent/mm/sdk/platformtools/ch;

.field private cpX:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpT:Z

    .line 40
    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpU:Z

    .line 41
    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpV:Z

    .line 44
    new-instance v0, Lcom/tencent/mm/modelfriend/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelfriend/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    new-instance v0, Lcom/tencent/mm/modelfriend/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelfriend/c;-><init>(Lcom/tencent/mm/modelfriend/AddrBookObserver;)V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpX:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->context:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    sput-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpW:Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/modelfriend/AddrBookObserver$AddrBookService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method public static N(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "MicroMsg.AddrBookObserver"

    const-string v1, "this user has not agreed to upload address book"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zm()V

    .line 127
    new-instance v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v1, Lcom/tencent/mm/modelfriend/b;

    invoke-direct {v1}, Lcom/tencent/mm/modelfriend/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/d;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpP:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/d;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpR:Lcom/tencent/mm/modelfriend/d;

    return-object v0
.end method

.method static synthetic e(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-object p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpW:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/sdk/platformtools/ch;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpS:Lcom/tencent/mm/sdk/platformtools/ch;

    return-object v0
.end method

.method public static yA()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpU:Z

    .line 143
    return-void
.end method

.method public static yB()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpV:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic yC()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpW:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic yD()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpV:Z

    return v0
.end method

.method static synthetic yE()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpU:Z

    return v0
.end method

.method static synthetic yF()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpU:Z

    return v0
.end method

.method static synthetic yG()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpT:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpP:Ljava/util/List;

    .line 114
    iput-object p2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpQ:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpX:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpO:Lcom/tencent/mm/modelfriend/e;

    .line 117
    return-void
.end method

.method public final a(Lcom/tencent/mm/modelfriend/d;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 95
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zs()Z

    move-result v2

    .line 96
    sget-boolean v3, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpT:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 97
    :cond_0
    const-string v3, "MicroMsg.AddrBookObserver"

    const-string v4, "already syncing or canSync:%b, skip"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 100
    :cond_1
    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpT:Z

    .line 101
    sput-boolean v1, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpU:Z

    .line 102
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpR:Lcom/tencent/mm/modelfriend/d;

    .line 103
    new-instance v1, Lcom/tencent/mm/modelfriend/e;

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/tencent/mm/modelfriend/e;-><init>(Landroid/content/Context;Lcom/tencent/mm/modelfriend/g;)V

    sput-object v1, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpO:Lcom/tencent/mm/modelfriend/e;

    .line 104
    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ch;

    const-string v2, "MicroMsg.AddrBookObserver"

    const-string v3, "sync addrBook"

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpS:Lcom/tencent/mm/sdk/platformtools/ch;

    .line 105
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpS:Lcom/tencent/mm/sdk/platformtools/ch;

    const-string v2, "sync begin"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/sdk/platformtools/ch;->addSplit(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpO:Lcom/tencent/mm/modelfriend/e;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelfriend/e;->setPriority(I)V

    .line 107
    sget-object v1, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpO:Lcom/tencent/mm/modelfriend/e;

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/e;->start()V

    goto :goto_0
.end method

.method public final onChange(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 76
    const-string v0, "MicroMsg.AddrBookObserver"

    const-string v1, "address book changed, start sync after 20 second"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpT:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zt()Z

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpV:Z

    .line 82
    sget-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    sget-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->context:Landroid/content/Context;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iput v2, v0, Landroid/os/Message;->what:I

    .line 91
    sget-object v1, Lcom/tencent/mm/modelfriend/AddrBookObserver;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 92
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSyncing:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/mm/modelfriend/AddrBookObserver;->cpT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is time to sync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
