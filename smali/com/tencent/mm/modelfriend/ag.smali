.class public final Lcom/tencent/mm/modelfriend/ag;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private final cmF:Lcom/tencent/mm/network/aj;

.field private crh:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cjh:Lcom/tencent/mm/n/m;

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelfriend/ag;->crh:I

    .line 91
    new-instance v0, Lcom/tencent/mm/modelfriend/ah;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/ah;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/s;

    .line 94
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput p2, v1, Lcom/tencent/mm/protocal/a/bq;->fBl:I

    .line 96
    const-string v1, "MicroMsg.NetSceneBindMobileForReg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get mobile:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " verifyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput-object p1, v1, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    .line 98
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput-object p3, v1, Lcom/tencent/mm/protocal/a/bq;->fBx:Ljava/lang/String;

    .line 100
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput p4, v1, Lcom/tencent/mm/protocal/a/bq;->fBy:I

    .line 101
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput-object p5, v1, Lcom/tencent/mm/protocal/a/bq;->fBz:Ljava/lang/String;

    .line 102
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/bq;->fBF:Ljava/lang/String;

    .line 103
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/bq;->fBI:Ljava/lang/String;

    .line 104
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/bq;->fBC:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/bq;->fBD:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->bwC:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/bq;->fBC:Ljava/lang/String;

    .line 106
    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    sget-object v1, Lcom/tencent/mm/protocal/a;->fxq:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/bq;->fBD:Ljava/lang/String;

    .line 108
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelfriend/ag;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/s;

    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput-object p5, v0, Lcom/tencent/mm/protocal/a/bq;->fBA:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const/16 v2, 0xb

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelfriend/ag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/s;

    .line 81
    iget-object v1, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput-object p5, v1, Lcom/tencent/mm/protocal/a/bq;->fBC:Ljava/lang/String;

    .line 82
    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput-object p6, v0, Lcom/tencent/mm/protocal/a/bq;->fBD:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 124
    iput-object p2, p0, Lcom/tencent/mm/modelfriend/ag;->cjh:Lcom/tencent/mm/n/m;

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/s;

    .line 128
    iget-object v2, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 129
    :cond_0
    const-string v2, "MicroMsg.NetSceneBindMobileForReg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doScene getMobile Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 132
    :cond_1
    iget-object v2, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget v2, v2, Lcom/tencent/mm/protocal/a/bq;->fBl:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget v2, v2, Lcom/tencent/mm/protocal/a/bq;->fBl:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v2, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/bq;->fBx:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/bq;->fBx:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 133
    :cond_3
    const-string v2, "MicroMsg.NetSceneBindMobileForReg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doScene getVerifyCode Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelfriend/ag;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 152
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    const-string v0, "MicroMsg.NetSceneBindMobileForReg"

    const-string v1, "dkidc onGYNetEnd  errType:%d errCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    .line 164
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    const/16 v1, -0x12d

    if-ne p3, v1, :cond_1

    .line 165
    iget-object v1, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/br;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v2, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/br;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v5, v1, v2, v0}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 167
    iget v0, p0, Lcom/tencent/mm/modelfriend/ag;->crh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/ag;->crh:I

    .line 168
    iget v0, p0, Lcom/tencent/mm/modelfriend/ag;->crh:I

    if-gtz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 190
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/ag;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/ag;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelfriend/ag;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto :goto_0

    .line 175
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    .line 176
    :cond_2
    const-string v0, "MicroMsg.NetSceneBindMobileForReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGYNetEnd  errType:"

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

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/br;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v2, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/br;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v4, v1, v2, v0}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/n/z;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    return-void
.end method

.method public final di(I)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/s;

    .line 112
    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput p1, v0, Lcom/tencent/mm/protocal/a/bq;->fBG:I

    .line 113
    return-void
.end method

.method public final dj(I)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/s;

    .line 116
    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iput p1, v0, Lcom/tencent/mm/protocal/a/bq;->fBH:I

    .line 117
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x91

    return v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBM:Ljava/lang/String;

    return-object v0
.end method

.method public final vI()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/s;

    iget-object v0, v0, Lcom/tencent/mm/protocal/s;->fxX:Lcom/tencent/mm/protocal/a/bq;

    iget v0, v0, Lcom/tencent/mm/protocal/a/bq;->fBl:I

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x3

    return v0
.end method

.method public final xn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBA:Ljava/lang/String;

    return-object v0
.end method

.method public final zA()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget v0, v0, Lcom/tencent/mm/protocal/a/br;->fBK:I

    return v0
.end method

.method public final zB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBL:Ljava/lang/String;

    return-object v0
.end method

.method public final zC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->cgp:Ljava/lang/String;

    return-object v0
.end method

.method public final zD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBU:Ljava/lang/String;

    return-object v0
.end method

.method public final zE()I
    .locals 5

    .prologue
    const/4 v1, 0x3

    .line 262
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 264
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 265
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 266
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 267
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final zF()I
    .locals 5

    .prologue
    const/16 v1, 0x1e

    .line 276
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 278
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 279
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 280
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 281
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final zG()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 292
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 293
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 294
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 295
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final zH()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 306
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 307
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 308
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 309
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 314
    :goto_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final zI()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 333
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 334
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 335
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 336
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 341
    :goto_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final zJ()Ljava/lang/String;
    .locals 5

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 346
    const/4 v1, 0x0

    .line 347
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 348
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 349
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    .line 350
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    .line 355
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final zK()Ljava/lang/String;
    .locals 5

    .prologue
    .line 358
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ag;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/br;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 359
    const/4 v1, 0x0

    .line 360
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 361
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/wb;

    .line 362
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 363
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    .line 368
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
