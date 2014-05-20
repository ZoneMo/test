.class final Lcom/tencent/mm/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ap/j;


# instance fields
.field final synthetic chH:Lcom/tencent/mm/model/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/b;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/tencent/mm/model/c;->chH:Lcom/tencent/mm/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ta()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/tencent/mm/model/c;->chH:Lcom/tencent/mm/model/b;

    invoke-static {v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/b;)Lcom/tencent/mm/ap/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/tencent/mm/model/c;->chH:Lcom/tencent/mm/model/b;

    invoke-static {v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/b;)Lcom/tencent/mm/ap/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ap/g;->aDy()V

    .line 473
    :cond_0
    return-void
.end method

.method public final tb()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tencent/mm/model/c;->chH:Lcom/tencent/mm/model/b;

    invoke-static {v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/b;)Lcom/tencent/mm/ap/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/tencent/mm/model/c;->chH:Lcom/tencent/mm/model/b;

    invoke-static {v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/b;)Lcom/tencent/mm/ap/g;

    invoke-static {}, Lcom/tencent/mm/ap/g;->aDz()V

    .line 480
    :cond_0
    return-void
.end method

.method public final tc()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/tencent/mm/model/c;->chH:Lcom/tencent/mm/model/b;

    invoke-static {v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/b;)Lcom/tencent/mm/ap/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/tencent/mm/model/c;->chH:Lcom/tencent/mm/model/b;

    invoke-static {v0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/b;)Lcom/tencent/mm/ap/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ap/g;->tc()V

    .line 488
    :cond_0
    return-void
.end method
