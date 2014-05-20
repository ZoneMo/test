.class final Lcom/tencent/mm/plugin/search/model/ac;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field private egM:Lcom/tencent/mm/plugin/search/model/ap;

.field private ehI:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/ap;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ac;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    .line 254
    const/16 v0, 0xc8

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/ac;->ehI:I

    .line 255
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ac;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/ac;->ehI:I

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->aaU()V

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptimizeIndexTask("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/ac;->ehI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
