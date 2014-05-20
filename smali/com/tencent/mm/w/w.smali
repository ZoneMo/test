.class final Lcom/tencent/mm/w/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/modelcdntran/n;


# instance fields
.field final synthetic ctZ:Lcom/tencent/mm/w/u;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/u;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

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

    .line 210
    const/16 v0, -0x520e

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra  ERR_CNDCOM_MEDIA_IS_DOWNLOADING clientid:%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v3}, Lcom/tencent/mm/w/u;->b(Lcom/tencent/mm/w/u;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_0
    :goto_0
    return v6

    .line 214
    :cond_1
    if-eqz p1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->c(Lcom/tencent/mm/w/u;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dK(I)V

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->c(Lcom/tencent/mm/w/u;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 217
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x28b5

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->d(Lcom/tencent/mm/w/u;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v4}, Lcom/tencent/mm/w/u;->e(Lcom/tencent/mm/w/u;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v4}, Lcom/tencent/mm/w/u;->f(Lcom/tencent/mm/w/u;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x7

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_1
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->g(Lcom/tencent/mm/w/u;)Lcom/tencent/mm/n/m;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-interface {v0, v9, p1, v1, v2}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_transInfo:Ljava/lang/String;

    goto :goto_1

    .line 224
    :cond_3
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v1}, Lcom/tencent/mm/w/u;->h(Lcom/tencent/mm/w/u;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/w/g;->E(J)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 225
    if-eqz p2, :cond_5

    .line 226
    iget v1, p2, Lcom/tencent/mm/modelcdntran/keep_ProgressInfo;->field_finishedLength:I

    iget-object v2, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v2}, Lcom/tencent/mm/w/u;->f(Lcom/tencent/mm/w/u;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra ignore progress 100%"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v1}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/u;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdntra progresscallback id:%s finish:%d total:%d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v4}, Lcom/tencent/mm/w/u;->b(Lcom/tencent/mm/w/u;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p2, Lcom/tencent/mm/modelcdntran/keep_ProgressInfo;->field_finishedLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p2, Lcom/tencent/mm/modelcdntran/keep_ProgressInfo;->field_toltalLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    iget-object v2, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v2}, Lcom/tencent/mm/w/u;->f(Lcom/tencent/mm/w/u;)I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v3

    iget v4, p2, Lcom/tencent/mm/modelcdntran/keep_ProgressInfo;->field_finishedLength:I

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/u;Lcom/tencent/mm/w/e;III)Z

    goto/16 :goto_0

    .line 235
    :cond_5
    if-eqz p3, :cond_0

    .line 237
    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    if-eqz v1, :cond_6

    .line 239
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->c(Lcom/tencent/mm/w/u;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/w/o;->dJ(I)Z

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdntra sceneResult.retCode :%d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->g(Lcom/tencent/mm/w/u;)Lcom/tencent/mm/n/m;

    move-result-object v0

    iget v1, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-interface {v0, v9, v1, v2, v3}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 245
    :goto_2
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x28b5

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    iget v0, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_retCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    iget-object v0, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->d(Lcom/tencent/mm/w/u;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelcdntran/h;->M(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v4}, Lcom/tencent/mm/w/u;->e(Lcom/tencent/mm/w/u;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v4}, Lcom/tencent/mm/w/u;->f(Lcom/tencent/mm/w/u;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x7

    if-nez p3, :cond_7

    const-string v0, ""

    :goto_3
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    iget-object v2, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v2}, Lcom/tencent/mm/w/u;->f(Lcom/tencent/mm/w/u;)I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/w/w;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v4}, Lcom/tencent/mm/w/u;->f(Lcom/tencent/mm/w/u;)I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/mm/w/u;->a(Lcom/tencent/mm/w/u;Lcom/tencent/mm/w/e;III)Z

    goto :goto_2

    .line 245
    :cond_7
    iget-object v0, p3, Lcom/tencent/mm/modelcdntran/keep_SceneResult;->field_transInfo:Ljava/lang/String;

    goto :goto_3
.end method
