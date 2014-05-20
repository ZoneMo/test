.class public final Lcom/tencent/mm/modelsimple/ad;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cmF:Lcom/tencent/mm/network/aj;

.field private crh:I

.field private final cxA:Ljava/lang/String;

.field private final cxB:I

.field private final cxC:I

.field private cxD:Z

.field private cxE:Z

.field private final cxv:Ljava/lang/String;

.field private final cxw:Ljava/lang/String;

.field private final cxx:Ljava/lang/String;

.field private final cxy:Ljava/lang/String;

.field private final cxz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/tencent/mm/modelsimple/ad;->cxD:Z

    .line 59
    iput-boolean v1, p0, Lcom/tencent/mm/modelsimple/ad;->cxE:Z

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelsimple/ad;->crh:I

    .line 90
    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetSceneReg: username = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nickname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetSceneReg: bindUin = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bindEmail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bindMobile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetSceneReg: regMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ticket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput p8, p0, Lcom/tencent/mm/modelsimple/ad;->cxC:I

    .line 96
    new-instance v0, Lcom/tencent/mm/modelsimple/af;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/af;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ax;

    .line 98
    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/ax;->bQ(I)V

    .line 102
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p1, v3, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    .line 103
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    .line 104
    const/4 v3, 0x4

    if-ne p8, v3, :cond_0

    .line 105
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p7, v3, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    .line 109
    const-string v3, "MicroMsg.NetSceneReg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dkreg rand:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqMd5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p3, v3, Lcom/tencent/mm/protocal/a/pb;->fDe:Ljava/lang/String;

    .line 112
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput p4, v3, Lcom/tencent/mm/protocal/a/pb;->fPH:I

    .line 113
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p5, v3, Lcom/tencent/mm/protocal/a/pb;->fRk:Ljava/lang/String;

    .line 114
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p6, v3, Lcom/tencent/mm/protocal/a/pb;->fRl:Ljava/lang/String;

    .line 115
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p7, v3, Lcom/tencent/mm/protocal/a/pb;->fFm:Ljava/lang/String;

    .line 116
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput p8, v3, Lcom/tencent/mm/protocal/a/pb;->fMm:I

    .line 117
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/pb;->fQr:Ljava/lang/String;

    .line 118
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/pb;->fFk:Ljava/lang/String;

    .line 119
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/pb;->fBF:Ljava/lang/String;

    .line 120
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput v1, v3, Lcom/tencent/mm/protocal/a/pb;->fQo:I

    .line 121
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput v1, v3, Lcom/tencent/mm/protocal/a/pb;->fRo:I

    .line 122
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/pb;->fRp:Ljava/lang/String;

    .line 123
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pW()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/pb;->fNA:Ljava/lang/String;

    .line 124
    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "installreferer"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/protocal/a/pb;->fRq:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/ad;->cxv:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/ad;->cxw:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/tencent/mm/modelsimple/ad;->cxx:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lcom/tencent/mm/modelsimple/ad;->cxy:Ljava/lang/String;

    .line 130
    iput-object p6, p0, Lcom/tencent/mm/modelsimple/ad;->cxz:Ljava/lang/String;

    .line 131
    iput p4, p0, Lcom/tencent/mm/modelsimple/ad;->cxB:I

    .line 132
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/mm/modelsimple/ad;->cxA:Ljava/lang/String;

    .line 136
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/tencent/mm/modelsimple/ad;->cxD:Z

    .line 137
    iget-object v0, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/pb;->fBI:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
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
    .line 142
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxD:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxE:Z

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelsimple/ad;->crh:I

    .line 144
    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetSceneReg: username = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nickname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetSceneReg: bindUin = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bindEmail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bindMobile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetSceneReg: regMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ticket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput p8, p0, Lcom/tencent/mm/modelsimple/ad;->cxC:I

    .line 150
    new-instance v0, Lcom/tencent/mm/modelsimple/af;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/af;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ax;

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/ax;->bQ(I)V

    .line 156
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p1, v1, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    .line 157
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    .line 158
    const/4 v1, 0x4

    if-ne p8, v1, :cond_0

    .line 159
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p7, v1, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    .line 163
    const-string v1, "MicroMsg.NetSceneReg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dkreg rand:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqMd5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/pb;->fBL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p3, v1, Lcom/tencent/mm/protocal/a/pb;->fDe:Ljava/lang/String;

    .line 166
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput p4, v1, Lcom/tencent/mm/protocal/a/pb;->fPH:I

    .line 167
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p5, v1, Lcom/tencent/mm/protocal/a/pb;->fRk:Ljava/lang/String;

    .line 168
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p6, v1, Lcom/tencent/mm/protocal/a/pb;->fRl:Ljava/lang/String;

    .line 169
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p7, v1, Lcom/tencent/mm/protocal/a/pb;->fFm:Ljava/lang/String;

    .line 170
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput p8, v1, Lcom/tencent/mm/protocal/a/pb;->fMm:I

    .line 171
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/pb;->fQr:Ljava/lang/String;

    .line 172
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/pb;->fFk:Ljava/lang/String;

    .line 173
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/pb;->fBF:Ljava/lang/String;

    .line 174
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/mm/protocal/a/pb;->fQo:I

    .line 175
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p9, v1, Lcom/tencent/mm/protocal/a/pb;->cqt:Ljava/lang/String;

    .line 176
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p11, v1, Lcom/tencent/mm/protocal/a/pb;->fMl:Ljava/lang/String;

    .line 177
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput-object p10, v1, Lcom/tencent/mm/protocal/a/pb;->fMk:Ljava/lang/String;

    .line 178
    iget-object v2, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    if-eqz p12, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput v1, v2, Lcom/tencent/mm/protocal/a/pb;->fBB:I

    .line 179
    iget-object v2, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    if-eqz p13, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput v1, v2, Lcom/tencent/mm/protocal/a/pb;->fRn:I

    .line 180
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/pb;->fBI:Ljava/lang/String;

    .line 181
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/pb;->fRp:Ljava/lang/String;

    .line 182
    iget-object v1, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pW()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/pb;->fNA:Ljava/lang/String;

    .line 183
    iget-object v0, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "installreferer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/pb;->fRq:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/ad;->cxv:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/ad;->cxw:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lcom/tencent/mm/modelsimple/ad;->cxx:Ljava/lang/String;

    .line 188
    iput-object p5, p0, Lcom/tencent/mm/modelsimple/ad;->cxy:Ljava/lang/String;

    .line 189
    iput-object p6, p0, Lcom/tencent/mm/modelsimple/ad;->cxz:Ljava/lang/String;

    .line 190
    iput p4, p0, Lcom/tencent/mm/modelsimple/ad;->cxB:I

    .line 191
    iput-object p9, p0, Lcom/tencent/mm/modelsimple/ad;->cxA:Ljava/lang/String;

    .line 196
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxD:Z

    .line 198
    return-void

    .line 178
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 179
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 196
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private zL()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ay;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pc;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 403
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 404
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

    .line 405
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 406
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final Cw()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxE:Z

    return v0
