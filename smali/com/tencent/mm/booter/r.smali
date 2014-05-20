.class final Lcom/tencent/mm/booter/r;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic bZX:Lcom/tencent/mm/booter/k;

.field final synthetic bZY:Ljava/lang/String;

.field final synthetic bZZ:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/k;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/tencent/mm/booter/r;->bZX:Lcom/tencent/mm/booter/k;

    iput-object p2, p0, Lcom/tencent/mm/booter/r;->bZY:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/mm/booter/r;->bZZ:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 537
    iget-object v0, p0, Lcom/tencent/mm/booter/r;->bZX:Lcom/tencent/mm/booter/k;

    iget-object v1, p0, Lcom/tencent/mm/booter/r;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v1}, Lcom/tencent/mm/booter/k;->f(Lcom/tencent/mm/booter/k;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/booter/r;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v2}, Lcom/tencent/mm/booter/k;->g(Lcom/tencent/mm/booter/k;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/booter/r;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v3}, Lcom/tencent/mm/booter/k;->h(Lcom/tencent/mm/booter/k;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/booter/r;->bZY:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/tencent/mm/booter/r;->bZZ:Z

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 540
    return-void
.end method
