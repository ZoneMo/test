.class public final Lcom/tencent/mm/plugin/webwx/a/b;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private final bMR:Ljava/lang/String;

.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tencent/mm/plugin/webwx/a/b;->bMR:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 43
    new-instance v1, Lcom/tencent/mm/protocal/a/vy;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/vy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 44
    new-instance v1, Lcom/tencent/mm/protocal/a/vz;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/vz;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 45
    const-string v1, "/cgi-bin/micromsg-bin/statusnotify"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 46
    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 47
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 48
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 49
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/webwx/a/b;->cke:Lcom/tencent/mm/n/a;

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/plugin/webwx/a/b;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/vy;

    .line 52
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/vy;->fzp:Ljava/lang/String;

    .line 53
    iput p2, v0, Lcom/tencent/mm/protocal/a/vy;->fXr:I

    .line 54
    iput-object p1, v0, Lcom/tencent/mm/protocal/a/vy;->fzq:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/vy;->fzT:Ljava/lang/String;

    .line 57
    const-string v0, "MicroMsg.NetSceneStatusNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toUserName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static E(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Lcom/tencent/mm/plugin/webwx/a/b;

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_1
    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/plugin/webwx/a/b;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p2, p0, Lcom/tencent/mm/plugin/webwx/a/b;->cjh:Lcom/tencent/mm/n/m;

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/plugin/webwx/a/b;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/webwx/a/b;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 74
    :cond_0
    const-string v0, "MicroMsg.NetSceneStatusNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StatusNotify Error. userName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/webwx/a/b;->bMR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/webwx/a/b;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 78
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xfb

    return v0
.end method
