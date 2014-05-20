.class final Lcom/tencent/mm/model/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cjd:Lcom/tencent/mm/model/ca;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v0}, Lcom/tencent/mm/model/ca;->uX()Z

    move-result v0

    if-nez v0, :cond_5

    .line 340
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/o;->aAI()Z

    .line 343
    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v0}, Lcom/tencent/mm/model/ca;->uX()Z

    move-result v0

    if-nez v0, :cond_5

    .line 344
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/bv;->uT()V

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v0}, Lcom/tencent/mm/model/ca;->uX()Z

    move-result v0

    if-nez v0, :cond_5

    .line 348
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/bv;->uU()V

    .line 351
    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v0}, Lcom/tencent/mm/model/ca;->uX()Z

    move-result v0

    if-nez v0, :cond_5

    .line 352
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/bv;->uS()V

    .line 355
    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v0}, Lcom/tencent/mm/model/ca;->uX()Z

    move-result v0

    if-nez v0, :cond_5

    .line 356
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/bv;->uV()V

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v0, :cond_6

    .line 361
    new-instance v0, Lcom/tencent/mm/model/bz;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bz;-><init>(Lcom/tencent/mm/model/by;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 370
    :cond_6
    return-void
.end method
