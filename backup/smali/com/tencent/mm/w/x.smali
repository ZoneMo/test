.class final Lcom/tencent/mm/w/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctZ:Lcom/tencent/mm/w/u;

.field final synthetic cua:Lcom/tencent/mm/w/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/u;Lcom/tencent/mm/w/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/tencent/mm/w/x;->ctZ:Lcom/tencent/mm/w/u;

    iput-object p2, p0, Lcom/tencent/mm/w/x;->cua:Lcom/tencent/mm/w/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/tencent/mm/w/x;->ctZ:Lcom/tencent/mm/w/u;

    invoke-static {v0}, Lcom/tencent/mm/w/u;->i(Lcom/tencent/mm/w/u;)Lcom/tencent/mm/n/n;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/w/x;->cua:Lcom/tencent/mm/w/e;

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/w/x;->cua:Lcom/tencent/mm/w/e;

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->vR()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/w/x;->ctZ:Lcom/tencent/mm/w/u;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/n/n;->a(IILcom/tencent/mm/n/x;)V

    .line 381
    return-void
.end method
