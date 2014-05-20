.class public Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final caE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 136
    const/16 v0, -0x4bc

    iput v0, p0, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->caE:I

    return-void
.end method

.method private static E(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 219
    new-instance v0, Lcom/tencent/mm/jni/platformcomm/WakerLock;

    invoke-direct {v0, p0}, Lcom/tencent/mm/jni/platformcomm/WakerLock;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tencent/mm/booter/NotifyReceiver;->a(Lcom/tencent/mm/jni/platformcomm/WakerLock;)Lcom/tencent/mm/jni/platformcomm/WakerLock;

    .line 220
    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->oO()Lcom/tencent/mm/jni/platformcomm/WakerLock;

    move-result-object v0

    const-wide/16 v1, 0x36b0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 221
    return-void
.end method

.method private static c(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x3

    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    if-nez p0, :cond_1

    .line 158
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "receiveImp receiveIntent == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/app/WorkerProfile;->nO()Z

    .line 164
    const-string v0, "notify_option_type"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    if-nez v0, :cond_2

    .line 166
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "receiveImp invalid opcode."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    invoke-static {}, Lcom/tencent/mm/model/be;->uE()Z

    .line 173
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 174
    :cond_4
    const-string v4, "MicroMsg.NotifyReceiver"

    const-string v5, "receiveImp hasSetuin:%b  isHold:%b  opcode:%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v4, v5, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/n/ac;->uN()Lcom/tencent/mm/network/r;

    move-result-object v4

    if-nez v4, :cond_6

    .line 180
    const-string v4, "MicroMsg.NotifyReceiver"

    const-string v5, "receiveImp  opcode:%d  getDispatcher == null"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/mm/n/ac;->T(Z)V

    .line 184
    :cond_6
    sparse-switch v0, :sswitch_data_0

    .line 204
    const-string v1, "MicroMsg.NotifyReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invald opCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :sswitch_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->E(Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "MicroMsg.NotifyReceiver"

    const-string v5, "dealWithLooper"

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v0, "MicroMsg.NotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiveImp hasSetuin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isHold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/n/ac;->wR()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/ba;->br(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_1
    if-nez v1, :cond_b

    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-direct {v1, v3}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    :goto_2
    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Et()Lcom/tencent/mm/modelvoice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/al;->run()V

    invoke-static {}, Lcom/tencent/mm/ai/m;->DF()Lcom/tencent/mm/ai/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ai/z;->run()V

    invoke-static {}, Lcom/tencent/mm/w/ag;->AY()Lcom/tencent/mm/w/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/w/o;->run()V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqi()Lcom/tencent/mm/pluginsdk/model/app/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/aw;->run()V

    invoke-static {}, Lcom/tencent/mm/plugin/voicereminder/a/f;->alj()Lcom/tencent/mm/plugin/voicereminder/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/voicereminder/a/u;->run()V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/c/a/gj;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/gj;-><init>()V

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/g;

    invoke-direct {v1}, Lcom/tencent/mm/z/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_2

    .line 191
    :sswitch_2
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->E(Landroid/content/Context;)V

    .line 192
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v4, "dealWithNotify"

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notify_respType"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "notify_respBuf"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "notify_skey"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notfiy_recv_time"

    const-wide/16 v7, -0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "on direct send notify"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/protocal/y;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/y;-><init>()V

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/y;->ex(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/n/av;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/n/av;-><init>(Lcom/tencent/mm/protocal/q;I)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v4, v3}, Lcom/tencent/mm/n/av;->a(I[B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/modelsimple/t;

    invoke-direct {v5, v0}, Lcom/tencent/mm/modelsimple/t;-><init>(Lcom/tencent/mm/protocal/q;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/mm/n/ac;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :sswitch_4
    invoke-static {v5}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "MicroMsg.NotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dkpush dealWithNotify session:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->A([B)Z

    move-result v0

    if-nez v0, :cond_d

    array-length v0, v4

    const/16 v3, 0x8

    if-gt v0, v3, :cond_e

    :cond_d
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "dkpush dealWithNotify respBuf error "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {v4, v2}, Lcom/tencent/mm/a/i;->b([BI)I

    move-result v3

    invoke-static {v4, v9}, Lcom/tencent/mm/a/i;->b([BI)I

    move-result v0

    const-string v8, "MicroMsg.NotifyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dkpush: flag:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bufLen:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dump:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->z([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v8, v4

    add-int/lit8 v8, v8, -0x8

    if-eq v0, v8, :cond_f

    const-string v0, "MicroMsg.NotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dkpush: respBuf length error len:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    new-array v8, v0, [B

    const/16 v9, 0x8

    invoke-static {v4, v9, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/tencent/mm/protocal/as;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/as;-><init>()V

    new-instance v0, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v0}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    new-instance v9, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v9}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    new-instance v10, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v10}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v9, v8, v5, v0, v10}, Lcom/tencent/mm/protocal/MMProtocalJni;->unpack(Lcom/tencent/mm/pointers/PByteArray;[B[BLcom/tencent/mm/pointers/PByteArray;Lcom/tencent/mm/pointers/PInt;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "MicroMsg.NewSyncMgr"

    const-string v3, "unpack push resp failed"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "MicroMsg.NewSyncMgr"

    const-string v4, "unpack push resp failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    :try_start_2
    iget v0, v10, Lcom/tencent/mm/pointers/PInt;->value:I

    const/16 v5, -0xd

    if-ne v0, v5, :cond_11

    iget v0, v10, Lcom/tencent/mm/pointers/PInt;->value:I

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/as;->cS(I)V

    const-string v0, "MicroMsg.NewSyncMgr"

    const-string v3, "unpack push resp failed session timeout"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, v9, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    invoke-interface {v4, v0}, Lcom/tencent/mm/protocal/o;->s([B)I

    move-result v0

    const-string v5, "MicroMsg.NewSyncMgr"

    const-string v9, "bufToResp using protobuf ok"

    invoke-static {v5, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/as;->cS(I)V

    array-length v0, v8

    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Lcom/tencent/mm/protocal/as;->bG(J)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v5, 0x2003

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->ib(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v5, v4, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/platformtools/au;->A([B)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v0, v5}, Lcom/tencent/mm/protocal/bk;->d([B[B)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    const-string v0, "MicroMsg.NewSyncMgr"

    const-string v3, "compareKeybuf syncKey failed"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v5, Lcom/tencent/mm/z/i;

    invoke-direct {v5, v4, v3, v6, v7}, Lcom/tencent/mm/z/i;-><init>(Lcom/tencent/mm/protocal/as;IJ)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "MicroMsg.NotifyReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "dkpush on sync notify, notify="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_14

    move v0, v1

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_15

    const-wide/16 v0, 0x7

    move-wide v1, v0

    :goto_4
    if-nez v4, :cond_16

    move v0, v3

    :goto_5
    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/mm/z/m;->a(JILjava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move v0, v2

    goto :goto_3

    :cond_15
    invoke-static {v4, v2}, Lcom/tencent/mm/a/i;->b([BI)I

    move-result v0

    int-to-long v0, v0

    move-wide v1, v0

    goto :goto_4

    :cond_16
    const/4 v0, 0x7

    goto :goto_5

    :sswitch_6
    const-string v0, "MicroMsg.NotifyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "oreh on newsynccheck2 notify, notify="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_17

    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/protocal/be;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/be;-><init>()V

    :try_start_3
    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/be;->s([B)I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/be;->awT()J

    move-result-wide v1

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/be;->awU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/z/m;->a(JILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_6

    :sswitch_7
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/g;

    invoke-direct {v1}, Lcom/tencent/mm/z/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v1, v2, Lcom/tencent/mm/c/a/gz;->bQU:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "MicroMsg.NotifyReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "voipinvite, exit talkroom first: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v1, v2, Lcom/tencent/mm/c/a/gz;->bQV:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    :cond_18
    new-instance v0, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v3, v1, Lcom/tencent/mm/c/a/ib;->bNk:I

    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput-object v4, v1, Lcom/tencent/mm/c/a/ib;->bRy:[B

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    const/4 v2, 0x6

    iput v2, v1, Lcom/tencent/mm/c/a/ib;->bNk:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Lcom/tencent/mm/c/a/bx;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bx;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/bx;->bNC:Lcom/tencent/mm/c/a/by;

    iput-object v4, v1, Lcom/tencent/mm/c/a/by;->bMd:[B

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :sswitch_b
    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->A([B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lcom/tencent/mm/c/a/m;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/m;-><init>()V

    iget-object v2, v1, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput v3, v2, Lcom/tencent/mm/c/a/n;->type:I

    iget-object v2, v1, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput-object v0, v2, Lcom/tencent/mm/c/a/n;->bLW:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v3, "jacks do voice notify UI"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    new-array v0, v9, [B

    new-array v3, v9, [B

    invoke-static {v4, v2, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v9, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/tencent/mm/c/a/dw;

    invoke-direct {v4}, Lcom/tencent/mm/c/a/dw;-><init>()V

    iget-object v5, v4, Lcom/tencent/mm/c/a/dw;->bOO:Lcom/tencent/mm/c/a/dx;

    invoke-static {v0, v2}, Lcom/tencent/mm/a/i;->b([BI)I

    move-result v0

    iput v0, v5, Lcom/tencent/mm/c/a/dx;->bOP:I

    iget-object v0, v4, Lcom/tencent/mm/c/a/dw;->bOO:Lcom/tencent/mm/c/a/dx;

    invoke-static {v3, v2}, Lcom/tencent/mm/a/i;->b([BI)I

    move-result v3

    iput v3, v0, Lcom/tencent/mm/c/a/dx;->bOQ:I

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v3, "notifyId: %d, sequence: %d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v4, Lcom/tencent/mm/c/a/dw;->bOO:Lcom/tencent/mm/c/a/dx;

    iget v6, v6, Lcom/tencent/mm/c/a/dx;->bOP:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, v4, Lcom/tencent/mm/c/a/dw;->bOO:Lcom/tencent/mm/c/a/dx;

    iget v2, v2, Lcom/tencent/mm/c/a/dx;->bOQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v3, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lcom/tencent/mm/c/a/p;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/p;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/p;->bMc:Lcom/tencent/mm/c/a/q;

    iput-object v4, v1, Lcom/tencent/mm/c/a/q;->bMd:[B

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lcom/tencent/mm/c/a/cj;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cj;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/c/a/cj;->bNM:Lcom/tencent/mm/c/a/ck;

    iput-object v4, v2, Lcom/tencent/mm/c/a/ck;->bMd:[B

    iget-object v2, v0, Lcom/tencent/mm/c/a/cj;->bNM:Lcom/tencent/mm/c/a/ck;

    iput-boolean v1, v2, Lcom/tencent/mm/c/a/ck;->bNN:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_0

    .line 196
    :sswitch_f
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v4, "handleCommand, shoot netscene action"

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "remote_netscene_funcid_key"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "MicroMsg.NotifyReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "edw onReceive, funcId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_19

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "edw onReceive fail, funcId is 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v4, "remote_netscene_req_buffer_key"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->A([B)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "onReceive, reqBuffer is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    new-instance v5, Lcom/tencent/mm/c/a/cg;

    invoke-direct {v5}, Lcom/tencent/mm/c/a/cg;-><init>()V

    iget-object v6, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iput-object v4, v6, Lcom/tencent/mm/c/a/ch;->bNL:[B

    sparse-switch v0, :sswitch_data_2

    const-string v1, "MicroMsg.NotifyReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive fail, unknown type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iput v2, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    :goto_7
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    const-string v0, "MicroMsg.NotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw onReceive, ret = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/ci;->bMh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iput v1, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    goto :goto_7

    :sswitch_12
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iput v10, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    goto :goto_7

    :sswitch_13
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iput v3, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    goto :goto_7

    :sswitch_14
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iput v9, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    goto :goto_7

    :sswitch_15
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    const/4 v1, 0x5

    iput v1, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    goto :goto_7

    :sswitch_16
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    const/4 v1, 0x6

    iput v1, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    goto :goto_7

    :sswitch_17
    iget-object v0, v5, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    const/4 v1, 0x7

    iput v1, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    goto :goto_7

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_f
        0x63 -> :sswitch_0
    .end sparse-switch

    .line 192
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_3
        0x26 -> :sswitch_5
        0x27 -> :sswitch_7
        0xaa -> :sswitch_8
        0xae -> :sswitch_9
        0xc0 -> :sswitch_a
        0xf1 -> :sswitch_c
        0xf2 -> :sswitch_d
        0xf4 -> :sswitch_e
        0xfff0001 -> :sswitch_4
        0xfff0003 -> :sswitch_b
        0x3b9acacd -> :sswitch_6
    .end sparse-switch

    .line 197
    :sswitch_data_2
    .sparse-switch
        0x1b8 -> :sswitch_14
        0x1b9 -> :sswitch_12
        0x1bc -> :sswitch_10
        0x1bd -> :sswitch_11
        0x1be -> :sswitch_16
        0x1bf -> :sswitch_13
        0x1c2 -> :sswitch_15
        0x204 -> :sswitch_17
    .end sparse-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 212
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 213
    const/16 v1, -0x4bc

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->startForeground(ILandroid/app/Notification;)V

    .line 215
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 216
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-static {p1}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->c(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NotifyService onStartCommand flags :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->c(Landroid/content/Intent;)V

    .line 147
    const/4 v0, 0x1

    return v0
.end method
