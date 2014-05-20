.class final Lcom/tencent/mm/ui/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gnZ:Lcom/tencent/mm/ui/MMAppMgr;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMAppMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMAppMgr;->b(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 180
    const-string v0, "MicroMsg.MMAppMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status not changed, cur="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_0
    return v5

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    iget-object v1, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMAppMgr;->b(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;Z)Z

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    const-string v0, "MicroMsg.MMAppMgr"

    const-string v1, "[ACTIVATED MODE]"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 190
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/f;

    invoke-direct {v1}, Lcom/tencent/mm/z/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 192
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/cc;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/cc;-><init>(Lcom/tencent/mm/ui/cb;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 209
    invoke-static {}, Lcom/tencent/mm/model/ct;->vB()Lcom/tencent/mm/model/ct;

    move-result-object v0

    const/16 v1, 0x13

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ct;->a(I[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/tencent/mm/af/e;->CL()Lcom/tencent/mm/af/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/af/e;->pause()V

    .line 215
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/ac;->U(Z)V

    .line 218
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/ac;->T(Z)V

    .line 220
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notify_prep"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "longNoopIntervalFlag"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->c(Lcom/tencent/mm/ui/MMAppMgr;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->c(Lcom/tencent/mm/ui/MMAppMgr;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    goto/16 :goto_0

    .line 231
    :cond_3
    const-string v0, "MicroMsg.MMAppMgr"

    const-string v1, "[DEACTIVATED MODE]"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FE()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;J)J

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    const-string v1, "desktop"

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Lcom/tencent/mm/ui/MMAppMgr;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    invoke-static {}, Lcom/tencent/mm/al/a;->avs()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/tencent/mm/al/a;->rp(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/tencent/mm/af/e;->CL()Lcom/tencent/mm/af/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/af/e;->resume()V

    .line 247
    new-instance v0, Lcom/tencent/mm/c/a/fc;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fc;-><init>()V

    .line 248
    iget-object v1, v0, Lcom/tencent/mm/c/a/fc;->bPR:Lcom/tencent/mm/c/a/fd;

    iput v4, v1, Lcom/tencent/mm/c/a/fd;->state:I

    .line 249
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 251
    new-instance v0, Lcom/tencent/mm/c/a/c;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/c;-><init>()V

    .line 252
    iget-object v1, v0, Lcom/tencent/mm/c/a/c;->bLK:Lcom/tencent/mm/c/a/d;

    iput-boolean v4, v1, Lcom/tencent/mm/c/a/d;->bLL:Z

    .line 253
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 255
    new-instance v0, Lcom/tencent/mm/c/a/fo;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fo;-><init>()V

    .line 256
    iget-object v1, v0, Lcom/tencent/mm/c/a/fo;->bQj:Lcom/tencent/mm/c/a/fp;

    iput-boolean v4, v1, Lcom/tencent/mm/c/a/fp;->CZ:Z

    .line 257
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 261
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/n/ac;->U(Z)V

    .line 263
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->c(Lcom/tencent/mm/ui/MMAppMgr;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azG()Z

    move-result v0

    if-nez v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->c(Lcom/tencent/mm/ui/MMAppMgr;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/cb;->gnZ:Lcom/tencent/mm/ui/MMAppMgr;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->c(Lcom/tencent/mm/ui/MMAppMgr;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto/16 :goto_0
.end method
