.class public final Lcom/tencent/mm/plugin/ext/j;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 187
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 4
    .parameter

    .prologue
    .line 191
    instance-of v0, p1, Lcom/tencent/mm/c/a/bc;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "MicroMsg.SubCoreExtAgent"

    const-string v1, "mismatched event"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    .line 195
    :cond_0
    check-cast p1, Lcom/tencent/mm/c/a/bc;

    .line 196
    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Er()Lcom/tencent/mm/modelvoice/br;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    const-string v0, "MicroMsg.SubCoreExtAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubCoreVoice.getVoiceStg() == null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Er()Lcom/tencent/mm/modelvoice/br;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/c/a/bc;->bNe:Lcom/tencent/mm/c/a/bd;

    iget-object v1, v1, Lcom/tencent/mm/c/a/bd;->rD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/br;->hA(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/bh;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    iget-object v1, p1, Lcom/tencent/mm/c/a/bc;->bNf:Lcom/tencent/mm/c/a/be;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/bh;->AF()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/tencent/mm/c/a/be;->bMS:J

    .line 203
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
