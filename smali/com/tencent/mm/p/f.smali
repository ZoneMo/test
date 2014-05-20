.class public final Lcom/tencent/mm/p/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cnA:I

.field public cnj:Z

.field public cnk:Z

.field public cnl:Z

.field public cnm:Z

.field public cnn:Ljava/lang/String;

.field public cno:Ljava/lang/String;

.field public cnp:Ljava/util/List;

.field public cnq:Lcom/tencent/mm/p/i;

.field public cnr:Lcom/tencent/mm/p/g;

.field public cns:Z

.field public cnt:Z

.field public cnu:Z

.field public cnv:I

.field public cnw:Z

.field public cnx:I

.field public cny:I

.field public cnz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/p/f;->cnj:Z

    .line 342
    iput-boolean v1, p0, Lcom/tencent/mm/p/f;->cnk:Z

    .line 343
    iput-boolean v1, p0, Lcom/tencent/mm/p/f;->cnl:Z

    .line 344
    iput-boolean v1, p0, Lcom/tencent/mm/p/f;->cnm:Z

    .line 347
    iput-object v2, p0, Lcom/tencent/mm/p/f;->cnp:Ljava/util/List;

    .line 348
    iput-object v2, p0, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    .line 349
    iput-object v2, p0, Lcom/tencent/mm/p/f;->cnr:Lcom/tencent/mm/p/g;

    .line 350
    iput-boolean v1, p0, Lcom/tencent/mm/p/f;->cns:Z

    .line 351
    iput-boolean v1, p0, Lcom/tencent/mm/p/f;->cnt:Z

    .line 352
    iput-boolean v1, p0, Lcom/tencent/mm/p/f;->cnu:Z

    .line 354
    iput-boolean v1, p0, Lcom/tencent/mm/p/f;->cnw:Z

    .line 355
    iput v1, p0, Lcom/tencent/mm/p/f;->cnx:I

    .line 356
    iput v1, p0, Lcom/tencent/mm/p/f;->cny:I

    .line 361
    iput v1, p0, Lcom/tencent/mm/p/f;->cnA:I

    .line 490
    return-void
.end method

.method private static eC(Ljava/lang/String;)Lcom/tencent/mm/p/f;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    new-instance v0, Lcom/tencent/mm/p/f;

    invoke-direct {v0}, Lcom/tencent/mm/p/f;-><init>()V

    .line 375
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    const-string v1, "MicroMsg.BizInfo"

    const-string v2, "field_extinfo is null."

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    return-object v0

    .line 381
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    const-string v3, "IsShowHeadImgInMsg"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    const-string v3, "IsShowHeadImgInMsg"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/mm/p/f;->cnj:Z

    .line 386
    :cond_1
    const-string v3, "1"

    const-string v5, "CanReceiveSpeexVoice"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/mm/p/f;->cnm:Z

    .line 388
    const-string v3, "1"

    const-string v5, "IsHideInputToolbarInMsg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/mm/p/f;->cnk:Z

    .line 390
    const-string v3, "1"

    const-string v5, "IsShowMember"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/mm/p/f;->cnl:Z

    .line 391
    const-string v3, "ConferenceContactExpireTime"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/p/f;->cno:Ljava/lang/String;

    .line 392
    const-string v3, "VerifyContactPromptTitle"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/p/f;->cnn:Ljava/lang/String;

    .line 394
    const-string v3, "ConnectorMsgType"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/tencent/mm/p/f;->cnv:I

    .line 395
    const-string v3, "AudioPlayType"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v3, v1

    :goto_1
    iput-boolean v3, v0, Lcom/tencent/mm/p/f;->cnw:Z

    .line 396
    const-string v3, "InteractiveMode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/tencent/mm/p/f;->cnA:I

    .line 397
    const-string v3, "ScanQRCodeType"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/tencent/mm/p/f;->cnx:I

    .line 398
    const-string v3, "MMBizMenu"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    if-eqz v3, :cond_2

    .line 402
    invoke-static {v3}, Lcom/tencent/mm/p/g;->eE(Ljava/lang/String;)Lcom/tencent/mm/p/g;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/p/f;->cnr:Lcom/tencent/mm/p/g;

    .line 406
    :cond_2
    const-string v3, "VerifySource"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/p/i;->eF(Ljava/lang/String;)Lcom/tencent/mm/p/i;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/p/f;->cnq:Lcom/tencent/mm/p/i;

    .line 407
    const-string v3, "Privilege"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/p/j;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/p/f;->cnp:Ljava/util/List;

    .line 408
    const-string v3, "ReportLocationType"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 409
    if-lez v5, :cond_4

    move v3, v1

    :goto_2
    iput-boolean v3, v0, Lcom/tencent/mm/p/f;->cns:Z

    .line 410
    const/4 v3, 0x2

    if-ne v5, v3, :cond_5

    move v3, v1

    :goto_3
    iput-boolean v3, v0, Lcom/tencent/mm/p/f;->cnt:Z

    .line 411
    const-string v3, "NeedShowUserAddrObtaining"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6

    :goto_4
    iput-boolean v1, v0, Lcom/tencent/mm/p/f;->cnu:Z

    .line 412
    const-string v1, "ServiceType"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/p/f;->cny:I

    .line 413
    const-string v1, "SupportEmoticonLinkPrefix"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/p/f;->cnz:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_3
    move v3, v2

    .line 395
    goto :goto_1

    :cond_4
    move v3, v2

    .line 409
    goto :goto_2

    :cond_5
    move v3, v2

    .line 410
    goto :goto_3

    :cond_6
    move v1, v2

    .line 411
    goto :goto_4
.end method

.method static synthetic eD(Ljava/lang/String;)Lcom/tencent/mm/p/f;
    .locals 1
    .parameter

    .prologue
    .line 340
    invoke-static {p0}, Lcom/tencent/mm/p/f;->eC(Ljava/lang/String;)Lcom/tencent/mm/p/f;

    move-result-object v0

    return-object v0
.end method
