.class public final Lcom/tencent/mm/ui/voicetranstext/b;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private htS:Lcom/tencent/mm/n/a;

.field private htT:Lcom/tencent/mm/n/m;

.field private htU:Ljava/lang/String;

.field private hub:Lcom/tencent/mm/protocal/a/zk;

.field private huf:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 26
    const-string v0, "MicroMsg.NetSceneGetVoiceTransRes"

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->huf:I

    .line 38
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 40
    iput-object p1, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htU:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    new-instance v2, Lcom/tencent/mm/protocal/a/ld;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/ld;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    new-instance v2, Lcom/tencent/mm/protocal/a/le;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/le;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    const-string v2, "/cgi-bin/micromsg-bin/getvoicetransres"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    const/16 v2, 0x224

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cN(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htS:Lcom/tencent/mm/n/a;

    .line 43
    return-void

    :cond_0
    move v0, v1

    .line 38
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p2, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htT:Lcom/tencent/mm/n/m;

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htS:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ld;

    .line 55
    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htU:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ld;->fDC:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htS:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/ui/voicetranstext/b;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htS:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/le;

    .line 64
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/le;->fDG:Lcom/tencent/mm/protocal/a/qu;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/le;->fDG:Lcom/tencent/mm/protocal/a/qu;

    iget v1, v1, Lcom/tencent/mm/protocal/a/qu;->fTi:I

    iput v1, p0, Lcom/tencent/mm/ui/voicetranstext/b;->huf:I

    .line 67
    :cond_0
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/le;->fDE:Lcom/tencent/mm/protocal/a/zk;

    iput-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->hub:Lcom/tencent/mm/protocal/a/zk;

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->htT:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 72
    return-void

    .line 69
    :cond_1
    const-string v0, "MicroMsg.NetSceneGetVoiceTransRes"

    const-string v1, "error get: errType:%d, errCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final aPn()Lcom/tencent/mm/protocal/a/zk;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->hub:Lcom/tencent/mm/protocal/a/zk;

    return-object v0
.end method

.method public final aPr()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->hub:Lcom/tencent/mm/protocal/a/zk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->hub:Lcom/tencent/mm/protocal/a/zk;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/zk;->fZG:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInterval()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/tencent/mm/ui/voicetranstext/b;->huf:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x224

    return v0
.end method

.method public final isComplete()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/b;->hub:Lcom/tencent/mm/protocal/a/zk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/voicetranstext/b;->hub:Lcom/tencent/mm/protocal/a/zk;

    iget v1, v1, Lcom/tencent/mm/protocal/a/zk;->fAK:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
