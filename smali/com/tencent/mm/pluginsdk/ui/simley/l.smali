.class final Lcom/tencent/mm/pluginsdk/ui/simley/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ftL:Z

.field final synthetic ftM:Lcom/tencent/mm/pluginsdk/ui/simley/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/simley/k;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/l;->ftM:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    iput-boolean p2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/l;->ftL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1081
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "post deal~"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/l;->ftL:Z

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/l;->ftM:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fsY:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Lcom/tencent/mm/pluginsdk/ui/simley/f;)V

    .line 1087
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/l;->ftM:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Lcom/tencent/mm/pluginsdk/ui/simley/f;)V

    goto :goto_0
.end method
