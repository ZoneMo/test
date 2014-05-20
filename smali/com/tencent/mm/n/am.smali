.class public final Lcom/tencent/mm/n/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/r;


# instance fields
.field private final cmD:Lcom/tencent/mm/network/s;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/s;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    .line 23
    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/tencent/mm/network/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "set fixed host failed, core service down"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final V(Z)V
    .locals 2
    .parameter

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/s;->V(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "change active status failed, core service down"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/network/s;->a(Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 32
    :goto_0
    return v0

    .line 31
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "remote dispatcher lost, send failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/s;->a(Lcom/tencent/mm/network/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/protocal/bf;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/s;->a(Lcom/tencent/mm/protocal/bf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;[I[IIILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/tencent/mm/network/s;->a(ZLjava/lang/String;Ljava/lang/String;[I[IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "dkidc setIDCHostInfo ip failed, core service down"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/network/s;->c(Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 198
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final cancel(I)V
    .locals 3
    .parameter

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/s;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel remote rr failed, netid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final eu(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/s;->eu(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "ipxxStatistics remote call error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getIPsString(Z)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1}, Lcom/tencent/mm/network/s;->getIPsString(Z)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "query remote network server ip failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNetworkServerIp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0}, Lcom/tencent/mm/network/s;->getNetworkServerIp()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "query remote network server ip failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0}, Lcom/tencent/mm/network/s;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "reset failed, core service down"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setHostInfo([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/network/s;->setHostInfo([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final wT()Z
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0}, Lcom/tencent/mm/network/s;->wT()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 158
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "core service down, guess network stable"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final wZ()Lcom/tencent/mm/network/n;
    .locals 2

    .prologue
    .line 122
    :try_start_0
    new-instance v0, Lcom/tencent/mm/n/al;

    iget-object v1, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v1}, Lcom/tencent/mm/network/s;->EM()Lcom/tencent/mm/network/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/n/al;-><init>(Lcom/tencent/mm/network/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RDispatcher"

    const-string v1, "getAccInfo failed, core service down"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xa()Lcom/tencent/mm/network/v;
    .locals 1

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/am;->cmD:Lcom/tencent/mm/network/s;

    invoke-interface {v0}, Lcom/tencent/mm/network/s;->EO()Lcom/tencent/mm/network/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
