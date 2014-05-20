.class final Lcom/tencent/mm/w/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctr:Lcom/tencent/mm/w/j;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/j;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/tencent/mm/w/k;->ctr:Lcom/tencent/mm/w/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/tencent/mm/w/k;->ctr:Lcom/tencent/mm/w/j;

    iget-object v0, v0, Lcom/tencent/mm/w/j;->cto:Lcom/tencent/mm/w/g;

    iget-object v1, p0, Lcom/tencent/mm/w/k;->ctr:Lcom/tencent/mm/w/j;

    iget-object v1, v1, Lcom/tencent/mm/w/j;->ctp:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/w/g;->a(Lcom/tencent/mm/w/g;Ljava/lang/String;)V

    .line 437
    return-void
.end method
