.class final Lcom/tencent/mm/modelfriend/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic cqe:Lcom/tencent/mm/modelfriend/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/e;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/f;->cqe:Lcom/tencent/mm/modelfriend/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/f;->cqe:Lcom/tencent/mm/modelfriend/e;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/e;->c(Lcom/tencent/mm/modelfriend/e;)Lcom/tencent/mm/modelfriend/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/f;->cqe:Lcom/tencent/mm/modelfriend/e;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/e;->a(Lcom/tencent/mm/modelfriend/e;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/f;->cqe:Lcom/tencent/mm/modelfriend/e;

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/e;->b(Lcom/tencent/mm/modelfriend/e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/modelfriend/g;->a(Ljava/util/List;Ljava/util/List;)V

    .line 331
    return-void
.end method
