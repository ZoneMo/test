.class public Lcom/tencent/mm/model/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cjD:Lcom/tencent/mm/model/cm;


# instance fields
.field private final chz:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/cm;->chz:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/model/cm;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, Lcom/tencent/mm/model/cm;->chz:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static vs()Lcom/tencent/mm/model/cm;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/tencent/mm/model/cm;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/mm/model/cm;->cjD:Lcom/tencent/mm/model/cm;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/tencent/mm/model/cm;

    invoke-direct {v0}, Lcom/tencent/mm/model/cm;-><init>()V

    sput-object v0, Lcom/tencent/mm/model/cm;->cjD:Lcom/tencent/mm/model/cm;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lcom/tencent/mm/model/cm;->cjD:Lcom/tencent/mm/model/cm;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getId()I
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/model/cm;->chz:Landroid/content/SharedPreferences;

    const-string v1, "MicroMsg.RegStyleStoragestyle_id"

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final vt()I
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/mm/model/cm;->chz:Landroid/content/SharedPreferences;

    const-string v1, "MicroMsg.RegStyleStoragenew_flow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final vu()I
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/model/cm;->chz:Landroid/content/SharedPreferences;

    const-string v1, "MicroMsg.RegStyleStoragehas_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final vv()I
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/mm/model/cm;->chz:Landroid/content/SharedPreferences;

    const-string v1, "MicroMsg.RegStyleStoragehas_AVATAR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
