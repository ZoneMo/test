.class public final Lcom/tencent/mm/p/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static cnD:Ljava/lang/String;

.field public static cnE:Ljava/lang/String;

.field public static cnF:Ljava/lang/String;


# instance fields
.field public cnG:Ljava/lang/String;

.field public cnH:Ljava/util/List;

.field public cnI:Ljava/lang/String;

.field public cnJ:I

.field public content:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public type:I

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    const-string v0, "menu_click"

    sput-object v0, Lcom/tencent/mm/p/h;->cnD:Ljava/lang/String;

    .line 591
    const-string v0, "menu_action_start"

    sput-object v0, Lcom/tencent/mm/p/h;->cnE:Ljava/lang/String;

    .line 593
    const-string v0, "menu_action_success"

    sput-object v0, Lcom/tencent/mm/p/h;->cnF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/p/h;->cnH:Ljava/util/List;

    .line 800
    return-void
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 846
    const-string v0, "MicroMsg.BizInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "menuItem.jsonArray : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    if-eqz p0, :cond_0

    .line 850
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 851
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 852
    const-string v2, "MicroMsg.BizInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "menuItem.jsonArray.length : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 854
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 855
    new-instance v5, Lcom/tencent/mm/p/h;

    invoke-direct {v5}, Lcom/tencent/mm/p/h;-><init>()V

    .line 856
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/tencent/mm/p/h;->id:I

    .line 857
    const-string v6, "MicroMsg.BizInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "menuItem.id : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/tencent/mm/p/h;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/tencent/mm/p/h;->type:I

    .line 859
    const-string v6, "MicroMsg.BizInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "menuItem.type : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/tencent/mm/p/h;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    .line 861
    const-string v6, "MicroMsg.BizInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "menuItem.name : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/p/h;->cnG:Ljava/lang/String;

    .line 863
    const-string v6, "MicroMsg.BizInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "menuItem.key : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/tencent/mm/p/h;->cnG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/p/h;->value:Ljava/lang/String;

    .line 865
    const-string v6, "MicroMsg.BizInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "menuItem.value : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/tencent/mm/p/h;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v6, "sub_button_list"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/p/h;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/p/h;->cnH:Ljava/util/List;

    .line 867
    const-string v6, "acttype"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/tencent/mm/p/h;->cnJ:I

    .line 868
    const-string v4, "MicroMsg.BizInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "menuItem.acttype : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lcom/tencent/mm/p/h;->cnJ:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    move-object v1, v0

    .line 876
    :goto_1
    return-object v1

    .line 872
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static d(Ljava/util/Map;)Ljava/util/LinkedList;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 888
    if-nez p0, :cond_0

    move-object v0, v1

    .line 914
    :goto_0
    return-object v0

    .line 891
    :cond_0
    const-string v0, ".msg.appmsg.buttonlist.$count"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 892
    if-lez v4, :cond_3

    .line 894
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 895
    const-string v0, "MicroMsg.BizInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "menuItem.jsonArray.length : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_1
    if-ge v3, v4, :cond_2

    .line 898
    new-instance v5, Lcom/tencent/mm/p/h;

    invoke-direct {v5}, Lcom/tencent/mm/p/h;-><init>()V

    .line 899
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, ".msg.appmsg.buttonlist.button"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const-string v0, ""

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".id"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/tencent/mm/p/h;->id:I

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".type"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/tencent/mm/p/h;->type:I

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".name"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".key"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/tencent/mm/p/h;->cnG:Ljava/lang/String;

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".value"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/tencent/mm/p/h;->value:Ljava/lang/String;

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".acttype"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/tencent/mm/p/h;->cnJ:I

    .line 906
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 896
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 899
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    move-object v0, v2

    .line 908
    goto/16 :goto_0

    .line 910
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 914
    goto/16 :goto_0
.end method


# virtual methods
.method public final D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 735
    const-string v0, "MicroMsg.BizInfo"

    const-string v1, "type is %s , result is %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 739
    const-string v1, "scan_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    const-string v1, "scan_result"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 743
    const-string v2, "scan_code"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    .line 746
    const-string v0, "MicroMsg.BizInfo"

    const-string v1, "content: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const-string v1, "MicroMsg.BizInfo"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(DDILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 777
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 778
    const-string v1, "x"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 779
    const-string v1, "y"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string v1, "scale"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 781
    const-string v1, "label"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    const-string v1, "poiname"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 785
    const-string v2, "location"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    .line 788
    const-string v0, "MicroMsg.BizInfo"

    iget-object v1, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 790
    const-string v1, "MicroMsg.BizInfo"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 5
    .parameter

    .prologue
    .line 754
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 755
    :cond_0
    const-string v0, "MicroMsg.BizInfo"

    const-string v1, "value null!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 759
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 760
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 762
    const-string v4, "pic_md5"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    const-string v1, "MicroMsg.BizInfo"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 766
    const-string v2, "pics"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    .line 769
    const-string v0, "MicroMsg.BizInfo"

    iget-object v1, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 817
    iget-object v0, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 818
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/p/h;->cnI:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 821
    iget v0, p0, Lcom/tencent/mm/p/h;->type:I

    if-ne v0, v4, :cond_2

    .line 822
    sget-object v0, Lcom/tencent/mm/p/h;->cnE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/p/h;->cnI:Ljava/lang/String;

    .line 827
    :cond_1
    :goto_0
    const-string v0, "%s<info><id><![CDATA[%d]]></id><key><![CDATA[%s]]></key><status><![CDATA[%s]]></status><content><![CDATA[%s]]></content></info>"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "#bizmenu#"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/tencent/mm/p/h;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/mm/p/h;->cnG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/mm/p/h;->cnI:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 824
    :cond_2
    sget-object v0, Lcom/tencent/mm/p/h;->cnD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/p/h;->cnI:Ljava/lang/String;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 835
    const-string v1, "id:%d, type:%d, acttype:%s, name:%s, key:%s, value:%s, content:%s"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/tencent/mm/p/h;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/tencent/mm/p/h;->cnJ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/tencent/mm/p/h;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/tencent/mm/p/h;->cnG:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/tencent/mm/p/h;->value:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/p/h;->cnG:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/p/h;->value:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/p/h;->content:Ljava/lang/String;

    goto :goto_3
.end method
