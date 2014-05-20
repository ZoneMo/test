.class public final Lcom/tencent/mm/sdk/platformtools/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static context:Landroid/content/Context;

.field private static gdE:Ljava/lang/String;

.field private static gdF:Ljava/lang/String;

.field private static gdG:Landroid/app/Activity;

.field private static pkgName:Ljava/lang/String;

.field private static processName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/al;->context:Landroid/content/Context;

    .line 14
    const-string v0, "com.tencent.mm"

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/al;->gdE:Ljava/lang/String;

    .line 15
    const-string v0, "com.tencent.mm"

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/al;->pkgName:Ljava/lang/String;

    .line 16
    const-string v0, "com.tencent.mm.ui.LauncherUI"

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/al;->gdF:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->pkgName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/al;->processName:Ljava/lang/String;

    return-void
.end method

.method public static azp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->gdF:Ljava/lang/String;

    return-object v0
.end method

.method public static azq()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->gdG:Landroid/app/Activity;

    return-object v0
.end method

.method public static azr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->gdE:Ljava/lang/String;

    return-object v0
.end method

.method public static azs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/sdk/platformtools/al;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static azt()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static azu()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/sdk/platformtools/al;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_tmp_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static azv()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azu()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static azw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/al;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public static r(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-object p0, Lcom/tencent/mm/sdk/platformtools/al;->gdG:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method public static sD(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    sput-object p0, Lcom/tencent/mm/sdk/platformtools/al;->processName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    sput-object p0, Lcom/tencent/mm/sdk/platformtools/al;->context:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/al;->pkgName:Ljava/lang/String;

    .line 43
    const-string v0, "MicroMsg.MMApplicationContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setup application context for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/sdk/platformtools/al;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
