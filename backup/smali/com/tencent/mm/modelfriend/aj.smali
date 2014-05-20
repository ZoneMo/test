.class public final Lcom/tencent/mm/modelfriend/aj;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cmF:Lcom/tencent/mm/network/aj;

.field private crh:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelfriend/aj;->crh:I

    .line 39
    new-instance v0, Lcom/tencent/mm/modelfriend/ak;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/ak;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cmF:Lcom/tencent/mm/network/aj;

    .line 40
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/aa;

    .line 41
    iget-object v1, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    iput p1, v1, Lcom/tencent/mm/protocal/a/ep;->fBl:I

    .line 42
    iget-object v1, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    iput-object p2, v1, Lcom/tencent/mm/protocal/a/ep;->fBk:Ljava/lang/String;

    .line 43
    iget-object v1, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ep;->fBF:Ljava/lang/String;

    .line 44
    iget-object v1, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ep;->fBL:Ljava/lang/String;

    .line 45
    iget-object v1, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    iput-object p4, v1, Lcom/tencent/mm/protocal/a/ep;->fFj:Ljava/lang/String;

    .line 46
    iget-object v1, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ep;->fBI:Ljava/lang/String;

    .line 47
    iget-object v1, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ep;->fFk:Ljava/lang/String;

    .line 48
    iget-object v0, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/a/ep;->fFl:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/tencent/mm/modelfriend/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/mm/modelfriend/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p2, p0, Lcom/tencent/mm/modelfriend/aj;->cjh:Lcom/tencent/mm/n/m;

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelfriend/aj;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 107
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

    .line 69
    const-string v0, "MicroMsg.NetSceneEmailReg"

    const-string v1, "onGYNetEnd  errType:%d errCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-interface {p5}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ab;

    .line 71
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    const/16 v1, -0x12d

    if-ne p3, v1, :cond_1

    .line 72
    iget-object v1, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/eq;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v2, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/eq;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/eq;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v5, v1, v2, v0}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 74
    iget v0, p0, Lcom/tencent/mm/modelfriend/aj;->crh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/aj;->crh:I

    .line 75
    iget v0, p0, Lcom/tencent/mm/modelfriend/aj;->crh:I

    if-gtz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cjh:Lcom/tencent/mm/n/m;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 98
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/aj;->wM()Lcom/tencent/mm/network/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/aj;->cjh:Lcom/tencent/mm/n/m;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelfriend/aj;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I

    goto :goto_0

    .line 82
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    .line 83
    :cond_2
    const-string v0, "MicroMsg.NetSceneEmailReg"

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

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/eq;->fBO:Lcom/tencent/mm/protocal/a/by;

    iget-object v2, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/eq;->fBP:Lcom/tencent/mm/protocal/a/os;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/eq;->fBN:Lcom/tencent/mm/protocal/a/ls;

    invoke-static {v4, v1, v2, v0}, Lcom/tencent/mm/model/be;->a(ZLcom/tencent/mm/protocal/a/by;Lcom/tencent/mm/protocal/a/os;Lcom/tencent/mm/protocal/a/ls;)V

    .line 89
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/aj;->zL()I

    move-result v0

    .line 91
    if-lez v0, :cond_4

    .line 92
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reg_style_id"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/aj;->zL()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x1e1

    return v0
.end method

.method public final vI()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/aa;

    iget-object v0, v0, Lcom/tencent/mm/protocal/aa;->fyh:Lcom/tencent/mm/protocal/a/ep;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ep;->fBl:I

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x5

    return v0
.end method

.method public final zC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ab;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/eq;->fFm:Ljava/lang/String;

    return-object v0
.end method

.method public final zL()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/aj;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ab;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/eq;->fBW:Lcom/tencent/mm/protocal/a/uf;

    .line 114
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/uf;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 115
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

    .line 116
    iget v3, v0, Lcom/tencent/mm/protocal/a/wb;->fAs:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 117
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/wb;->fXv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
