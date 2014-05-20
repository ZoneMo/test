.class public final Lcom/tencent/mm/plugin/safedevice/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Zs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/protocal/a/rt;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const-string v0, "MicroMsg.SafeDeviceStorageLogic"

    const-string v1, "null resp"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    instance-of v0, p0, Lcom/tencent/mm/protocal/a/br;

    if-eqz v0, :cond_2

    .line 62
    check-cast p0, Lcom/tencent/mm/protocal/a/br;

    .line 63
    if-eqz p0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/br;->fBT:Lcom/tencent/mm/protocal/a/rz;

    invoke-static {v0}, Lcom/tencent/mm/plugin/safedevice/a/e;->a(Lcom/tencent/mm/protocal/a/rz;)V

    goto :goto_0

    .line 67
    :cond_2
    instance-of v0, p0, Lcom/tencent/mm/protocal/a/bt;

    if-eqz v0, :cond_3

    .line 68
    check-cast p0, Lcom/tencent/mm/protocal/a/bt;

    .line 69
    if-eqz p0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bt;->fBT:Lcom/tencent/mm/protocal/a/rz;

    invoke-static {v0}, Lcom/tencent/mm/plugin/safedevice/a/e;->a(Lcom/tencent/mm/protocal/a/rz;)V

    goto :goto_0

    .line 73
    :cond_3
    instance-of v0, p0, Lcom/tencent/mm/protocal/a/kb;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Lcom/tencent/mm/protocal/a/kb;

    .line 75
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/kb;->fLW:Lcom/tencent/mm/protocal/a/yu;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/kb;->fLW:Lcom/tencent/mm/protocal/a/yu;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/yu;->fBT:Lcom/tencent/mm/protocal/a/rz;

    invoke-static {v0}, Lcom/tencent/mm/plugin/safedevice/a/e;->a(Lcom/tencent/mm/protocal/a/rz;)V

    goto :goto_0
.end method

.method private static a(Lcom/tencent/mm/protocal/a/rz;)V
    .locals 4
    .parameter

    .prologue
    .line 82
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rz;->fAD:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rz;->fAD:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/plugin/safedevice/a/f;->Zu()Lcom/tencent/mm/plugin/safedevice/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/safedevice/a/d;->Zr()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ry;

    invoke-static {}, Lcom/tencent/mm/plugin/safedevice/a/f;->Zu()Lcom/tencent/mm/plugin/safedevice/a/d;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/safedevice/a/c;

    invoke-direct {v3, v0}, Lcom/tencent/mm/plugin/safedevice/a/c;-><init>(Lcom/tencent/mm/protocal/a/ry;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/safedevice/a/d;->a(Lcom/tencent/mm/plugin/safedevice/a/c;)Z

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public static aG(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bwC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/tencent/mm/n;->bwC:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/v;->tm()I

    move-result v0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    or-int/lit16 v0, v0, 0x4000

    .line 41
    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    new-instance v1, Lcom/tencent/mm/protocal/a/gf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/gf;-><init>()V

    .line 45
    const/16 v0, 0x1c

    iput v0, v1, Lcom/tencent/mm/protocal/a/gf;->fIH:I

    .line 46
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput v0, v1, Lcom/tencent/mm/protocal/a/gf;->fII:I

    .line 48
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v1}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 49
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/d;->nE()V

    goto :goto_0

    .line 38
    :cond_2
    and-int/lit16 v0, v0, -0x4001

    goto :goto_1

    .line 46
    :cond_3
    const/4 v0, 0x2

    goto :goto_2
.end method
