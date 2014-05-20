.class public Lcom/tencent/mm/app/MMApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static bKS:Lcom/tencent/mm/app/MMApplication;

.field public static bKT:J


# instance fields
.field private bKR:Lcom/tencent/mm/compatible/loader/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    .line 118
    if-nez v0, :cond_0

    .line 119
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    :cond_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    const-string v0, "MicroMsg.MMApplication"

    const-string v1, "configuration changed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    iget-object v0, v0, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->cfm:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    sget-object v1, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    iget-object v1, v1, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->cfm:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 107
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/loader/h;->bc()V

    .line 112
    :cond_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 15

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mm/app/MMApplication;->bKT:J

    .line 40
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/al;->setContext(Landroid/content/Context;)V

    .line 41
    sput-object p0, Lcom/tencent/mm/app/MMApplication;->bKS:Lcom/tencent/mm/app/MMApplication;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/storage/h;->ggu:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/storage/h;->ggu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MicroMsg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    .line 48
    const-string v1, "system_config_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/app/MMApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    const-string v0, "default_uin"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/at;->ac(Ljava/lang/String;I)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NowRev.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v4, Lcom/tencent/mm/platformtools/i;

    invoke-direct {v4, v3}, Lcom/tencent/mm/platformtools/i;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v3, "NowRev"

    invoke-virtual {v4, v3}, Lcom/tencent/mm/platformtools/i;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v5, "613228"

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 63
    sub-long v8, v6, v1

    .line 64
    const-wide/16 v1, 0x0

    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 66
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v10, "lib"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/a/c;->b(Ljava/io/File;)Z

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v10, "dex"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/a/c;->b(Ljava/io/File;)Z

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v10, "cache"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/a/c;->b(Ljava/io/File;)Z

    .line 69
    const-string v1, "NowRev"

    invoke-virtual {v4, v1, v5}, Lcom/tencent/mm/platformtools/i;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    .line 73
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {p0, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->r(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 77
    invoke-static {p0}, Lcom/tencent/mm/compatible/loader/g;->a(Landroid/app/Application;)V

    .line 79
    new-instance v10, Lcom/tencent/mm/compatible/loader/j;

    invoke-direct {v10}, Lcom/tencent/mm/compatible/loader/j;-><init>()V

    invoke-virtual {v10, p0, v4}, Lcom/tencent/mm/compatible/loader/j;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/tencent/mm/compatible/loader/h;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    .line 80
    iget-object v10, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    if-eqz v10, :cond_2

    .line 81
    iget-object v10, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    invoke-virtual {v10}, Lcom/tencent/mm/compatible/loader/h;->onCreate()V

    .line 84
    :cond_2
    const-string v10, "MicroMsg.MMApplication"

    const-string v11, "APPonCreate proc:%s time:%d(loader:%d) defuin:%d old:%s new:%s time[%d,%d] path:%s"

    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v4, 0x1

    sget-wide v13, Lcom/tencent/mm/app/MMApplication;->bKT:J

    invoke-static {v13, v14}, Lcom/tencent/mm/sdk/platformtools/cj;->N(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v4

    const/4 v4, 0x2

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->N(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v4

    const/4 v0, 0x4

    aput-object v3, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v12, v0

    const/4 v0, 0x7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v12, v0

    const/16 v0, 0x8

    sget-object v1, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    aput-object v1, v12, v0

    invoke-static {v10, v11, v12}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 127
    invoke-static {}, Lcom/tencent/mm/ui/tools/a/u;->close()V

    .line 128
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/app/MMApplication;->bKR:Lcom/tencent/mm/compatible/loader/h;

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/loader/h;->onTerminate()V

    .line 96
    :cond_0
    return-void
.end method
