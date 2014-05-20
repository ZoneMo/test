.class final Lcom/tencent/mm/app/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bKX:Lcom/tencent/mm/app/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/f;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/mm/app/g;->bKX:Lcom/tencent/mm/app/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x7cf

    if-ne v0, v1, :cond_3

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/app/g;->bKX:Lcom/tencent/mm/app/f;

    invoke-static {v0}, Lcom/tencent/mm/app/f;->a(Lcom/tencent/mm/app/f;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/app/g;->bKX:Lcom/tencent/mm/app/f;

    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEq()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "tab_main"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->vS(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEE()V

    invoke-static {}, Lcom/tencent/mm/compatible/loader/e;->pZ()V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/mm/pluginsdk/w;->aew()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEv()V

    .line 89
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 91
    :cond_2
    return-void

    .line 72
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0xbb7

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/app/g;->bKX:Lcom/tencent/mm/app/f;

    invoke-static {v0}, Lcom/tencent/mm/app/f;->a(Lcom/tencent/mm/app/f;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/app/g;->bKX:Lcom/tencent/mm/app/f;

    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEw()V

    .line 76
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-string v1, "plugin.emoji"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/bb;->bJ(I)V

    .line 84
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/w/ag;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/w/ag;

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/tencent/mm/w/ag;->clearCache()V

    goto :goto_0
.end method
