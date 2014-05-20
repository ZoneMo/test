.class abstract Lcom/tencent/mm/plugin/d/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/d/c/f;Lcom/tencent/mm/plugin/d/a/f;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 96
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/d/c/f;->Zg()Lcom/tencent/mm/plugin/d/a/g;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/mm/plugin/d/c/e;->a(Lcom/tencent/mm/plugin/d/a/g;Lcom/tencent/mm/plugin/d/a/f;)Lcom/tencent/mm/plugin/d/a/f;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/plugin/d/a/f;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/a/f;-><init>()V

    iget v2, p1, Lcom/tencent/mm/plugin/d/a/f;->fNl:I

    iput v2, v0, Lcom/tencent/mm/plugin/d/a/f;->fNl:I

    iget v2, p1, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    iput v2, v0, Lcom/tencent/mm/plugin/d/a/f;->fDQ:I

    iput v3, v0, Lcom/tencent/mm/plugin/d/a/f;->fDR:I

    iget-object v2, p1, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    iput v3, v0, Lcom/tencent/mm/plugin/d/a/f;->fAC:I

    iget-object v2, v1, Lcom/tencent/mm/plugin/d/a/g;->dZk:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/tencent/mm/plugin/d/a/g;->dZk:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/plugin/d/a/g;->dZc:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/d/c/f;->a(Lcom/tencent/mm/plugin/d/a/f;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract Zg()Lcom/tencent/mm/plugin/d/a/g;
.end method

.method protected abstract a(Lcom/tencent/mm/plugin/d/a/f;)Z
.end method
