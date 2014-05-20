.class final Lcom/tencent/mm/plugin/voicereminder/a/h;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic ePd:Lcom/tencent/mm/plugin/voicereminder/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/voicereminder/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/tencent/mm/plugin/voicereminder/a/h;->ePd:Lcom/tencent/mm/plugin/voicereminder/a/f;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 315
    check-cast p1, Lcom/tencent/mm/c/a/hy;

    .line 316
    iget-object v0, p1, Lcom/tencent/mm/c/a/hy;->bRu:Lcom/tencent/mm/c/a/hz;

    iget-object v0, v0, Lcom/tencent/mm/c/a/hz;->bRv:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/plugin/voicereminder/a/k;->pl(Ljava/lang/String;)Lcom/tencent/mm/plugin/voicereminder/a/k;

    move-result-object v1

    .line 317
    iget-object v0, p1, Lcom/tencent/mm/c/a/hy;->bRu:Lcom/tencent/mm/c/a/hz;

    iget-object v2, v0, Lcom/tencent/mm/c/a/hz;->bLP:Lcom/tencent/mm/storage/ak;

    .line 319
    if-eqz v1, :cond_2

    .line 320
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v3, Lcom/tencent/mm/plugin/voicereminder/a/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/voicereminder/a/f;

    .line 321
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mm/c/a/hy;->bRu:Lcom/tencent/mm/c/a/hz;

    iget-object v4, v4, Lcom/tencent/mm/c/a/hz;->description:Ljava/lang/String;

    iget v1, v1, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePe:I

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/tencent/mm/pluginsdk/e/e;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v6, v5, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v6, v5

    if-le v6, v8, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v5, v8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v4

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/tencent/mm/plugin/voicereminder/a/f;->d(Ljava/lang/String;Ljava/lang/String;J)V

    .line 324
    :cond_2
    return v7
.end method