.end method

.method public final Cx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ay;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pc;->fRw:Ljava/lang/String;

    return-object v0
.end method

.method public final Cy()Ljava/lang/String;
    .locals 5

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ay;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pc;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 416
    const-string v1, ""

    .line 417
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 418
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

    .line 419
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 420
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    .line 425
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final Cz()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 429
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ay;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pc;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 431
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 432
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

    .line 433
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 434
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 439
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p2, p0, Lcom/tencent/mm/modelsimple/ad;->cjh:Lcom/tencent/mm/n/m;

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/ad;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 222
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
    .line 239
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/ay;

    .line 240
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const/16 v0, -0x12d

    if-ne p3, v0, :cond_1

    .line 241
    const/4 v0, 0x1

    iget-object v2, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/pc;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/pc;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v1, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/pc;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 243
    iget v0, p0, Lcom/tencent/mm/modelsimple/ad;->crh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelsimple/ad;->crh:I

    .line 244
    iget v0, p0, Lcom/tencent/mm/modelsimple/ad;->crh:I

    if-gtz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 340
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelsimple/ad;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/ad;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelsimple/ad;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto :goto_0

    .line 251
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ax;

    .line 260
    const-string v2, "MicroMsg.NetSceneReg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dkreg: pass:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/pc;->fQS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " regtype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v4, v4, Lcom/tencent/mm/protocal/a/pc;->fQN:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget v4, v4, Lcom/tencent/mm/protocal/a/pb;->fMm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v2, v2, Lcom/tencent/mm/protocal/a/pc;->fAX:I

    .line 263
    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/tencent/mm/modelsimple/ad;->cxD:Z

    if-nez v2, :cond_6

    .line 265
    iget-object v2, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v2, v2, Lcom/tencent/mm/protocal/a/pc;->fAX:I

    invoke-static {v2}, Lcom/tencent/mm/model/be;->cs(I)V

    .line 266
    iget-object v2, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget v2, v2, Lcom/tencent/mm/protocal/a/pb;->fMm:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 270
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v0, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pb;->eBo:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 271
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v2, 0x3

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/pc;->fQS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 272
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x13

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/pc;->fQS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 278
    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 279
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x34

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v3, v3, Lcom/tencent/mm/protocal/a/pc;->fQN:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 281
    const-string v0, "MicroMsg.NetSceneReg"

    const-string v2, "dkrsa setautoauthtick:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/pc;->fQy:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v0

    const/16 v2, 0x20

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxv:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxC:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 287
    iget-object v0, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/ad;->cxv:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/pc;->eBo:Ljava/lang/String;

    .line 290
    :cond_4
    iget-object v0, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/ad;->cxy:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/pc;->fRk:Ljava/lang/String;

    .line 291
    iget-object v0, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/mm/protocal/a/pc;->fzr:I

    .line 294
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/ad;->cxA:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/modelsimple/ad;->cxB:I

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/ad;->cxx:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/modelsimple/ad;->cxz:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/protocal/ay;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/pc;->fRu:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/cc;->an(Ljava/lang/String;I)V

    .line 298
    iget v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxB:I

    if-eqz v0, :cond_5

    .line 299
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tencent/mm/modelsimple/ad;->cxB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@qqim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/cc;->an(Ljava/lang/String;I)V

    .line 303
    :cond_5
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/pc;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/pc;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v4, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/pc;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 306
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v3, v3, Lcom/tencent/mm/protocal/a/pc;->fAX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 307
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "system_config_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "default_uin"

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v3, v3, Lcom/tencent/mm/protocal/a/pc;->fAX:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/e;->zz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/model/b;->bZ(Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/model/cb;

    new-instance v3, Lcom/tencent/mm/modelsimple/ae;

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/modelsimple/ae;-><init>(Lcom/tencent/mm/modelsimple/ad;Lcom/tencent/mm/protocal/ay;)V

    invoke-direct {v2, v3}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 324
    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resp return flag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v3, v3, Lcom/tencent/mm/protocal/a/pc;->fRv:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, v1, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget v0, v0, Lcom/tencent/mm/protocal/a/pc;->fRv:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/ad;->cxE:Z

    .line 329
    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 330
    new-instance v1, Lcom/tencent/mm/storage/bj;

    const/16 v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/bj;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/bi;

    invoke-direct {v2, v0}, Lcom/tencent/mm/storage/bi;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 332
    if-nez p2, :cond_7

    if-nez p3, :cond_7

    .line 333
    invoke-direct {p0}, Lcom/tencent/mm/modelsimple/ad;->zL()I

    move-result v0

    .line 334
    if-lez v0, :cond_7

    .line 335
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reg_style_id"

    invoke-direct {p0}, Lcom/tencent/mm/modelsimple/ad;->zL()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto/16 :goto_0

    .line 275
    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/ad;->cxw:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 276
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/ad;->cxw:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->ia(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 325
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method protected final a(Lcom/tencent/mm/n/z;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    return-void
.end method

.method public final dT(I)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ax;

    .line 202
    iget-object v0, v0, Lcom/tencent/mm/protocal/ax;->fyv:Lcom/tencent/mm/protocal/a/pb;

    iput p1, v0, Lcom/tencent/mm/protocal/a/pb;->fRo:I

    .line 203
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 232
    const/16 v0, 0x7e

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x3

    return v0
.end method

.method public final zR()[B
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ay;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pc;->fMn:Lcom/tencent/mm/protocal/a/rv;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final zS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/ad;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ay;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pc;->fMk:Ljava/lang/String;

    return-object v0
.end method
