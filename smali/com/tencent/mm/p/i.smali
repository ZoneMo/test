.class public final Lcom/tencent/mm/p/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cnK:I

.field public cnL:Ljava/lang/String;

.field public cnM:Ljava/lang/String;

.field public cnN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/p/i;->cnK:I

    return-void
.end method

.method public static eF(Ljava/lang/String;)Lcom/tencent/mm/p/i;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 459
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 474
    :goto_0
    return-object v0

    .line 462
    :cond_0
    const-string v0, "MicroMsg.BizInfo"

    const-string v1, "biz verify info is [%s]"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    new-instance v0, Lcom/tencent/mm/p/i;

    invoke-direct {v0}, Lcom/tencent/mm/p/i;-><init>()V

    .line 465
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    const-string v2, "Type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/p/i;->cnK:I

    .line 467
    const-string v2, "Description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/p/i;->cnL:Ljava/lang/String;

    .line 468
    const-string v2, "Name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/p/i;->cnM:Ljava/lang/String;

    .line 469
    const-string v2, "IntroUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/p/i;->cnN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_1
    const-string v1, "MicroMsg.BizInfo"

    const-string v2, "type[%d],desc[%s],name[%s],url[%s]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/tencent/mm/p/i;->cnK:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, v0, Lcom/tencent/mm/p/i;->cnL:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/tencent/mm/p/i;->cnM:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/tencent/mm/p/i;->cnN:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
