.class public final Lcom/tencent/mm/plugin/shootstub/a/f;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field public cke:Lcom/tencent/mm/n/a;

.field private etC:Ljava/lang/String;

.field private etE:Ljava/lang/String;

.field private etF:I

.field private etG:I

.field private etH:Ljava/util/LinkedList;

.field private etI:I

.field private etJ:I

.field private etK:I

.field private etL:I

.field private etM:Ljava/util/LinkedList;

.field private etN:I

.field private etO:I

.field private etP:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/LinkedList;IIIILjava/util/LinkedList;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etC:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etF:I

    .line 47
    iput p3, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etG:I

    .line 48
    iput-object p4, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etE:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etH:Ljava/util/LinkedList;

    .line 51
    iput p6, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etI:I

    .line 52
    iput p7, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etJ:I

    .line 53
    iput p8, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etK:I

    .line 54
    iput p9, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etL:I

    .line 55
    iput-object p10, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etM:Ljava/util/LinkedList;

    .line 56
    iput p11, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etN:I

    .line 57
    iput p12, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etO:I

    .line 58
    iput p13, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etP:I

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p2, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->cjh:Lcom/tencent/mm/n/m;

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etH:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "MicroMsg.shoot.NetSceneGameEnd"

    const-string v1, "enemyKilledList == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, -0x1

    .line 98
    :goto_0
    return v0

    .line 70
    :cond_0
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 71
    new-instance v1, Lcom/tencent/mm/protocal/a/gm;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/gm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 72
    new-instance v1, Lcom/tencent/mm/protocal/a/gn;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/gn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 73
    const-string v1, "/cgi-bin/micromsg-bin/gameend"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 74
    const/16 v1, 0x1b9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 75
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 76
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 78
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->cke:Lcom/tencent/mm/n/a;

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/gm;

    .line 81
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etC:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    .line 82
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etF:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIT:I

    .line 83
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etG:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIU:I

    .line 84
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etH:Ljava/util/LinkedList;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    .line 86
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etH:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fAC:I

    .line 88
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etI:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIV:I

    .line 89
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etJ:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIY:I

    .line 90
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etK:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIZ:I

    .line 91
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etL:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fJa:I

    .line 92
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etM:Ljava/util/LinkedList;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIX:Ljava/util/LinkedList;

    .line 93
    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etM:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIW:I

    .line 94
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etN:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fJb:I

    .line 95
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etP:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIR:I

    .line 96
    iget v1, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->etO:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/gm;->fJc:I

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/shootstub/a/f;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 2
    .parameter

    .prologue
    .line 103
    check-cast p1, Lcom/tencent/mm/n/a;

    invoke-virtual {p1}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/gm;

    .line 105
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIT:I

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    const-string v0, "MicroMsg.shoot.NetSceneGameEnd"

    const-string v1, "ERR: Security Check Failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/tencent/mm/n/aa;->cmi:Lcom/tencent/mm/n/aa;

    .line 109
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
    .line 121
    const-string v0, "MicroMsg.shoot.NetSceneGameEnd"

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

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/f;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 124
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x1b9

    return v0
.end method
