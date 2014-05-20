.class final Lcom/tencent/mm/storage/l;
.super Lcom/tencent/mm/sdk/e/am;
.source "SourceFile"


# instance fields
.field final synthetic ggH:Lcom/tencent/mm/storage/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/storage/k;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/tencent/mm/storage/l;->ggH:Lcom/tencent/mm/storage/k;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/am;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    check-cast p1, Lcom/tencent/mm/storage/m;

    check-cast p2, Lcom/tencent/mm/storage/i;

    iget-object v0, p0, Lcom/tencent/mm/storage/l;->ggH:Lcom/tencent/mm/storage/k;

    invoke-interface {p1, v0, p2}, Lcom/tencent/mm/storage/m;->a(Lcom/tencent/mm/storage/k;Lcom/tencent/mm/storage/i;)V

    return-void
.end method
