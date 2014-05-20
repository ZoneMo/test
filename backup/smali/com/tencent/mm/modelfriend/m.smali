.class public final Lcom/tencent/mm/modelfriend/m;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 2
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/tencent/mm/c/a/bo;

    .line 17
    iget-object v0, p1, Lcom/tencent/mm/c/a/bo;->bNs:Lcom/tencent/mm/c/a/bq;

    iget-object v1, p1, Lcom/tencent/mm/c/a/bo;->bNr:Lcom/tencent/mm/c/a/bp;

    iget-object v1, v1, Lcom/tencent/mm/c/a/bp;->bNo:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/z;->fB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/c/a/bq;->bNt:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/tencent/mm/c/a/bo;->bNs:Lcom/tencent/mm/c/a/bq;

    iget-object v0, v0, Lcom/tencent/mm/c/a/bq;->bNt:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p1, Lcom/tencent/mm/c/a/bo;->bNs:Lcom/tencent/mm/c/a/bq;

    iget-object v1, p1, Lcom/tencent/mm/c/a/bo;->bNr:Lcom/tencent/mm/c/a/bp;

    iget-object v1, v1, Lcom/tencent/mm/c/a/bp;->bNp:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/z;->fB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/c/a/bq;->bNt:Ljava/lang/String;

    .line 21
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
