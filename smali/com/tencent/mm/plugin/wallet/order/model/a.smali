.class public final Lcom/tencent/mm/plugin/wallet/order/model/a;
.super Lcom/tencent/mm/plugin/wallet/c/a;
.source "SourceFile"


# instance fields
.field private faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;


# virtual methods
.method public final TN()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x3

    return v0
.end method

.method public final a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    if-eqz p3, :cond_0

    .line 43
    :try_start_0
    new-instance v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "buy_uin"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCE:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "buy_name"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCF:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "sale_uin"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCG:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "sale_name"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCH:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "trans_id"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCN:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "goods_name"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->desc:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "pay_num"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCJ:D

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "trade_state"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCK:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "trade_state_name"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCL:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "buy_bank_name"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCO:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "modify_timestamp"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCM:I

    .line 56
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "fee_type"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCP:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "appusername"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCQ:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    const-string v1, "app_telephone"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCs:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final aon()Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/order/model/a;->faO:Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    return-object v0
.end method
