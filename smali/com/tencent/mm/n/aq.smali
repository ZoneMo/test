.class public final Lcom/tencent/mm/n/aq;
.super Lcom/tencent/mm/protocal/d;
.source "SourceFile"


# instance fields
.field private clR:Lcom/tencent/mm/protocal/p;

.field private cmN:[B

.field private type:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/protocal/p;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/protocal/d;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    .line 33
    iput p2, p0, Lcom/tencent/mm/n/aq;->type:I

    .line 34
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;[BI)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v2, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v2}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 67
    iget-object v1, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    instance-of v1, v1, Lcom/tencent/mm/protocal/n;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "MicroMsg.RemoteReq"

    const-string v2, "all protocal should implemented with protobuf"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x0

    .line 110
    :goto_0
    return v1

    .line 52
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v1, Lcom/tencent/mm/protocal/n;

    .line 53
    invoke-interface {v1}, Lcom/tencent/mm/protocal/n;->wz()[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/n/aq;->cmN:[B

    .line 54
    iget-object v1, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    iget-object v2, p0, Lcom/tencent/mm/n/aq;->cmN:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/protocal/p;->bG(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0

    .line 74
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    move-object v0, v1

    check-cast v0, Lcom/tencent/mm/protocal/n;

    move-object v4, v0

    .line 75
    invoke-interface {v4}, Lcom/tencent/mm/protocal/n;->wz()[B

    move-result-object v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x0

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v4}, Lcom/tencent/mm/protocal/n;->awI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    iput-object v1, p0, Lcom/tencent/mm/n/aq;->cmN:[B

    .line 83
    iget-object v1, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    iget-object v2, p0, Lcom/tencent/mm/n/aq;->cmN:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/protocal/p;->bG(J)V

    .line 84
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/p;->awJ()Lcom/tencent/mm/protocal/bi;

    move-result-object v10

    .line 89
    invoke-virtual {v10}, Lcom/tencent/mm/protocal/bi;->awY()Z

    move-result v3

    if-nez v3, :cond_4

    .line 90
    const-string v3, ""

    .line 97
    :goto_1
    const-string v5, "MicroMsg.RemoteReq"

    const-string v6, "dkcert type:%d rsaInfo ver:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v10}, Lcom/tencent/mm/protocal/bi;->axb()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const-string v5, "MicroMsg.RemoteReq"

    const-string v6, "dkrsa use session :%s  type:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v5, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/p;->xd()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/p;->sd()I

    move-result v6

    invoke-interface {v4}, Lcom/tencent/mm/protocal/n;->wy()I

    move-result v7

    invoke-virtual {v10}, Lcom/tencent/mm/protocal/bi;->axb()I

    move-result v8

    invoke-virtual {v10}, Lcom/tencent/mm/protocal/bi;->awZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v10}, Lcom/tencent/mm/protocal/bi;->axa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object v4, p3

    invoke-static/range {v1 .. v10}, Lcom/tencent/mm/protocal/MMProtocalJni;->pack([BLcom/tencent/mm/pointers/PByteArray;Ljava/lang/String;[BLjava/lang/String;III[B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const-string v1, "MicroMsg.RemoteReq"

    const-string v3, "reqToBuf using protobuf ok, len:%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v1, v2, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iput-object v1, p0, Lcom/tencent/mm/n/aq;->cmN:[B

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    iget-object v2, p0, Lcom/tencent/mm/n/aq;->cmN:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/protocal/p;->bG(J)V

    .line 106
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 92
    :cond_4
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    const-string v1, "MicroMsg.RemoteReq"

    const-string v2, "dksession jType %d session should not null"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v1

    .line 109
    const-string v2, "MicroMsg.RemoteReq"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "protobuf build exception, check now! :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v3, p2

    goto/16 :goto_1

    .line 40
    :pswitch_data_0
    .packed-switch 0xfff0002
        :pswitch_0
    .end packed-switch
.end method

.method public final bQ(I)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/p;->bQ(I)V

    .line 134
    return-void
.end method

.method public final cQ(I)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/p;->cQ(I)V

    .line 144
    return-void
.end method

.method public final cR(I)V
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/p;->cR(I)V

    .line 174
    return-void
.end method

.method public final ev(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/p;->ev(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final ew(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/p;->ew(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public final ex(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/p;->ex(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public final getClientVersion()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->getClientVersion()I

    move-result v0

    return v0
.end method

.method public final getCmdId()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->getCmdId()I

    move-result v0

    return v0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/tencent/mm/n/aq;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 232
    const-string v0, ""

    :goto_0
    return-object v0

    .line 224
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/k;

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ot;->fML:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/ax;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x7e -> :sswitch_1
        0x17c -> :sswitch_0
    .end sparse-switch
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/tencent/mm/n/aq;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 258
    const-string v0, ""

    :goto_0
    return-object v0

    .line 251
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/k;

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ot;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/ax;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x7e -> :sswitch_1
        0x17c -> :sswitch_0
    .end sparse-switch
.end method

.method public final sd()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->sd()I

    move-result v0

    return v0
.end method

.method public final uo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->uo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final xc()[B
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->cmN:[B

    return-object v0
.end method

.method public final xd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->xd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final xe()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->xe()I

    move-result v0

    return v0
.end method

.method public final xf()[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    const-string v0, "MicroMsg.RemoteReq"

    const-string v1, "dkrsa getpass type:%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/n/aq;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget v0, p0, Lcom/tencent/mm/n/aq;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 216
    const-string v0, "MicroMsg.RemoteReq"

    const-string v1, "dkrsa getpass usesession type:%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/n/aq;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/tencent/mm/n/aq;->uo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 186
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/ad;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ad;->fyj:Lcom/tencent/mm/protocal/a/ie;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ie;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 189
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/k;

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ot;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 192
    :sswitch_2
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/ax;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pb;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 195
    :sswitch_3
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/s;

    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/bq;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 198
    :sswitch_4
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/am;

    iget-object v0, v0, Lcom/tencent/mm/protocal/am;->fyp:Lcom/tencent/mm/protocal/a/lc;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/lc;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 201
    :sswitch_5
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/aj;

    iget-object v0, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ko;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 204
    :sswitch_6
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/plugin/d/b/b;

    iget-object v0, v0, Lcom/tencent/mm/plugin/d/b/b;->dZq:Lcom/tencent/mm/protocal/a/mg;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mg;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 207
    :sswitch_7
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/aa;

    iget-object v0, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ep;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_0

    .line 210
    :sswitch_8
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/ag;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ag;->fyl:Lcom/tencent/mm/protocal/a/kk;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kk;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rv;->ayh()Lcom/tencent/mm/am/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/am/b;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x6b -> :sswitch_4
        0x7e -> :sswitch_2
        0x91 -> :sswitch_3
        0x17c -> :sswitch_1
        0x17d -> :sswitch_0
        0x1ad -> :sswitch_5
        0x1bb -> :sswitch_6
        0x1e1 -> :sswitch_7
        0x23c -> :sswitch_8
    .end sparse-switch
.end method

.method public final xg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/tencent/mm/n/aq;->type:I

    packed-switch v0, :pswitch_data_0

    .line 244
    const-string v0, ""

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    check-cast v0, Lcom/tencent/mm/protocal/k;

    iget-object v0, v0, Lcom/tencent/mm/protocal/k;->fxL:Lcom/tencent/mm/protocal/a/ot;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ot;->fBY:Ljava/lang/String;

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x17c
        :pswitch_0
    .end packed-switch
.end method

.method public final xh()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/mm/n/aq;->clR:Lcom/tencent/mm/protocal/p;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/p;->xh()Z

    move-result v0

    return v0
.end method
