.class public final Lcom/tencent/mm/model/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cjl:Lcom/tencent/mm/sdk/platformtools/bu;

.field private static cjm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/model/ce;->cjl:Lcom/tencent/mm/sdk/platformtools/bu;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/model/ce;->cjm:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/sdk/platformtools/bu;)Lcom/tencent/mm/sdk/platformtools/bu;
    .locals 0
    .parameter

    .prologue
    .line 16
    sput-object p0, Lcom/tencent/mm/model/ce;->cjl:Lcom/tencent/mm/sdk/platformtools/bu;

    return-object p0
.end method

.method public static checkMsgLevel()Z
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/tencent/mm/model/NorMsgSource;->checkMsgLevel()Z

    move-result v0

    return v0
.end method

.method public static dC(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 127
    const-string v0, "MicroMsg.NorMsgSource"

    const-string v1, "parseMsgSource msgSrc: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/model/cf;

    invoke-direct {v1, p0}, Lcom/tencent/mm/model/cf;-><init>(Ljava/lang/String;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/an;->a(Ljava/lang/Runnable;J)I

    goto :goto_0
.end method

.method static synthetic pn()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/tencent/mm/model/ce;->cjm:Z

    return v0
.end method

.method public static uY()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x46

    .line 118
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 122
    :cond_0
    const-string v1, "MicroMsg.NorMsgSource"

    const-string v2, "getMsg ccr[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<msgsource>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</msgsource>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->bF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static va()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    const-string v3, "<softtype><lctmoc>%d</lctmoc><level>%d</level></softtype>"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/ce;->vb()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {}, Lcom/tencent/mm/model/NorMsgSource;->checkMsgLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static vb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 172
    if-nez v1, :cond_1

    .line 173
    const-string v1, "MicroMsg.NorMsgSource"

    const-string v2, "Failed checking mock location: application context not initialized."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic vc()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/model/ce;->cjm:Z

    return v0
.end method

.method static synthetic vd()Lcom/tencent/mm/sdk/platformtools/bu;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/tencent/mm/model/ce;->cjl:Lcom/tencent/mm/sdk/platformtools/bu;

    return-object v0
.end method
