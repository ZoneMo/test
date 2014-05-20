.class public final Lcom/tencent/mm/plugin/backup/b/f;
.super Lcom/tencent/mm/plugin/backup/b/a;
.source "SourceFile"


# instance fields
.field private cBP:I

.field private cLC:I

.field private cLH:Ljava/util/LinkedList;

.field private cLI:I

.field private cke:Lcom/tencent/mm/n/a;

.field private index:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/tencent/mm/plugin/backup/b/a;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLH:Ljava/util/LinkedList;

    .line 23
    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLI:I

    .line 24
    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/f;->cBP:I

    .line 25
    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/f;->index:I

    .line 27
    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLC:I

    .line 30
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 31
    new-instance v1, Lcom/tencent/mm/protocal/a/ak;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ak;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 32
    new-instance v1, Lcom/tencent/mm/protocal/a/al;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/al;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 33
    const-string v1, "/cgi-bin/micromsg-bin/bakchatrecoverhead"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 34
    const/16 v1, 0x146

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 35
    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 36
    const v1, 0x3b9aca8b

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 38
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cke:Lcom/tencent/mm/n/a;

    .line 40
    iput p1, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLy:I

    .line 41
    iput-object p2, p0, Lcom/tencent/mm/plugin/backup/b/f;->cJa:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLC:I

    .line 44
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2

    move v1, v0

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ak;

    .line 47
    iput-object p2, v0, Lcom/tencent/mm/protocal/a/ak;->fAi:Ljava/lang/String;

    .line 48
    iput p1, v0, Lcom/tencent/mm/protocal/a/ak;->fAj:I

    .line 49
    iput v1, v0, Lcom/tencent/mm/protocal/a/ak;->fAF:I

    .line 50
    iput p3, v0, Lcom/tencent/mm/protocal/a/ak;->fAP:I

    .line 51
    iput p4, v0, Lcom/tencent/mm/protocal/a/ak;->dGR:I

    .line 53
    const-string v1, "MicroMsg.NetSceneBakChatRecoverHead"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rr.req.rImpl  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 44
    :cond_0
    const/16 v0, 0x4000

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final HH()Lcom/tencent/mm/network/aj;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cke:Lcom/tencent/mm/n/a;

    return-object v0
.end method

.method public final HO()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLH:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final HP()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cBP:I

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
    .line 88
    const-string v0, "MicroMsg.NetSceneBakChatRecoverHead"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd errType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_1
    check-cast p5, Lcom/tencent/mm/n/a;

    invoke-virtual {p5}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/al;

    .line 96
    iget v1, v0, Lcom/tencent/mm/protocal/a/al;->fAP:I

    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/f;->index:I

    .line 97
    iget v1, v0, Lcom/tencent/mm/protocal/a/al;->fAK:I

    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/f;->cBP:I

    .line 98
    iget v1, v0, Lcom/tencent/mm/protocal/a/al;->fAQ:I

    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLI:I

    .line 99
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/al;->fAD:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLH:Ljava/util/LinkedList;

    .line 100
    const-string v0, "MicroMsg.NetSceneBakChatRecoverHead"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resp  index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/backup/b/f;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/backup/b/f;->cBP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0
.end method

.method public final getDataType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->cLC:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/tencent/mm/plugin/backup/b/f;->index:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x146

    return v0
.end method
