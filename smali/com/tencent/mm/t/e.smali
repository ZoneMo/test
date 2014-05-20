.class final Lcom/tencent/mm/t/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic csp:Lcom/tencent/mm/model/au;

.field final synthetic csq:Ljava/lang/String;

.field final synthetic csr:Z

.field final synthetic css:Lcom/tencent/mm/model/au;

.field final synthetic cst:Ljava/lang/String;

.field final synthetic csu:Lcom/tencent/mm/t/d;


# direct methods
.method constructor <init>(Lcom/tencent/mm/t/d;Lcom/tencent/mm/model/au;Ljava/lang/String;ZLcom/tencent/mm/model/au;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tencent/mm/t/e;->csu:Lcom/tencent/mm/t/d;

    iput-object p2, p0, Lcom/tencent/mm/t/e;->csp:Lcom/tencent/mm/model/au;

    iput-object p3, p0, Lcom/tencent/mm/t/e;->csq:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/mm/t/e;->csr:Z

    iput-object p5, p0, Lcom/tencent/mm/t/e;->css:Lcom/tencent/mm/model/au;

    iput-object p6, p0, Lcom/tencent/mm/t/e;->cst:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/mm/t/e;->csp:Lcom/tencent/mm/model/au;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/t/e;->csp:Lcom/tencent/mm/model/au;

    iget-object v1, p0, Lcom/tencent/mm/t/e;->csq:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/mm/t/e;->csr:Z

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/model/au;->g(Ljava/lang/String;Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/t/e;->css:Lcom/tencent/mm/model/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/t/e;->cst:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/t/e;->css:Lcom/tencent/mm/model/au;

    iget-object v1, p0, Lcom/tencent/mm/t/e;->cst:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/mm/t/e;->csr:Z

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/model/au;->g(Ljava/lang/String;Z)V

    .line 170
    :cond_1
    return-void
.end method
