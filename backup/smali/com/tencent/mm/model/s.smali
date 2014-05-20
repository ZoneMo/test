.class public Lcom/tencent/mm/model/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static chK:Lcom/tencent/mm/model/s;


# instance fields
.field private chL:Lcom/tencent/mm/model/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static ck(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChattingBannerHelper_user_status_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->Bj()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static te()Lcom/tencent/mm/model/s;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/tencent/mm/model/s;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/tencent/mm/model/s;->chK:Lcom/tencent/mm/model/s;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/tencent/mm/model/s;

    invoke-direct {v0}, Lcom/tencent/mm/model/s;-><init>()V

    sput-object v0, Lcom/tencent/mm/model/s;->chK:Lcom/tencent/mm/model/s;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sget-object v0, Lcom/tencent/mm/model/s;->chK:Lcom/tencent/mm/model/s;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/model/t;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/mm/model/s;->chL:Lcom/tencent/mm/model/t;

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChattingBannerHelper_user_status_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/model/s;->chL:Lcom/tencent/mm/model/t;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/model/s;->chL:Lcom/tencent/mm/model/t;

    invoke-interface {v0}, Lcom/tencent/mm/model/t;->tf()V

    .line 47
    :cond_0
    return-void
.end method

.method public final cl(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/b;->bY(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChattingBannerHelper_user_status_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/model/s;->chL:Lcom/tencent/mm/model/t;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/model/s;->chL:Lcom/tencent/mm/model/t;

    invoke-interface {v0}, Lcom/tencent/mm/model/t;->tf()V

    .line 55
    :cond_0
    return-void
.end method
