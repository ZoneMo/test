.class final Lcom/tencent/mm/sdk/e/ap;
.super Lcom/tencent/mm/sdk/e/am;
.source "SourceFile"


# instance fields
.field final synthetic gfM:Lcom/tencent/mm/sdk/e/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/e/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/mm/sdk/e/ap;->gfM:Lcom/tencent/mm/sdk/e/ao;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/am;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/tencent/mm/sdk/e/ar;

    check-cast p2, Lcom/tencent/mm/sdk/e/aq;

    iget-object v0, p0, Lcom/tencent/mm/sdk/e/ap;->gfM:Lcom/tencent/mm/sdk/e/ao;

    iget v0, p2, Lcom/tencent/mm/sdk/e/aq;->gfN:I

    iget-object v1, p2, Lcom/tencent/mm/sdk/e/aq;->gfO:Lcom/tencent/mm/sdk/e/ao;

    iget-object v2, p2, Lcom/tencent/mm/sdk/e/aq;->obj:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/mm/sdk/e/ar;->a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V

    return-void
.end method
