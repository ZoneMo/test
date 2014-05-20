.class public final Lcom/tencent/mm/plugin/wallet/bind/model/d;
.super Lcom/tencent/mm/plugin/wallet/c/a;
.source "SourceFile"


# instance fields
.field private eXC:Ljava/lang/String;

.field private etE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/wallet/protocal/Authen;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/c/a;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/d;->eXC:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/d;->etE:Ljava/lang/String;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHN:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/model/d;->a(Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;Ljava/util/Map;)V

    .line 25
    const-string v0, "flag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bOY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "bank_type"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXo:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fde:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "passwd"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fde:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->etE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const-string v0, "token"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->etE:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_1
    iget-boolean v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdk:Z

    if-eqz v0, :cond_2

    .line 34
    const-string v0, "is_repeat_send"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_2
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXN:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    new-instance v2, Lcom/tencent/mm/a/j;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/a/j;-><init>(I)V

    .line 39
    const-string v0, "import_code"

    iget-object v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXN:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "qqid"

    invoke-virtual {v2}, Lcom/tencent/mm/a/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWY:I

    if-lez v0, :cond_3

    .line 42
    const-string v0, "cre_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_3
    const-string v0, "bind_serailno"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eXd:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 50
    const-string v0, "first_name"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "last_name"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdm:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "country"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->dHm:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "area"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bTZ:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "city"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bUa:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "address"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->XX:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "phone_number"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdn:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "zip_code"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWa:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "email"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->bTQ:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_5
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdf:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    const-string v0, "true_name"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdf:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_6
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 65
    const-string v0, "identify_card"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdg:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_7
    iget v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWY:I

    if-lez v0, :cond_8

    .line 68
    const-string v0, "cre_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_8
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdh:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 71
    const-string v0, "mobile_no"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdh:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_9
    const-string v0, "bank_card_id"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdi:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWR:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 75
    const-string v0, "cvv2"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->eWR:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_a
    iget-object v0, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdj:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 78
    const-string v0, "valid_thru"

    iget-object v2, p1, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdj:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_b
    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/bind/model/d;->m(Ljava/util/Map;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final TN()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0xc

    return v0
.end method

.method public final a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    if-eqz p3, :cond_0

    .line 92
    const-string v0, "req_key"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/d;->eXC:Ljava/lang/String;

    .line 93
    const-string v0, "token"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/d;->etE:Ljava/lang/String;

    .line 95
    :cond_0
    return-void
.end method

.method public final aeS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/d;->eXC:Ljava/lang/String;

    return-object v0
.end method

.method public final ank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/d;->etE:Ljava/lang/String;

    return-object v0
.end method
