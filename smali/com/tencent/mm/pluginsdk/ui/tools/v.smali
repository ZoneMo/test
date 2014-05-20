.class final Lcom/tencent/mm/pluginsdk/ui/tools/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/bh;


# instance fields
.field final synthetic fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/tools/u;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z[Ljava/lang/String;J)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    const-string v0, "MicroMsg.VoiceSearchViewHelper"

    const-string v1, "on voice search return, success %B, voice id %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->b(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/pluginsdk/ui/tools/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->b(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/pluginsdk/ui/tools/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->f(Lcom/tencent/mm/pluginsdk/ui/tools/u;)I

    move-result v5

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/ui/tools/w;->a(Z[Ljava/lang/String;JI)V

    .line 73
    :cond_0
    return-void
.end method

.method public final arT()V
    .locals 5

    .prologue
    .line 47
    const-string v0, "MicroMsg.VoiceSearchViewHelper"

    const-string v1, "on voice search start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28d5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v4}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->a(Lcom/tencent/mm/pluginsdk/ui/tools/u;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->b(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/pluginsdk/ui/tools/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->b(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/pluginsdk/ui/tools/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/w;->abb()V

    .line 52
    :cond_0
    return-void
.end method

.method public final arU()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 56
    const-string v0, "MicroMsg.VoiceSearchViewHelper"

    const-string v1, "on voice search cancel"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28d5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v4}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->a(Lcom/tencent/mm/pluginsdk/ui/tools/u;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->c(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->d(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->ek(Z)V

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->e(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->el(Z)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->b(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/pluginsdk/ui/tools/w;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/v;->fuH:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->b(Lcom/tencent/mm/pluginsdk/ui/tools/u;)Lcom/tencent/mm/pluginsdk/ui/tools/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/w;->abc()V

    .line 65
    :cond_1
    return-void
.end method
