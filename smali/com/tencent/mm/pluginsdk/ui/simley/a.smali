.class public final Lcom/tencent/mm/pluginsdk/ui/simley/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/b;-><init>()V

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/a;->fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    return-void
.end method

.method public static IR()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/a;->fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/b;->a(Lcom/tencent/mm/pluginsdk/ui/simley/b;)Lcom/tencent/mm/sdk/e/al;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->b(Lcom/tencent/mm/sdk/e/al;)V

    .line 121
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/a;->fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/b;->b(Lcom/tencent/mm/pluginsdk/ui/simley/b;)Lcom/tencent/mm/sdk/e/al;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->d(Lcom/tencent/mm/sdk/e/al;)V

    .line 123
    return-void
.end method

.method public static atq()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/a;->fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/b;->a(Lcom/tencent/mm/pluginsdk/ui/simley/b;)Lcom/tencent/mm/sdk/e/al;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->a(Lcom/tencent/mm/sdk/e/al;)V

    .line 114
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/a;->fsB:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/b;->b(Lcom/tencent/mm/pluginsdk/ui/simley/b;)Lcom/tencent/mm/sdk/e/al;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->c(Lcom/tencent/mm/sdk/e/al;)V

    .line 116
    return-void
.end method
