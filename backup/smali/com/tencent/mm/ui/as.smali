.class final Lcom/tencent/mm/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic gmk:Lcom/tencent/mm/ui/LauncherUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/tencent/mm/ui/as;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1083
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1084
    :goto_0
    if-eqz v0, :cond_1

    .line 1085
    const-string v0, "MicroMsg.LauncherUI"

    const-string v2, "not init finish , do not post sync task"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1083
    goto :goto_0

    .line 1091
    :cond_1
    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v2, "login_user_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    invoke-static {}, Lcom/tencent/mm/model/be;->uD()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1095
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/model/cb;

    new-instance v3, Lcom/tencent/mm/ui/at;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/at;-><init>(Lcom/tencent/mm/ui/as;)V

    const-string v4, "launch normal"

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 1103
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/as;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->h(Lcom/tencent/mm/ui/LauncherUI;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030068

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1105
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sg()V

    .line 1106
    new-instance v0, Lcom/tencent/mm/booter/ap;

    iget-object v2, p0, Lcom/tencent/mm/ui/as;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v2}, Lcom/tencent/mm/booter/ap;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/mm/booter/ap;->oU()V

    .line 1107
    iget-object v0, p0, Lcom/tencent/mm/ui/as;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEG()V

    .line 1108
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/as;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/LauncherUI;->gmg:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_1
.end method
