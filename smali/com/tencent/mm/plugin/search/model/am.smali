.class final Lcom/tencent/mm/plugin/search/model/am;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic ehV:Lcom/tencent/mm/plugin/search/model/ag;

.field private ehZ:[Lcom/tencent/mm/storage/ak;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/am;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 230
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tencent/mm/storage/ak;

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehZ:[Lcom/tencent/mm/storage/ak;

    .line 231
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehZ:[Lcom/tencent/mm/storage/ak;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehZ:[Lcom/tencent/mm/storage/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehZ:[Lcom/tencent/mm/storage/ak;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v12

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    .line 243
    iget-object v10, p0, Lcom/tencent/mm/plugin/search/model/am;->ehZ:[Lcom/tencent/mm/storage/ak;

    array-length v11, v10

    move v9, v2

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v6, v10, v9

    .line 245
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "MicroMsg.SearchMessageLogic"

    const-string v1, "Inserting message index interrupted."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 248
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 251
    :cond_2
    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    if-ne v0, v12, :cond_3

    .line 252
    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 257
    invoke-static {v5, v0}, Lcom/tencent/mm/plugin/search/model/ag;->al(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 258
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    .line 243
    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/am;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsertMessage(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/am;->ehZ:[Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
