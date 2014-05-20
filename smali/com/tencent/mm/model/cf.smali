.class final Lcom/tencent/mm/model/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cjn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tencent/mm/model/cf;->cjn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 135
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    if-nez v0, :cond_1

    .line 137
    const-string v0, "MicroMsg.NorMsgSource"

    const-string v1, "parseMsgSource context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 141
    new-instance v1, Lcom/tencent/mm/model/cg;

    iget-object v2, p0, Lcom/tencent/mm/model/cf;->cjn:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/model/cg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v0, v1, Lcom/tencent/mm/model/cg;->type:I

    if-lez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/tencent/mm/model/ce;->vd()Lcom/tencent/mm/sdk/platformtools/bu;

    move-result-object v0

    if-nez v0, :cond_2

    .line 144
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/bu;

    const/4 v2, 0x1

    const-string v3, "MicroMsg.NorMsgSource"

    invoke-direct {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/bu;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/model/ce;->a(Lcom/tencent/mm/sdk/platformtools/bu;)Lcom/tencent/mm/sdk/platformtools/bu;

    .line 146
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/ce;->vd()Lcom/tencent/mm/sdk/platformtools/bu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    goto :goto_0
.end method
