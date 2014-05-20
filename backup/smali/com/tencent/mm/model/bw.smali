.class final Lcom/tencent/mm/model/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cjc:Ljava/lang/String;

.field final synthetic cjd:Lcom/tencent/mm/model/ca;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tencent/mm/model/ca;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tencent/mm/model/bw;->cjc:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/model/bw;->cjd:Lcom/tencent/mm/model/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/bw;->cjc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vd(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/tencent/mm/model/bw;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/model/bw;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v1}, Lcom/tencent/mm/model/ca;->uX()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    :cond_0
    new-instance v1, Lcom/tencent/mm/storage/ak;

    invoke-direct {v1}, Lcom/tencent/mm/storage/ak;-><init>()V

    .line 247
    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ak;->convertFrom(Landroid/database/Cursor;)V

    .line 248
    invoke-static {v1}, Lcom/tencent/mm/model/bv;->f(Lcom/tencent/mm/storage/ak;)V

    .line 249
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 252
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 253
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/bw;->cjc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vb(Ljava/lang/String;)I

    .line 254
    new-instance v0, Lcom/tencent/mm/model/bx;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/bx;-><init>(Lcom/tencent/mm/model/bw;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method
