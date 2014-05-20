.class final Lcom/tencent/mm/modelvoice/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cBL:Lcom/tencent/mm/modelvoice/c;

.field final synthetic cBM:Lcom/tencent/mm/modelvoice/p;

.field final synthetic ctu:Lcom/tencent/mm/storage/ak;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/p;Lcom/tencent/mm/modelvoice/c;Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/mm/modelvoice/q;->cBM:Lcom/tencent/mm/modelvoice/p;

    iput-object p2, p0, Lcom/tencent/mm/modelvoice/q;->cBL:Lcom/tencent/mm/modelvoice/c;

    iput-object p3, p0, Lcom/tencent/mm/modelvoice/q;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/q;->cBL:Lcom/tencent/mm/modelvoice/c;

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/q;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-interface {v0, v1}, Lcom/tencent/mm/modelvoice/c;->i(Lcom/tencent/mm/storage/ak;)V

    .line 81
    return-void
.end method
