.class public final Lcom/tencent/mm/pluginsdk/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/j/b;I)Lcom/tencent/mm/protocal/a/ft;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    new-instance v0, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    .line 416
    iget v1, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ft;->rP(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 417
    iget-object v1, p1, Lcom/tencent/mm/j/b;->cgQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ft;->rE(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 418
    iget-object v1, p1, Lcom/tencent/mm/j/b;->cgR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ft;->rF(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 419
    iget-object v1, p1, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ft;->rD(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 420
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ft;->axy()Lcom/tencent/mm/protocal/a/ft;

    .line 421
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 427
    :goto_0
    iget-object v1, p1, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ft;->rx(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 428
    iget-object v1, p1, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/ft;->ry(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 429
    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    .line 430
    return-object v0

    .line 425
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/ft;->axA()Lcom/tencent/mm/protocal/a/ft;

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mm/c/a/x;ILjava/lang/String;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 107
    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    :cond_0
    const-string v0, "MicroMsg.GetFavDataSource"

    const-string v2, "fill favorite event fail, event is null or image path is empty"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkG:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    :cond_1
    move v0, v1

    .line 135
    :goto_0
    return v0

    .line 115
    :cond_2
    const-string v2, "MicroMsg.GetFavDataSource"

    const-string v3, "do fill event info(fav simple image), path %s sourceType %d"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v1, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    .line 117
    new-instance v2, Lcom/tencent/mm/protocal/a/fy;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/fy;-><init>()V

    .line 118
    new-instance v3, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    .line 120
    invoke-virtual {v3, v6}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    .line 121
    invoke-virtual {v3, p2}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 122
    invoke-virtual {v3}, Lcom/tencent/mm/protocal/a/ft;->axA()Lcom/tencent/mm/protocal/a/ft;

    .line 124
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/fy;->sa(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 125
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/fy;->sb(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 126
    invoke-virtual {v2, p1}, Lcom/tencent/mm/protocal/a/fy;->ls(I)Lcom/tencent/mm/protocal/a/fy;

    .line 127
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mm/protocal/a/fy;->bM(J)Lcom/tencent/mm/protocal/a/fy;

    .line 129
    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    .line 130
    iget-object v2, v1, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/a/ft;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/c/a/y;->title:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v1, v2, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    .line 134
    iget-object v1, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v6, v1, Lcom/tencent/mm/c/a/y;->type:I

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mm/c/a/x;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 192
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 193
    :cond_0
    const-string v0, "MicroMsg.GetFavDataSource"

    const-string v2, "fill favorite event fail, event or msg is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz p0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkG:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    .line 222
    :cond_1
    :goto_0
    return v1

    .line 201
    :cond_2
    invoke-static {p1}, Lcom/tencent/mm/storage/ak;->u(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/storage/ak;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    new-instance v0, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/model/b;->r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v1, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v0, v1, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v1, v3, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v2, v3, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/c/a/y;->bMo:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    new-instance v4, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/model/b;->r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    new-instance v5, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    iget v0, v3, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/ft;->rP(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v0, v3, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->sH()Ljava/lang/String;

    move-result-object v6

    const-string v7, "recbiz_"

    const-string v8, ".rec"

    invoke-static {v6, v7, v0, v8, v9}, Lcom/tencent/mm/sdk/platformtools/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    :goto_3
    invoke-virtual {v5, v11}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/ft;->axA()Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->hq(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/b;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->fU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/b;->getFormat()I

    move-result v0

    if-ne v0, v2, :cond_7

    const-string v0, "speex"

    :goto_5
    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/ft;->rH(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    new-instance v0, Lcom/tencent/mm/modelvoice/bf;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/ft;->lm(I)Lcom/tencent/mm/protocal/a/ft;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/fx;->S(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v4, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v11, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v0, v2

    goto :goto_4

    :cond_7
    const-string v0, "amr"

    goto :goto_5

    .line 207
    :cond_8
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aCb()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 208
    invoke-static {p0, v3}, Lcom/tencent/mm/pluginsdk/model/b;->b(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z

    move-result v1

    goto/16 :goto_1

    .line 209
    :cond_9
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 210
    const/4 v0, 0x0

    iget-wide v4, v3, Lcom/tencent/mm/storage/ak;->field_msgId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v4, v3, Lcom/tencent/mm/storage/ak;->field_msgId:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_c

    :cond_b
    iget v4, v3, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    if-lez v4, :cond_c

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget v4, v3, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v0, v4}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    :cond_c
    if-nez v0, :cond_d

    const-string v0, "MicroMsg.GetFavDataSource"

    const-string v2, "getImgDataPath: try get imgInfo fail"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkJ:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_d
    new-instance v1, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/model/b;->r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    new-instance v4, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    iget v5, v3, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/protocal/a/ft;->rP(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v4, v9}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v5

    invoke-static {v0}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v5, v0, v6, v7}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fx;->S(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v1, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v9, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    .line 211
    :cond_e
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->MP()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 212
    new-instance v0, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/model/b;->r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    new-instance v4, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    iget v5, v3, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/protocal/a/ft;->rP(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v4, v10}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v5

    const-string v6, "MicroMsg.GetFavDataSource"

    const-string v7, "video length is %d"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v6

    const/high16 v7, 0x190

    if-le v6, v7, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->blK:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v5}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/protocal/a/ft;->lm(I)Lcom/tencent/mm/protocal/a/ft;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fx;->S(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v1, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v0, v1, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v10, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    .line 213
    :cond_10
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aBT()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 214
    new-instance v0, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/model/b;->r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkL:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_11
    invoke-static {v4}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v4

    if-nez v4, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkL:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_12
    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v0, v5, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fx;->axI()Lcom/tencent/mm/protocal/a/fy;

    move-result-object v5

    iget-object v6, v4, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/fy;->sg(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    iget-object v6, v4, Lcom/tencent/mm/j/b;->bQs:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/fy;->si(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    iget v5, v4, Lcom/tencent/mm/j/b;->type:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkK:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v0, v1, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v1, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkM:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_13
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v1

    iget-object v5, v4, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/pluginsdk/model/app/b;->qk(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v1

    new-instance v5, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    iget v6, v3, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/ft;->rP(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    :cond_14
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-object v6, v3, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v5, v1}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    :cond_15
    invoke-virtual {v5, v9}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    iget-object v1, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/tencent/mm/protocal/a/ft;->rx(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v1, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/tencent/mm/protocal/a/ft;->ry(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v9, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    :pswitch_3
    const/4 v1, 0x7

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/j/b;I)Lcom/tencent/mm/protocal/a/ft;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/4 v1, 0x7

    iput v1, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    :pswitch_4
    invoke-static {v3, v4, v10}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/j/b;I)Lcom/tencent/mm/protocal/a/ft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ft;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/a/fx;->rY(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ft;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/a/fx;->rZ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput v10, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    :pswitch_5
    iget-object v5, v4, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, v4, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/fx;->axI()Lcom/tencent/mm/protocal/a/fy;

    move-result-object v1

    iget-object v5, v4, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fy;->sh(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    const/4 v1, 0x5

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/j/b;I)Lcom/tencent/mm/protocal/a/ft;

    move-result-object v1

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ft;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/a/fx;->rY(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ft;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fx;->rZ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fx;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/4 v1, 0x5

    iput v1, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkI:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :pswitch_6
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkM:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v5

    iget-object v6, v4, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/pluginsdk/model/app/b;->qk(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    if-eqz v5, :cond_18

    iget-object v7, v5, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tencent/mm/protocal/a/ft;->rL(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    new-instance v7, Ljava/io/File;

    iget-object v5, v5, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x1900000

    cmp-long v5, v7, v9

    if-lez v5, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->blK:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_18
    iget v1, v3, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/tencent/mm/protocal/a/ft;->rP(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    iget-object v1, v4, Lcom/tencent/mm/j/b;->cgD:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/protocal/a/ft;->rH(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-object v5, v3, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/a/ft;->axA()Lcom/tencent/mm/protocal/a/ft;

    :cond_19
    invoke-static {v1}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v6, v1}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    :cond_1a
    iget-object v1, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/protocal/a/ft;->rx(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v1, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/protocal/a/ft;->ry(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v1, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/16 v1, 0x8

    iput v1, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v1, v2

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, v4, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, v4, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkH:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    :cond_1c
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkK:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :cond_1d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkM:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    :pswitch_8
    new-instance v1, Lcom/tencent/mm/protocal/a/fw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/fw;-><init>()V

    iget-object v5, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rT(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rU(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget v5, v4, Lcom/tencent/mm/j/b;->cgU:I

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->lq(I)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->cgV:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rW(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->thumburl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rV(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v6, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/mm/c/a/y;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v4, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    iput-object v4, v5, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/16 v5, 0xa

    iput v5, v4, Lcom/tencent/mm/c/a/y;->type:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fw;)Lcom/tencent/mm/protocal/a/fx;

    move v1, v2

    goto/16 :goto_1

    :pswitch_9
    new-instance v1, Lcom/tencent/mm/protocal/a/gb;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/gb;-><init>()V

    iget-object v5, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/protocal/a/gb;->title:Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/protocal/a/gb;->desc:Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->cgY:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/protocal/a/gb;->info:Ljava/lang/String;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->thumburl:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/protocal/a/gb;->dqp:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v6, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/mm/c/a/y;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v4, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    iput-object v4, v5, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/16 v5, 0xc

    iput v5, v4, Lcom/tencent/mm/c/a/y;->type:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/gb;)Lcom/tencent/mm/protocal/a/fx;

    move v1, v2

    goto/16 :goto_1

    :pswitch_a
    new-instance v1, Lcom/tencent/mm/protocal/a/fw;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/fw;-><init>()V

    iget-object v5, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rT(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rU(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget v5, v4, Lcom/tencent/mm/j/b;->cgZ:I

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->lq(I)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->cha:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rW(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, v4, Lcom/tencent/mm/j/b;->thumburl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fw;->rV(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v6, v4, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/mm/c/a/y;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v4, v4, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    iput-object v4, v5, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/16 v5, 0xb

    iput v5, v4, Lcom/tencent/mm/c/a/y;->type:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fw;)Lcom/tencent/mm/protocal/a/fx;

    move v1, v2

    goto/16 :goto_1

    .line 215
    :cond_1e
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aBU()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 216
    invoke-static {p0, v3}, Lcom/tencent/mm/pluginsdk/model/b;->c(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z

    move-result v1

    goto/16 :goto_1

    .line 218
    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v2, Lcom/tencent/mm/n;->bkK:I

    iput v2, v0, Lcom/tencent/mm/c/a/y;->type:I

    goto/16 :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private static b(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    new-instance v3, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    .line 309
    invoke-static {p1}, Lcom/tencent/mm/pluginsdk/model/b;->r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    .line 311
    iget-object v0, p1, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    .line 312
    const-string v4, "msg"

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 314
    if-eqz v4, :cond_0

    .line 316
    :try_start_0
    new-instance v5, Lcom/tencent/mm/protocal/a/fu;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/fu;-><init>()V

    .line 317
    const-string v0, ".msg.location.$label"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/fu;->rR(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fu;

    .line 318
    const-string v0, ".msg.location.$x"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/protocal/a/fu;->g(D)Lcom/tencent/mm/protocal/a/fu;

    .line 319
    const-string v0, ".msg.location.$y"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/protocal/a/fu;->f(D)Lcom/tencent/mm/protocal/a/fu;

    .line 320
    const-string v0, ".msg.location.$scale"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/fu;->lp(I)Lcom/tencent/mm/protocal/a/fu;

    .line 321
    const-string v0, ".msg.location.$poiname"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/a/fu;->rS(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fu;

    .line 322
    invoke-virtual {v3, v5}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fu;)Lcom/tencent/mm/protocal/a/fx;

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/4 v4, 0x6

    iput v4, v0, Lcom/tencent/mm/c/a/y;->type:I

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v3, v0, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 332
    :goto_0
    return v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const-string v3, "MicroMsg.GetFavDataSource"

    const-string v4, "parse failed, %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v1, Lcom/tencent/mm/n;->bkL:I

    iput v1, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v0, v2

    .line 332
    goto :goto_0
.end method

.method private static c(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 618
    new-instance v4, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    .line 619
    invoke-static {p1}, Lcom/tencent/mm/pluginsdk/model/b;->r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;

    move-result-object v3

    .line 620
    invoke-virtual {v4, v3}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    .line 622
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/j/b;->bU(Ljava/lang/String;)Lcom/tencent/mm/j/c;

    move-result-object v0

    .line 623
    iget-object v5, v0, Lcom/tencent/mm/j/c;->che:Ljava/util/LinkedList;

    .line 624
    iget-object v0, v0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/a/fy;->si(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 625
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iget-object v6, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v6, v6, Lcom/tencent/mm/c/a/y;->bMp:I

    if-le v0, v6, :cond_3

    .line 626
    const-string v0, "MicroMsg.GetFavDataSource"

    const-string v6, "favorite biz msg, index is %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v9, v9, Lcom/tencent/mm/c/a/y;->bMp:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v0, v0, Lcom/tencent/mm/c/a/y;->bMp:I

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/j/d;

    .line 628
    iget-object v5, v0, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/protocal/a/fy;->sh(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 629
    iget-object v5, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v5, v5, Lcom/tencent/mm/c/a/y;->bMp:I

    if-lez v5, :cond_0

    .line 631
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/tencent/mm/protocal/a/fy;->sc(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 634
    :cond_0
    new-instance v5, Lcom/tencent/mm/protocal/a/ft;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ft;-><init>()V

    .line 635
    iget-object v6, v0, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/ft;->rx(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 636
    iget-object v6, v0, Lcom/tencent/mm/j/d;->chj:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/protocal/a/ft;->ry(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 637
    invoke-virtual {v3}, Lcom/tencent/mm/protocal/a/fy;->axU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/mm/protocal/a/ft;->rP(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 638
    iget-object v3, v0, Lcom/tencent/mm/j/d;->chh:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 639
    iget-object v6, v0, Lcom/tencent/mm/j/d;->chh:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v7

    iget-object v3, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v3, v3, Lcom/tencent/mm/c/a/y;->bMp:I

    if-lez v3, :cond_1

    const-string v3, "@S"

    :goto_0
    invoke-static {v6, v7, v3}, Lcom/tencent/mm/pluginsdk/model/m;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/mm/protocal/a/ft;->rM(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/ft;

    .line 643
    :goto_1
    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/ft;->axy()Lcom/tencent/mm/protocal/a/ft;

    .line 644
    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Lcom/tencent/mm/protocal/a/ft;->ln(I)Lcom/tencent/mm/protocal/a/ft;

    .line 645
    iget-object v3, v4, Lcom/tencent/mm/protocal/a/fx;->fHP:Ljava/util/LinkedList;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v3, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v4, v3, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    .line 648
    iget-object v3, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v0, v0, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/4 v3, 0x5

    iput v3, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v0, v1

    .line 657
    :goto_2
    return v0

    .line 639
    :cond_1
    const-string v3, "@T"

    goto :goto_0

    .line 641
    :cond_2
    invoke-virtual {v5}, Lcom/tencent/mm/protocal/a/ft;->axA()Lcom/tencent/mm/protocal/a/ft;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    const-string v3, "MicroMsg.GetFavDataSource"

    const-string v4, "retransmit app msg error : %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v1, Lcom/tencent/mm/n;->bkL:I

    iput v1, v0, Lcom/tencent/mm/c/a/y;->type:I

    move v0, v2

    .line 657
    goto :goto_2
.end method

.method private static r(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/protocal/a/fy;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    new-instance v1, Lcom/tencent/mm/protocal/a/fy;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/fy;-><init>()V

    .line 228
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_isSend:I

    if-ne v0, v5, :cond_2

    .line 229
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->sa(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->sb(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 231
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fy;->Xe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->sd(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 252
    :cond_0
    :goto_0
    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/a/fy;->ls(I)Lcom/tencent/mm/protocal/a/fy;

    .line 253
    iget-wide v2, p0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/protocal/a/fy;->bM(J)Lcom/tencent/mm/protocal/a/fy;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->se(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 255
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    if-lez v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->sc(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 258
    :cond_1
    return-object v1

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->sa(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 237
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->sb(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/a/fy;->sd(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    .line 241
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fy;->axV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fy;->axV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    goto/16 :goto_0

    .line 240
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method
