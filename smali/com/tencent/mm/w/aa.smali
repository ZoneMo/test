.class final Lcom/tencent/mm/w/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/modelcdntran/n;


# instance fields
.field final synthetic cue:Lcom/tencent/mm/w/y;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/y;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tencent/mm/modelcdntran/keep_ProgressInfo;Lcom/tencent/mm/modelcdntran/keep_SceneResult;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 394
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra cdnCallback clientid:%s startRet:%d proginfo:[%s] res:[%s]"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->b(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p2, v2, v8

    aput-object p3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const/16 v0, -0x520d

    if-ne p1, v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra  ERR_CNDCOM_MEDIA_IS_UPLOADING clientid:%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->b(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    .line 489
    :cond_0
    :goto_0
    return v6

    .line 405
    :cond_1
    if-eqz p1, :cond_2

    .line 406
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra cdnCallback clientid:%s startRet:%d"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->b(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->d(Lcom/tencent/mm/w/y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 408
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->d(Lcom/tencent/mm/w/y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 409
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->e(Lcom/tencent/mm/w/y;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v4}, Lcom/tencent/mm/w/y;->f(Lcom/tencent/mm/w/y;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_transInfo:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->g(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/m;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-interface {v0, v9, p1, v1, v2}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 417
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0

    .line 423
    :cond_2
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v1}, Lcom/tencent/mm/w/y;->h(Lcom/tencent/mm/w/y;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->h(Lcom/tencent/mm/w/y;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 425
    :cond_3
    invoke-static {}, Lcom/tencent/mm/modelcdntran/j;->yy()Lcom/tencent/mm/modelcdntran/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v1}, Lcom/tencent/mm/w/y;->b(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelcdntran/b;->eT(Ljava/lang/String;)Z

    .line 426
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra get imginfo failed maybe delete by user imgLocalId:%d client:%s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->h(Lcom/tencent/mm/w/y;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->b(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0

    .line 432
    :cond_4
    if-eqz p2, :cond_5

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    iget v2, p2, Lcom/tencent/mm/modelcdntran/keep_ProgressInfo;->field_finishedLength:I

    invoke-static {v0, v1, v2, v6, v6}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;Lcom/tencent/mm/w/e;III)Z

    goto/16 :goto_0

    .line 437
    :cond_5
    if-eqz p3, :cond_0

    .line 438
    iget v0, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    if-eqz v0, :cond_6

    .line 439
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra clientid:%s sceneResult.retCode:%d sceneResult[%s]"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->b(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->d(Lcom/tencent/mm/w/y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 441
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->d(Lcom/tencent/mm/w/y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 442
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->e(Lcom/tencent/mm/w/y;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v4}, Lcom/tencent/mm/w/y;->f(Lcom/tencent/mm/w/y;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_transInfo:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->g(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/m;

    move-result-object v0

    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-interface {v0, v9, v1, v2, v3}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 446
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->c(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/w/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/w/ad;->AS()V

    goto/16 :goto_0

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uploadMsgImg by cdn, isHitCacheUpload: %b"

    new-array v3, v7, [Ljava/lang/Object;

    iget-boolean v4, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_isHitCacheUpload:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->i(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<msg><img aeskey=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_aesKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" cdnmidimgurl=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" cdnbigimgurl=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cdnthumburl=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" cdnthumbaeskey=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_aesKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "length=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_midimgLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" hdlength=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_fileLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/></msg>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v2, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v2}, Lcom/tencent/mm/w/y;->a(Lcom/tencent/mm/w/y;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cdn callback new build cdnInfo:%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :cond_7
    invoke-virtual {v1, v0}, Lcom/tencent/mm/w/e;->fT(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 463
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v3}, Lcom/tencent/mm/w/y;->d(Lcom/tencent/mm/w/y;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v2

    .line 464
    invoke-virtual {v2, v0}, Lcom/tencent/mm/w/e;->fT(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 467
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/w/ae;

    iget-object v0, p0, Lcom/tencent/mm/w/aa;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->j(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ye;

    new-instance v4, Lcom/tencent/mm/w/ab;

    invoke-direct {v4, p0, p3, v1}, Lcom/tencent/mm/w/ab;-><init>(Lcom/tencent/mm/w/aa;Lcom/tencent/mm/modelcdntran/keep_SceneResult;Lcom/tencent/mm/w/e;)V

    invoke-direct {v3, v0, v1, p3, v4}, Lcom/tencent/mm/w/ae;-><init>(Lcom/tencent/mm/protocal/a/ye;Lcom/tencent/mm/w/e;Lcom/tencent/mm/modelcdntran/keep_SceneResult;Lcom/tencent/mm/w/af;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_0
.end method
