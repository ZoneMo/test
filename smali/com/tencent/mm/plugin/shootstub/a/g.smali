.class public final Lcom/tencent/mm/plugin/shootstub/a/g;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field public cke:Lcom/tencent/mm/n/a;

.field private clh:Ljava/util/LinkedList;

.field private etC:Ljava/lang/String;

.field private etD:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/LinkedList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->etC:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->etD:I

    .line 34
    iput-object p3, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->clh:Ljava/util/LinkedList;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    iput-object p2, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->cjh:Lcom/tencent/mm/n/m;

    .line 40
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->clh:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->clh:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 41
    :cond_0
    const-string v0, "MicroMsg.shoot.NetSceneGameGift"

    const-string v1, "userNameList == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, -0x1

    .line 61
    :goto_0
    return v0

    .line 45
    :cond_1
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 46
    new-instance v1, Lcom/tencent/mm/protocal/a/go;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/go;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 47
    new-instance v1, Lcom/tencent/mm/protocal/a/gp;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/gp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 48
    const-string v1, "/cgi-bin/micromsg-bin/gamegift"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 49
    const/16 v1, 0x1bf

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 52
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->cke:Lcom/tencent/mm/n/a;

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/go;

    .line 56
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->etC:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/go;->fyR:Ljava/lang/String;

    .line 57
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->etD:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/go;->fIK:I

    .line 58
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->clh:Ljava/util/LinkedList;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/go;->fBd:Ljava/util/LinkedList;

    .line 59
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->clh:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/go;->fAC:I

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/shootstub/a/g;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 2
    .parameter

    .prologue
    .line 66
    check-cast p1, Lcom/tencent/mm/n/a;

    invoke-virtual {p1}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/go;

    .line 68
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/go;->fyR:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/go;->fyR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/go;->fIK:I

    if-ltz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/go;->fBd:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    const-string v0, "MicroMsg.shoot.NetSceneGameGift"

    const-string v1, "ERR: Security Check Failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/tencent/mm/n/aa;->cmi:Lcom/tencent/mm/n/aa;

    .line 74
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    goto :goto_0
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
    .line 86
    const-string v0, "MicroMsg.shoot.NetSceneGameGift"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd errtype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/g;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 89
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x1bf

    return v0
.end method
