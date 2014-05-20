.class public final Lcom/tencent/mm/p/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static c(Lcom/tencent/mm/p/a;)V
    .locals 4
    .parameter

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    new-instance v0, Lcom/tencent/mm/protocal/a/nv;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/nv;-><init>()V

    .line 85
    iget v1, p0, Lcom/tencent/mm/p/a;->field_brandFlag:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/nv;->cqC:I

    .line 86
    iget-object v1, p0, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nv;->eBo:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x2f

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 88
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public static eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;
    .locals 5
    .parameter

    .prologue
    .line 35
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/p/k;->eG(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/tencent/mm/p/a;->field_updateTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 37
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lcom/tencent/mm/p/q;

    invoke-direct {v1}, Lcom/tencent/mm/p/q;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/a;->a(Lcom/tencent/mm/p/d;)Lcom/tencent/mm/p/c;

    .line 54
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eJ(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-static {p0}, Lcom/tencent/mm/model/w;->da(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v2}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/tencent/mm/p/f;->cnm:Z

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "MicroMsg.BizInfoStorageLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bizinfo name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " canReceiveSpeexVoice"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xH()Lcom/tencent/mm/p/a;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    return-object v0
.end method

.method public static xI()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xJ()Z
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xK()Z
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xL()Ljava/util/List;
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static xM()Z
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/tencent/mm/p/p;->xL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xN()Ljava/util/List;
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static xO()Z
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/tencent/mm/p/p;->xN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xP()Ljava/util/List;
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static xQ()Z
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/tencent/mm/p/p;->xP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xR()Ljava/util/List;
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static xS()Z
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/tencent/mm/p/p;->xR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xT()Ljava/util/List;
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static xU()Z
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/tencent/mm/p/p;->xT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xV()Ljava/util/List;
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static xW()Z
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/tencent/mm/p/p;->xV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xX()Ljava/util/List;
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static xY()Z
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/tencent/mm/p/p;->xX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
