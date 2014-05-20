.class public final Lcom/tencent/mm/ah/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/a/l;)Lcom/tencent/mm/n/k;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 26
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "fmessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v9

    .line 31
    :cond_1
    iget-object v1, p1, Lcom/tencent/mm/protocal/a/l;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/tencent/mm/storage/ao;->uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    const-string v3, "MicroMsg.VerifyMessageExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPreAddMessage, verify scene = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 41
    const-string v0, "MicroMsg.VerifyMessageExtension"

    const-string v1, "fromUserName is self, simply drop this msg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_3
    new-instance v3, Lcom/tencent/mm/m/x;

    invoke-direct {v3}, Lcom/tencent/mm/m/x;-><init>()V

    .line 46
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/m/x;->setUsername(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v10}, Lcom/tencent/mm/m/x;->bU(I)V

    .line 48
    invoke-virtual {v3, v8}, Lcom/tencent/mm/m/x;->Q(Z)V

    .line 49
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tencent/mm/m/x;->cL(I)V

    .line 50
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/m/x;->eo(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/m/x;->ep(Ljava/lang/String;)V

    .line 52
    const-string v4, "MicroMsg.VerifyMessageExtension"

    const-string v5, "dkhurl user:[%s] big:[%s] sm:[%s]"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v3}, Lcom/tencent/mm/m/x;->vV()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3}, Lcom/tencent/mm/m/x;->vW()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/tencent/mm/m/af;->wm()Lcom/tencent/mm/m/y;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/mm/m/y;->a(Lcom/tencent/mm/m/x;)Z

    .line 55
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 56
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_4

    .line 57
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dz()Lcom/tencent/mm/ah/h;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/tencent/mm/ah/h;->a(Lcom/tencent/mm/protocal/a/l;Lcom/tencent/mm/storage/ao;)V

    .line 58
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x12001

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 61
    :cond_4
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/model/bv;->cu(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 62
    invoke-static {}, Lcom/tencent/mm/ah/k;->DA()Lcom/tencent/mm/ah/j;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/tencent/mm/ah/j;->a(Lcom/tencent/mm/protocal/a/l;Lcom/tencent/mm/storage/ao;)V

    .line 63
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x12002

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 66
    :cond_5
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_6

    .line 67
    new-instance v3, Lcom/tencent/mm/c/a/el;

    invoke-direct {v3}, Lcom/tencent/mm/c/a/el;-><init>()V

    .line 68
    iget-object v4, v3, Lcom/tencent/mm/c/a/el;->bPn:Lcom/tencent/mm/c/a/em;

    iput-object v1, v4, Lcom/tencent/mm/c/a/em;->bNy:Ljava/lang/String;

    .line 69
    iget-object v1, v3, Lcom/tencent/mm/c/a/el;->bPn:Lcom/tencent/mm/c/a/em;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/c/a/em;->bNl:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 75
    :cond_6
    if-eqz v2, :cond_0

    .line 76
    new-instance v1, Lcom/tencent/mm/ah/e;

    invoke-direct {v1}, Lcom/tencent/mm/ah/e;-><init>()V

    .line 77
    iget v3, p1, Lcom/tencent/mm/protocal/a/l;->fzy:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ah/d;->b(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/mm/ah/e;->field_createTime:J

    .line 78
    iput v11, v1, Lcom/tencent/mm/ah/e;->field_isSend:I

    .line 79
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/l;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    .line 80
    iget v0, p1, Lcom/tencent/mm/protocal/a/l;->fzo:I

    iput v0, v1, Lcom/tencent/mm/ah/e;->field_svrId:I

    .line 81
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    .line 83
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCN()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :pswitch_0
    iput v8, v1, Lcom/tencent/mm/ah/e;->field_type:I

    .line 98
    :goto_1
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ah/e;->field_encryptTalker:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ah/b;->gB(Ljava/lang/String;)Lcom/tencent/mm/ah/a;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_7

    .line 104
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/ah/e;->field_encryptTalker:Ljava/lang/String;

    iget-object v3, v1, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ah/f;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/ah/e;->field_encryptTalker:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ah/b;->gE(Ljava/lang/String;)Z

    .line 107
    :cond_7
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/f;->a(Lcom/tencent/mm/ah/e;)Z

    goto/16 :goto_0

    .line 85
    :pswitch_1
    iput v8, v1, Lcom/tencent/mm/ah/e;->field_type:I

    goto :goto_1

    .line 88
    :pswitch_2
    iput v12, v1, Lcom/tencent/mm/ah/e;->field_type:I

    goto :goto_1

    .line 91
    :pswitch_3
    iput v10, v1, Lcom/tencent/mm/ah/e;->field_type:I

    goto :goto_1

    .line 110
    :cond_8
    const-string v0, "MicroMsg.VerifyMessageExtension"

    const-string v2, "it should not go in here"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ah/b;->gD(Ljava/lang/String;)Lcom/tencent/mm/ah/a;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_9

    .line 113
    iget-object v2, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/ah/e;->field_encryptTalker:Ljava/lang/String;

    .line 114
    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    .line 116
    :cond_9
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/f;->a(Lcom/tencent/mm/ah/e;)Z

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c(Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    return-void
.end method
