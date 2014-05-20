.class final Lcom/tencent/mm/w/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/w/af;


# instance fields
.field final synthetic cpl:Lcom/tencent/mm/modelcdntran/keep_SceneResult;

.field final synthetic cua:Lcom/tencent/mm/w/e;

.field final synthetic cuf:Lcom/tencent/mm/w/aa;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/aa;Lcom/tencent/mm/modelcdntran/keep_SceneResult;Lcom/tencent/mm/w/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iput-object p2, p0, Lcom/tencent/mm/w/ab;->cpl:Lcom/tencent/mm/modelcdntran/keep_SceneResult;

    iput-object p3, p0, Lcom/tencent/mm/w/ab;->cua:Lcom/tencent/mm/w/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(IIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 471
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v3, v3, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->e(Lcom/tencent/mm/w/y;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v4, v4, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v4}, Lcom/tencent/mm/w/y;->f(Lcom/tencent/mm/w/y;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/tencent/mm/w/ab;->cpl:Lcom/tencent/mm/modelcdntran/keep_SceneResult;

    iget v4, v4, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/tencent/mm/w/ab;->cpl:Lcom/tencent/mm/modelcdntran/keep_SceneResult;

    iget-object v4, v4, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_transInfo:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v0, v0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra clientid:%s NetSceneUploadMsgImgForCdn ret:[%d,%d]"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v3, v3, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->b(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v0, v0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->d(Lcom/tencent/mm/w/y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 476
    iget-object v0, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v0, v0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->d(Lcom/tencent/mm/w/y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 477
    iget-object v0, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v0, v0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->g(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/m;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v2, v2, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 478
    iget-object v0, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v0, v0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v0, v0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/w/ab;->cuf:Lcom/tencent/mm/w/aa;

    iget-object v0, v0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    iget-object v1, p0, Lcom/tencent/mm/w/ab;->cua:Lcom/tencent/mm/w/e;

    iget-object v2, p0, Lcom/tencent/mm/w/ab;->cua:Lcom/tencent/mm/w/e;

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->vR()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;Lcom/tencent/mm/w/e;III)Z

    goto :goto_0
.end method
