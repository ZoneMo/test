.class public final enum Lcom/tencent/mm/model/bd;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum cik:Lcom/tencent/mm/model/bd;

.field private static final synthetic cil:[Lcom/tencent/mm/model/bd;


# instance fields
.field private final chz:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/tencent/mm/model/bd;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/bd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/mm/model/bd;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/model/bd;->cil:[Lcom/tencent/mm/model/bd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, p1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/bd;->chz:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/model/bd;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/tencent/mm/model/bd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/bd;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/model/bd;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/tencent/mm/model/bd;->cil:[Lcom/tencent/mm/model/bd;

    invoke-virtual {v0}, [Lcom/tencent/mm/model/bd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/model/bd;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p2, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :cond_0
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    or-int/lit8 v0, v0, 0x2

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    or-int/lit8 v0, v0, 0x4

    .line 45
    :cond_2
    const-string v1, "last_bind_info"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/model/bd;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 26
    const-string v0, "MicroMsg.LastLoginInfo"

    const-string v1, "save key : %s value : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/tencent/mm/model/bd;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/model/bd;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
