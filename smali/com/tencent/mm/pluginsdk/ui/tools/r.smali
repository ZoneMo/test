.class public final Lcom/tencent/mm/pluginsdk/ui/tools/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fuz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mm/pluginsdk/ui/tools/r;->fuz:I

    return-void
.end method

.method public static final bc(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 38
    sget v0, Lcom/tencent/mm/pluginsdk/ui/tools/r;->fuz:I

    if-lez v0, :cond_0

    .line 39
    sget v0, Lcom/tencent/mm/pluginsdk/ui/tools/r;->fuz:I

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azv()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keybord_height_prefs"

    const/16 v2, 0x2b2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azv()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keybord_height_prefs"

    const/16 v2, 0xe6

    invoke-static {p0, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/mm/pluginsdk/ui/tools/r;->fuz:I

    goto :goto_0
.end method

.method private static bd(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x140

    invoke-static {p0, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private static be(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xe6

    invoke-static {p0, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private static final bf(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 93
    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final h(Landroid/content/Context;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    sget v0, Lcom/tencent/mm/pluginsdk/ui/tools/r;->fuz:I

    if-ne v0, p1, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bd(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 55
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bd(Landroid/content/Context;)I

    move-result p1

    .line 58
    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->be(Landroid/content/Context;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 59
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->be(Landroid/content/Context;)I

    move-result p1

    .line 62
    :cond_3
    sput p1, Lcom/tencent/mm/pluginsdk/ui/tools/r;->fuz:I

    .line 64
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azv()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keybord_height_prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method public static final kT(I)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    const/16 v0, 0x140

    if-gt p0, v0, :cond_0

    const/16 v0, 0xe6

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
