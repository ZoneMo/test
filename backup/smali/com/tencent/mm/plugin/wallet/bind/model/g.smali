.class public final Lcom/tencent/mm/plugin/wallet/bind/model/g;
.super Lcom/tencent/mm/plugin/wallet/c/a;
.source "SourceFile"


# instance fields
.field public eXG:Z

.field public eXH:Ljava/util/ArrayList;

.field public eXI:I

.field public eXJ:Ljava/lang/String;

.field private eXK:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/c/a;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXG:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXH:Ljava/util/ArrayList;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXI:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXJ:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const-string v1, "req_key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/bind/model/g;->m(Ljava/util/Map;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final TN()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method public final a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 55
    if-eqz p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-object p3, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXK:Lorg/json/JSONObject;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXH:Ljava/util/ArrayList;

    .line 61
    :try_start_0
    const-string v0, "is_reg"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXI:I

    .line 62
    const-string v0, "time_stamp"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "true_name"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXJ:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/e/a;->pO(Ljava/lang/String;)V

    .line 67
    :cond_1
    const-string v0, "1"

    const-string v1, "is_offline_pay"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 70
    const-string v0, "2"

    const-string v1, "icard_user_flag"

    const-string v2, "2"

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXG:Z

    .line 71
    const-string v0, "Array"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 73
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    .line 74
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 75
    const-string v4, "cre_type"

    const/4 v5, -0x1

    invoke-virtual {p3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 76
    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->e(Lorg/json/JSONObject;)Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    iget-object v5, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWI:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXJ:Ljava/lang/String;

    iput-object v5, v3, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWI:Ljava/lang/String;

    .line 81
    :cond_2
    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXH:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_4
    const-string v0, "cre_type"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    const-string v0, "cre_type"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 87
    :cond_5
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXH:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXI:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXJ:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXG:Z

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/plugin/wallet/c/c;->a(Ljava/util/ArrayList;ILjava/lang/String;IZZ)V

    .line 88
    const-string v0, "MicroMsg.NetSceneTenpayQueryBindBankcard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got data---isReg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bankcard.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/model/g;->eXH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
