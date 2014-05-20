.class public final Lcom/tencent/mm/plugin/wallet/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/f;


# static fields
.field private static cHS:Lcom/tencent/mm/pluginsdk/e;

.field private static cHT:Lcom/tencent/mm/pluginsdk/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    sget-object v1, Lcom/tencent/mm/plugin/wallet/b;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v1, v0, p0}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public static aM(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    sget-object v1, Lcom/tencent/mm/plugin/wallet/b;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v1, v0, p0}, Lcom/tencent/mm/pluginsdk/e;->g(Landroid/content/Intent;Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static amV()V
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b;->cHT:Lcom/tencent/mm/pluginsdk/d;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/d;->d(IZ)Lcom/tencent/mm/n/x;

    .line 46
    return-void
.end method

.method public static h(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcom/tencent/mm/plugin/wallet/b;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/e;->h(Landroid/content/Intent;Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/d;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-object p1, Lcom/tencent/mm/plugin/wallet/b;->cHT:Lcom/tencent/mm/pluginsdk/d;

    .line 26
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/e;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    sput-object p1, Lcom/tencent/mm/plugin/wallet/b;->cHS:Lcom/tencent/mm/pluginsdk/e;

    .line 21
    return-void
.end method
