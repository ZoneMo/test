.class final Lcom/tencent/mm/ui/tools/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/f;


# instance fields
.field final synthetic hlX:Lcom/tencent/mm/ui/tools/eo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/eo;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aMK()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVoiceSearchRequired, but not in searching"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->auU()V

    goto :goto_0
.end method

.method public final xw(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSearchTextChange %s, but not in searching"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ep;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/tools/ez;->ig(Ljava/lang/String;)V

    goto :goto_0
.end method
