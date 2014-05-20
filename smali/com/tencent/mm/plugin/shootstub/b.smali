.class public final Lcom/tencent/mm/plugin/shootstub/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# instance fields
.field private etA:Lcom/tencent/mm/sdk/b/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/tencent/mm/plugin/shootstub/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/shootstub/c;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/shootstub/b;->etA:Lcom/tencent/mm/sdk/b/g;

    return-void
.end method

.method private Y([B)Z
    .locals 6
    .parameter

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/gy;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gy;->bi([B)Lcom/tencent/mm/protocal/a/gy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 120
    new-instance v0, Lcom/tencent/mm/plugin/shootstub/a/j;

    iget-object v1, v5, Lcom/tencent/mm/protocal/a/gy;->fyR:Ljava/lang/String;

    iget v2, v5, Lcom/tencent/mm/protocal/a/gy;->fIK:I

    iget v3, v5, Lcom/tencent/mm/protocal/a/gy;->fJB:I

    iget-object v4, v5, Lcom/tencent/mm/protocal/a/gy;->fIL:Ljava/lang/String;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/gy;->fIX:Ljava/util/LinkedList;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/shootstub/a/j;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/LinkedList;)V

    .line 122
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0x1bc

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/d;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/d;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 133
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameStart fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Z([B)Z
    .locals 4
    .parameter

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/gh;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/gh;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gh;->aW([B)Lcom/tencent/mm/protocal/a/gh;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    new-instance v1, Lcom/tencent/mm/plugin/shootstub/a/d;

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/gh;->fyR:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/mm/protocal/a/gh;->fIK:I

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/gh;->fIL:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/mm/plugin/shootstub/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x1bd

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/e;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/e;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 158
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameCheck fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/am/a;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm.plugin.shoot.remote.RemoteNetSceneMgr$RespReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    const-string v0, "remote_netscene_funcid_key"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v0, "remote_netscene_errtype_key"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v0, "remote_netscene_errcode_key"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v0, "remote_netscene_errmsg_key"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v0, "remote_request_type_key"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    :try_start_0
    const-string v2, "remote_netscene_req_buffer_key"

    invoke-interface {p4}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/n;

    invoke-interface {v0}, Lcom/tencent/mm/protocal/n;->wz()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 101
    const-string v0, "remote_netscene_resp_buffer_key"

    invoke-virtual {p5}, Lcom/tencent/mm/am/a;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const-string v0, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendResp succ, type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const/4 v0, 0x1

    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v2, "MicroMsg.SubCoreShootStub"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendResp fail, type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->Y([B)Z

    move-result v0

    return v0
.end method

.method private aa([B)Z
    .locals 14
    .parameter

    .prologue
    .line 162
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/gm;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/gm;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gm;->ba([B)Lcom/tencent/mm/protocal/a/gm;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 169
    new-instance v0, Lcom/tencent/mm/plugin/shootstub/a/f;

    iget-object v1, v13, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    iget v2, v13, Lcom/tencent/mm/protocal/a/gm;->fIT:I

    iget v3, v13, Lcom/tencent/mm/protocal/a/gm;->fIU:I

    iget-object v4, v13, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    iget-object v5, v13, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    iget v6, v13, Lcom/tencent/mm/protocal/a/gm;->fIV:I

    iget v7, v13, Lcom/tencent/mm/protocal/a/gm;->fIY:I

    iget v8, v13, Lcom/tencent/mm/protocal/a/gm;->fIZ:I

    iget v9, v13, Lcom/tencent/mm/protocal/a/gm;->fJa:I

    iget-object v10, v13, Lcom/tencent/mm/protocal/a/gm;->fIX:Ljava/util/LinkedList;

    iget v11, v13, Lcom/tencent/mm/protocal/a/gm;->fJb:I

    iget v12, v13, Lcom/tencent/mm/protocal/a/gm;->fJc:I

    iget v13, v13, Lcom/tencent/mm/protocal/a/gm;->fIR:I

    invoke-direct/range {v0 .. v13}, Lcom/tencent/mm/plugin/shootstub/a/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/LinkedList;IIIILjava/util/LinkedList;III)V

    .line 171
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0x1b9

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/f;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/f;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 182
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameEnd fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ab([B)Z
    .locals 4
    .parameter

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/go;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/go;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/go;->bc([B)Lcom/tencent/mm/protocal/a/go;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    new-instance v1, Lcom/tencent/mm/plugin/shootstub/a/g;

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/go;->fyR:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/mm/protocal/a/go;->fIK:I

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/go;->fBd:Ljava/util/LinkedList;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/mm/plugin/shootstub/a/g;-><init>(Ljava/lang/String;ILjava/util/LinkedList;)V

    .line 196
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x1bf

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/g;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/g;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 207
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameGift fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ac([B)Z
    .locals 4
    .parameter

    .prologue
    .line 211
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/gq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/gq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gq;->be([B)Lcom/tencent/mm/protocal/a/gq;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    new-instance v1, Lcom/tencent/mm/plugin/shootstub/a/h;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/gq;->fyR:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/tencent/mm/plugin/shootstub/a/h;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x1b8

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/h;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/h;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 232
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameInit fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad([B)Z
    .locals 5
    .parameter

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/gw;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/gw;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gw;->bg([B)Lcom/tencent/mm/protocal/a/gw;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    new-instance v1, Lcom/tencent/mm/plugin/shootstub/a/i;

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/gw;->fyR:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/mm/protocal/a/gw;->fJd:I

    iget v4, v0, Lcom/tencent/mm/protocal/a/gw;->dGR:I

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/gw;->fJA:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tencent/mm/plugin/shootstub/a/i;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x1c2

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/i;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/i;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 257
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameShare fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ae([B)Z
    .locals 4
    .parameter

    .prologue
    .line 261
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/hd;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/hd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/hd;->bk([B)Lcom/tencent/mm/protocal/a/hd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    new-instance v1, Lcom/tencent/mm/plugin/shootstub/a/k;

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/hd;->fyR:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/hd;->fBd:Ljava/util/LinkedList;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/plugin/shootstub/a/k;-><init>(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 271
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x1be

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/j;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/j;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 282
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameWish fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private af([B)Z
    .locals 4
    .parameter

    .prologue
    .line 286
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/gk;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/gk;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/gk;->aY([B)Lcom/tencent/mm/protocal/a/gk;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    new-instance v1, Lcom/tencent/mm/plugin/shootstub/a/e;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/gk;->fyR:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/tencent/mm/plugin/shootstub/a/e;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x204

    new-instance v3, Lcom/tencent/mm/plugin/shootstub/k;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/shootstub/k;-><init>(Lcom/tencent/mm/plugin/shootstub/b;)V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 306
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    :goto_0
    return v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v1, "MicroMsg.SubCoreShootStub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealGameConsume fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(IIILjava/lang/String;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/am/a;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static/range {p0 .. p5}, Lcom/tencent/mm/plugin/shootstub/b;->a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/am/a;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->Z([B)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->aa([B)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->ab([B)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->ac([B)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->ad([B)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->ae([B)Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/shootstub/b;[B)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/shootstub/b;->af([B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final N(Z)V
    .locals 3
    .parameter

    .prologue
    .line 324
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "GameOperation"

    iget-object v2, p0, Lcom/tencent/mm/plugin/shootstub/b;->etA:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 325
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 319
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    return-void
.end method

.method public final qy()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "GameOperation"

    iget-object v2, p0, Lcom/tencent/mm/plugin/shootstub/b;->etA:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 337
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method
