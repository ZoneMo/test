.class final Lcom/tencent/mm/plugin/search/model/n;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehf:I

.field private ehg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/n;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/n;->ehf:I

    .line 512
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/n;->ehg:Ljava/lang/String;

    .line 513
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/n;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/n;->ehg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->b([ILjava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/n;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/n;->ehg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->mH(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 521
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/n;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/n;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a([ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 531
    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/n;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v3}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget v1, p0, Lcom/tencent/mm/plugin/search/model/n;->ehf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/plugin/search/model/n;->ehf:I

    goto :goto_0

    .line 534
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteContact(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/n;->ehg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/tencent/mm/plugin/search/model/n;->ehf:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " [dirty: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/search/model/n;->ehf:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
