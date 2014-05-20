.class final Lcom/tencent/mm/ui/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    .line 195
    iget-object v2, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->b(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/al;->oB()Lcom/tencent/mm/model/al;

    .line 200
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/al;->oD()I

    move-result v2

    if-gtz v2, :cond_2

    .line 201
    const-string v0, "MicroMsg.MainMusicPlayerUI"

    const-string v2, "can\'t get songId "

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2a9f

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    move v0, v1

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-static {v2, v1}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;I)V

    .line 228
    return-void

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/model/al;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;Lcom/tencent/mm/protocal/a/or;)V

    .line 210
    iget-object v2, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    new-instance v3, Lcom/tencent/mm/aa/a;

    iget-object v4, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->c(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;

    move-result-object v4

    iget v4, v4, Lcom/tencent/mm/protocal/a/or;->fMa:I

    iget-object v5, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-static {v5}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->d(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/tencent/mm/aa/a;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;Lcom/tencent/mm/aa/a;)Lcom/tencent/mm/aa/a;

    .line 214
    const-string v2, "MicroMsg.MainMusicPlayerUI"

    const-string v3, "request syn lyric..: songid: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/mm/model/al;->oD()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    const/16 v3, 0x208

    iget-object v4, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 220
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/player/a;->hcV:Lcom/tencent/mm/ui/player/MainMusicPlayerUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->e(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/aa/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
