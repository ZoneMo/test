.class public final Lcom/tencent/mm/ui/tools/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private hpY:Lcom/tencent/mm/ui/tools/a/e;

.field private hqB:Z

.field private hqm:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/w;->context:Landroid/content/Context;

    .line 142
    return-void
.end method


# virtual methods
.method public final aOL()Lcom/tencent/mm/ui/tools/a/u;
    .locals 13

    .prologue
    .line 177
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/w;->context:Landroid/content/Context;

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/w;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/tencent/mm/ui/tools/a/t;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/tools/a/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/w;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/w;->hqm:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/tencent/mm/ui/tools/a/aa;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/a/aa;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/w;->hqm:Ljava/util/concurrent/ExecutorService;

    .line 187
    :cond_1
    new-instance v5, Lcom/tencent/mm/ui/tools/a/af;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/w;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    invoke-direct {v5, v0}, Lcom/tencent/mm/ui/tools/a/af;-><init>(Lcom/tencent/mm/ui/tools/a/e;)V

    .line 189
    new-instance v0, Lcom/tencent/mm/ui/tools/a/n;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/a/w;->hqm:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/tencent/mm/ui/tools/a/u;->hqC:Landroid/os/Handler;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/a/w;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/a/n;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;)V

    .line 190
    new-instance v6, Lcom/tencent/mm/ui/tools/a/u;

    iget-object v9, p0, Lcom/tencent/mm/ui/tools/a/w;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    iget-boolean v11, p0, Lcom/tencent/mm/ui/tools/a/w;->hqB:Z

    const/4 v12, 0x0

    move-object v7, v1

    move-object v8, v0

    move-object v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/tencent/mm/ui/tools/a/u;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;ZB)V

    return-object v6
.end method
