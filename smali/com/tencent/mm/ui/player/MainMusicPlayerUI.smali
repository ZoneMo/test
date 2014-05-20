.class public Lcom/tencent/mm/ui/player/MainMusicPlayerUI;
.super Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private hcU:Lcom/tencent/mm/aa/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;-><init>()V

    .line 38
    const-string v0, "MicroMsg.MainMusicPlayerUI"

    iput-object v0, p0, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;Lcom/tencent/mm/aa/a;)Lcom/tencent/mm/aa/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->hcU:Lcom/tencent/mm/aa/a;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->ke(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;Lcom/tencent/mm/protocal/a/or;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->c(Lcom/tencent/mm/protocal/a/or;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/protocal/a/or;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)Lcom/tencent/mm/aa/a;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->hcU:Lcom/tencent/mm/aa/a;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2a9f

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 236
    .line 237
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->hcU:Lcom/tencent/mm/aa/a;

    invoke-virtual {v3}, Lcom/tencent/mm/aa/a;->BB()Lcom/tencent/mm/protocal/a/rv;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->b(Lcom/tencent/mm/protocal/a/rv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 254
    :goto_0
    if-eqz v1, :cond_2

    .line 255
    sget-object v3, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v4, "0"

    invoke-virtual {v3, v5, v4}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 257
    const-string v3, "MicroMsg.MainMusicPlayerUI"

    const-string v4, "ok get lyric: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    aput-object v5, v2, v0

    invoke-static {v3, v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :goto_1
    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->ke(I)V

    .line 265
    return-void

    .line 245
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/or;->fQd:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/tencent/mm/model/al;->aP(Ljava/lang/String;)Lcom/tencent/mm/model/al;

    .line 247
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->c(Lcom/tencent/mm/protocal/a/or;)V

    .line 248
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->Kb()V

    move v1, v2

    goto :goto_0

    .line 259
    :cond_2
    sget-object v3, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v4, "2"

    invoke-virtual {v3, v5, v4}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 261
    const-string v3, "MicroMsg.MainMusicPlayerUI"

    const-string v4, "error get errType: %d, errCode: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ImageView;Lcom/tencent/mm/protocal/a/or;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 116
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->api()Lcom/tencent/mm/pluginsdk/s;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->api()Lcom/tencent/mm/pluginsdk/s;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/pluginsdk/s;->abQ()I

    move-result v1

    iget-object v2, p2, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    iget-object v3, p2, Lcom/tencent/mm/protocal/a/or;->fPX:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/s;->a(Landroid/widget/ImageView;ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oo()I

    move-result v0

    if-nez v0, :cond_3

    .line 123
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/w/g;->c(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oo()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 133
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;ZFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 141
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oo()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 143
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;ZFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 153
    :cond_5
    new-instance v0, Lcom/tencent/mm/protocal/a/nk;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/nk;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/protocal/a/or;->fQg:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/nk;->fOo:I

    .line 157
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 160
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Lcom/tencent/mm/pluginsdk/w;->a(Lcom/tencent/mm/protocal/a/nk;Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    if-nez v1, :cond_6

    .line 163
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/tencent/mm/pluginsdk/w;->P(Landroid/view/View;)V

    .line 165
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Lcom/tencent/mm/pluginsdk/w;->c(Lcom/tencent/mm/protocal/a/nk;Landroid/view/View;I)V

    goto/16 :goto_0

    .line 168
    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method protected final acl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQf:Ljava/lang/String;

    return-object v0
.end method

.method protected final acp()Lcom/tencent/mm/pluginsdk/module/media/q;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/q;->fjV:Lcom/tencent/mm/pluginsdk/module/media/q;

    return-object v0
.end method

.method protected final acq()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->oo()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v2

    iget v2, v2, Lcom/tencent/mm/protocal/a/or;->fPT:I

    if-ne v1, v2, :cond_0

    .line 89
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fPU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQc:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/or;->fQb:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/or;->fQa:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/model/al;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final acr()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected final acs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/or;->fPT:I

    packed-switch v0, :pswitch_data_0

    .line 280
    :pswitch_0
    const v0, 0x7f0708b4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 272
    :pswitch_1
    const v0, 0x7f070e1f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_2
    const v0, 0x7f070c68

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :pswitch_3
    const v0, 0x7f070d28

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected final act()Lcom/tencent/mm/pluginsdk/e;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/tencent/mm/plugin/chatroom/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    return-object v0
.end method

.method protected final acu()Z
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->acq()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final acv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    const-string v0, ""

    .line 328
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/protocal/a/or;->fPT:I

    packed-switch v1, :pswitch_data_0

    .line 347
    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    new-instance v0, Lcom/tencent/mm/protocal/a/nk;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/nk;-><init>()V

    .line 349
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fAS:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/protocal/a/or;->fQg:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/nk;->fOo:I

    .line 352
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apz()Lcom/tencent/mm/pluginsdk/v;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/v;->f(Lcom/tencent/mm/protocal/a/nk;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->api()Lcom/tencent/mm/pluginsdk/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fPZ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/s;->mN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    goto :goto_0

    .line 342
    :pswitch_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/or;->fQe:Ljava/lang/String;

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final aqL()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected final aqM()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected final aqN()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mm/ui/player/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/player/a;-><init>(Lcom/tencent/mm/ui/player/MainMusicPlayerUI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    return-void
.end method

.method protected final at([B)V
    .locals 1
    .parameter

    .prologue
    .line 295
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->c(Lcom/tencent/mm/protocal/a/or;)V

    .line 298
    :cond_0
    return-void
.end method

.method protected final getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oE()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->aqO()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/protocal/a/or;->fPT:I

    packed-switch v1, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 313
    :pswitch_0
    const-string v0, "wx482a4001c37e2b74"

    goto :goto_0

    .line 316
    :pswitch_1
    const-string v0, "wx485a97c844086dc9"

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->hcU:Lcom/tencent/mm/aa/a;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/player/MainMusicPlayerUI;->hcU:Lcom/tencent/mm/aa/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 58
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x208

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 60
    invoke-super {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->onDestroy()V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->onPause()V

    .line 50
    return-void
.end method
