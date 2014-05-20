.class final Lcom/tencent/mm/ui/player/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic hdc:Lcom/tencent/mm/ui/player/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/player/f;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f070aca

    .line 214
    if-eqz p1, :cond_0

    .line 248
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v1, Lcom/tencent/mm/c/a/x;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/x;-><init>()V

    .line 218
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/player/f;->hdb:Lcom/tencent/mm/ui/player/MusicDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/player/MusicDetailUI;->a(Lcom/tencent/mm/ui/player/MusicDetailUI;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/player/f;->hdb:Lcom/tencent/mm/ui/player/MusicDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/player/MusicDetailUI;->a(Lcom/tencent/mm/ui/player/MusicDetailUI;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;J)Z

    move-result v0

    .line 231
    :goto_1
    if-eqz v0, :cond_3

    .line 233
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v0, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fx;->axI()Lcom/tencent/mm/protocal/a/fy;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/a/fy;->se(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 234
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v0, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fx;->axI()Lcom/tencent/mm/protocal/a/fy;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/a/fy;->sc(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 235
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v0, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fx;->axI()Lcom/tencent/mm/protocal/a/fy;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/a/fy;->ls(I)Lcom/tencent/mm/protocal/a/fy;

    .line 236
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 237
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v0, v0, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/player/f;->hdb:Lcom/tencent/mm/ui/player/MusicDetailUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/player/MusicDetailUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    iget-object v1, v1, Lcom/tencent/mm/ui/player/f;->hdb:Lcom/tencent/mm/ui/player/MusicDetailUI;

    const v2, 0x7f070a4d

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/player/MusicDetailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    .line 224
    :cond_1
    new-instance v0, Lcom/tencent/mm/c/a/gg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gg;-><init>()V

    .line 225
    iget-object v2, v0, Lcom/tencent/mm/c/a/gg;->bQD:Lcom/tencent/mm/c/a/gh;

    iget-object v3, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    iget-object v3, v3, Lcom/tencent/mm/ui/player/f;->hdb:Lcom/tencent/mm/ui/player/MusicDetailUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/player/MusicDetailUI;->b(Lcom/tencent/mm/ui/player/MusicDetailUI;)Lcom/tencent/mm/protocal/a/xb;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/c/a/gh;->bQF:Lcom/tencent/mm/protocal/a/xb;

    .line 226
    iget-object v2, v0, Lcom/tencent/mm/c/a/gg;->bQD:Lcom/tencent/mm/c/a/gh;

    iput-object v1, v2, Lcom/tencent/mm/c/a/gh;->bQC:Lcom/tencent/mm/c/a/x;

    .line 227
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 228
    iget-object v0, v0, Lcom/tencent/mm/c/a/gg;->bQE:Lcom/tencent/mm/c/a/gi;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/gi;->bMh:Z

    goto :goto_1

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/player/f;->hdb:Lcom/tencent/mm/ui/player/MusicDetailUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/player/MusicDetailUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070a55

    invoke-static {v0, v1, v6}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 243
    :cond_3
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v0, v0, Lcom/tencent/mm/c/a/y;->type:I

    if-nez v0, :cond_4

    .line 244
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const v2, 0x7f070a53

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/player/g;->hdc:Lcom/tencent/mm/ui/player/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/player/f;->hdb:Lcom/tencent/mm/ui/player/MusicDetailUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/player/MusicDetailUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v1, v1, Lcom/tencent/mm/c/a/y;->type:I

    invoke-static {v0, v1, v6}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0
.end method
