.class public final Lcom/tencent/mm/booter/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static caG:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/mm/booter/al;->caG:J

    return-void
.end method

.method public static J(Z)V
    .locals 2
    .parameter

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 34
    const-string v0, "mm_proc_startup"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/booter/al;->j(Ljava/lang/String;I)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v0, "push_proc_startup"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/booter/al;->j(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static aY(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    const-string v1, "startup_info"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v2, Lcom/tencent/mm/booter/ao;

    invoke-direct {v2}, Lcom/tencent/mm/booter/ao;-><init>()V

    .line 82
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/booter/ao;->ba(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const/4 v3, 0x2

    iput v3, v2, Lcom/tencent/mm/booter/ao;->caJ:I

    .line 84
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Lcom/tencent/mm/booter/ao;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 87
    :cond_2
    invoke-static {v1}, Lcom/tencent/mm/booter/al;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "MicroMsg.ProcessReport"

    const-string v3, "uerExit new info %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "startup_info"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic aZ(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "startup_info"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-gt v0, v8, :cond_1

    :cond_0
    const-string v0, "MicroMsg.ProcessReport"

    const-string v1, "nothing to reprot"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move v0, v1

    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    const-string v4, "MicroMsg.ProcessReport"

    const-string v5, "reprot %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v1

    aget-object v7, v3, v0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v5, 0x29ab

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "startup_info"

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string v2, ""

    .line 137
    const/4 v0, 0x1

    .line 138
    array-length v5, p0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, p0, v3

    .line 139
    if-eqz v0, :cond_0

    move v0, v1

    .line 144
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_0

    .line 142
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 146
    :cond_1
    return-object v2
.end method

.method private static j(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    const-string v0, "startup_info"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 46
    new-instance v2, Lcom/tencent/mm/booter/ao;

    invoke-direct {v2}, Lcom/tencent/mm/booter/ao;-><init>()V

    .line 47
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/booter/ao;->ba(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/tencent/mm/booter/ao;->caM:I

    .line 49
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Lcom/tencent/mm/booter/ao;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 53
    :cond_0
    new-instance v2, Lcom/tencent/mm/booter/ao;

    invoke-direct {v2}, Lcom/tencent/mm/booter/ao;-><init>()V

    .line 54
    iput p1, v2, Lcom/tencent/mm/booter/ao;->caI:I

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/tencent/mm/booter/ao;->caK:I

    .line 56
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Lcom/tencent/mm/booter/ao;->caL:I

    .line 58
    invoke-static {v0}, Lcom/tencent/mm/booter/al;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v2}, Lcom/tencent/mm/booter/ao;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_1
    const-string v2, "MicroMsg.ProcessReport"

    const-string v3, "startProc new info %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "startup_info"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void
.end method

.method public static oR()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "mm_proc_startup"

    invoke-static {v0}, Lcom/tencent/mm/booter/al;->aY(Ljava/lang/String;)V

    .line 69
    const-string v0, "push_proc_startup"

    invoke-static {v0}, Lcom/tencent/mm/booter/al;->aY(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static oS()V
    .locals 5

    .prologue
    const/16 v4, 0x25

    .line 94
    sget-wide v0, Lcom/tencent/mm/booter/al;->caG:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/tencent/mm/booter/al;->caG:J

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->O(J)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/storage/d;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    sget v1, Lcom/tencent/mm/protocal/a;->fxr:I

    if-eq v1, v0, :cond_1

    .line 100
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v1

    sget v2, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/tencent/mm/storage/d;->set(ILjava/lang/Object;)V

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/mm/booter/am;

    invoke-direct {v2, v0}, Lcom/tencent/mm/booter/am;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FE()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mm/booter/al;->caG:J

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/booter/an;

    invoke-direct {v1}, Lcom/tencent/mm/booter/an;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
