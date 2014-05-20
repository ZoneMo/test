.class public abstract Lcom/tencent/mm/ui/a;
.super Lcom/tencent/mm/ui/cy;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/bi;
.implements Lcom/tencent/mm/pluginsdk/ui/tools/w;
.implements Lcom/tencent/mm/ui/ac;


# instance fields
.field private gka:Z

.field private gkb:Z

.field private gkc:Landroid/os/Bundle;

.field private gkd:Z

.field protected gke:Z

.field protected gkf:Z

.field protected gkg:Z

.field protected gkh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/tencent/mm/ui/cy;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkf:Z

    .line 46
    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkg:Z

    return-void
.end method


# virtual methods
.method protected abstract aDG()V
.end method

.method protected abstract aDH()V
.end method

.method protected abstract aDI()V
.end method

.method protected abstract aDJ()V
.end method

.method protected abstract aDK()V
.end method

.method protected abstract aDL()V
.end method

.method public abstract aDM()V
.end method

.method public abstract aDN()V
.end method

.method public abstract aDO()V
.end method

.method public final aDP()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDN()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkd:Z

    .line 89
    return-void
.end method

.method public final aDQ()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public final aDR()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkg:Z

    .line 134
    return-void
.end method

.method public final aDS()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 179
    iget-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkf:Z

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkb:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/a;->gkc:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDG()V

    iput-boolean v6, p0, Lcom/tencent/mm/ui/a;->gkb:Z

    .line 181
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    iget-boolean v2, p0, Lcom/tencent/mm/ui/a;->gkd:Z

    if-eqz v2, :cond_2

    .line 183
    iput-boolean v6, p0, Lcom/tencent/mm/ui/a;->gkd:Z

    .line 184
    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDO()V

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDH()V

    .line 187
    const-string v2, "MicroMsg.INIT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OnTabResume last : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gke:Z

    .line 189
    iput-boolean v6, p0, Lcom/tencent/mm/ui/a;->gkf:Z

    goto :goto_0

    .line 180
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/ui/a;->gka:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDL()V

    iget-object v0, p0, Lcom/tencent/mm/ui/a;->gkc:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDG()V

    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN tab onRecreate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/tencent/mm/ui/a;->gka:Z

    goto :goto_1
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/cy;->onActivityCreated(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkb:Z

    .line 30
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDL()V

    .line 207
    invoke-super {p0}, Lcom/tencent/mm/ui/cy;->onDestroy()V

    .line 215
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/cy;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 159
    invoke-super {p0}, Lcom/tencent/mm/ui/cy;->onPause()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkh:Z

    .line 161
    iget-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/a;->gke:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/tencent/mm/ui/a;->gkh:Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDJ()V

    const-string v2, "MicroMsg.INIT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onTabPause last : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/tencent/mm/ui/a;->gke:Z

    iput-boolean v6, p0, Lcom/tencent/mm/ui/a;->gkh:Z

    goto :goto_0
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/tencent/mm/ui/cy;->onResume()V

    .line 105
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkf:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDS()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/a;->gkg:Z

    .line 107
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/tencent/mm/ui/cy;->onStart()V

    .line 201
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDI()V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/tencent/mm/ui/cy;->onStop()V

    .line 195
    invoke-virtual {p0}, Lcom/tencent/mm/ui/a;->aDK()V

    .line 196
    return-void
.end method
