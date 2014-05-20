.class final Lcom/tencent/mm/plugin/search/model/r;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehg:Ljava/lang/String;

.field private ehj:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/r;->ehj:Z

    .line 458
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/r;->ehg:Ljava/lang/String;

    .line 459
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/r;->ehg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iput-boolean v5, p0, Lcom/tencent/mm/plugin/search/model/r;->ehj:Z

    .line 497
    :goto_0
    return v5

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/r;->ehg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->a([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->d(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    const v1, 0x1000a

    new-instance v2, Lcom/tencent/mm/plugin/search/model/p;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/r;->ehg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/plugin/search/model/p;-><init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    goto :goto_0

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/r;->ehg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/r;->ehg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->mH(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 483
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 488
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a([ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 493
    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/r;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v3}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 495
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarkContactDirty(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/r;->ehg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/r;->ehj:Z

    if-eqz v0, :cond_0

    const-string v0, " [cached]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
