.class final Lcom/tencent/mm/ui/bindgooglecontact/y;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private csU:Ljava/lang/String;

.field final synthetic gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

.field private gIg:Lcom/tencent/mm/ui/bindgooglecontact/x;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 739
    sget-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIe:Lcom/tencent/mm/ui/bindgooglecontact/x;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gIg:Lcom/tencent/mm/ui/bindgooglecontact/x;

    .line 742
    iput-object p2, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->mContext:Landroid/content/Context;

    .line 743
    iput-object p3, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->csU:Ljava/lang/String;

    .line 744
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;Landroid/content/Context;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/bindgooglecontact/y;-><init>(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private varargs QA()Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    const-string v0, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v3, "doInBackground"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    move v3, v1

    .line 764
    :goto_0
    :try_start_0
    const-string v5, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v6, "startInde:%d, totalCount:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    const-string v0, "json"

    iget-object v5, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->csU:Ljava/lang/String;

    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://www.google.com/m8/feeds/contacts/default/property-email?alt="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&max-results=100&start-index="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&access_token="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v5, "requestURL:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v5, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0x4e20

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string v6, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v7, "responseCode:%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/ui/bindgooglecontact/y;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 766
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "feed"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "openSearch$totalResults"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "$t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 767
    if-lez v5, :cond_0

    .line 768
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bindgooglecontact/y;->wt(Ljava/lang/String;)V

    .line 770
    :cond_0
    sub-int v0, v5, v3

    const/16 v6, 0x64

    if-le v0, v6, :cond_4

    .line 772
    add-int/lit8 v0, v3, 0x64

    move v3, v0

    move v0, v1

    .line 776
    :goto_2
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->g(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIb:Lcom/tencent/mm/ui/bindgooglecontact/x;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gIg:Lcom/tencent/mm/ui/bindgooglecontact/x;

    .line 785
    :goto_3
    return-object v4

    .line 765
    :cond_2
    const/16 v6, 0x191

    if-ne v5, v6, :cond_3

    const-string v5, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v6, "Server OAuth Error,Please Try Again."

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v4

    goto :goto_1

    :cond_3
    const-string v5, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v6, "Unknow Error."

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 778
    :catch_0
    move-exception v0

    .line 779
    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gId:Lcom/tencent/mm/ui/bindgooglecontact/x;

    iput-object v1, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gIg:Lcom/tencent/mm/ui/bindgooglecontact/x;

    .line 780
    const-string v1, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v0, v2

    .line 774
    goto :goto_2

    .line 781
    :catch_1
    move-exception v0

    .line 782
    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIe:Lcom/tencent/mm/ui/bindgooglecontact/x;

    iput-object v1, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gIg:Lcom/tencent/mm/ui/bindgooglecontact/x;

    .line 783
    const-string v1, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v5

    goto/16 :goto_0
.end method

.method private static d(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 845
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 846
    const/16 v1, 0x5000

    new-array v1, v1, [B

    .line 848
    :goto_0
    array-length v2, v1

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 849
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 851
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private wt(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 860
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "feed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "entry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 861
    if-eqz v6, :cond_4

    move v0, v1

    .line 862
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 863
    const-string v4, ""

    .line 864
    const-string v3, ""

    .line 866
    const-string v2, ""

    .line 867
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 868
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 869
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "gd$email"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 870
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "link"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 875
    if-eqz v5, :cond_6

    .line 876
    const-string v10, "$t"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 877
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 878
    if-lez v10, :cond_6

    .line 879
    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 883
    :goto_1
    if-eqz v7, :cond_5

    .line 884
    const-string v3, "$t"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 886
    :goto_2
    if-eqz v9, :cond_1

    move v3, v1

    .line 887
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 888
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "rel"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 889
    const-string v10, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 890
    if-lez v10, :cond_0

    .line 891
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 892
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "photo"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 893
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "href"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 887
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    move-object v3, v2

    .line 899
    if-eqz v8, :cond_3

    move v2, v1

    .line 900
    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 901
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "address"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 903
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v7}, Lcom/tencent/mm/sdk/platformtools/cj;->hT(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v9}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->h(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 904
    new-instance v9, Lcom/tencent/mm/modelfriend/ac;

    invoke-direct {v9}, Lcom/tencent/mm/modelfriend/ac;-><init>()V

    .line 905
    iput-object v5, v9, Lcom/tencent/mm/modelfriend/ac;->field_googleid:Ljava/lang/String;

    .line 906
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/tencent/mm/modelfriend/ac;->field_googleitemid:Ljava/lang/String;

    .line 907
    iput-object v4, v9, Lcom/tencent/mm/modelfriend/ac;->field_googlename:Ljava/lang/String;

    .line 908
    iput-object v3, v9, Lcom/tencent/mm/modelfriend/ac;->field_googlephotourl:Ljava/lang/String;

    .line 909
    iput-object v7, v9, Lcom/tencent/mm/modelfriend/ac;->field_googlegmail:Ljava/lang/String;

    .line 910
    iget-object v10, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v10}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->f(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 911
    iget-object v10, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v10}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->e(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v10, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v10}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->f(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 862
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 925
    :cond_4
    return-void

    :cond_5
    move-object v4, v3

    goto/16 :goto_2

    :cond_6
    move-object v5, v4

    goto/16 :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/tencent/mm/ui/bindgooglecontact/y;->QA()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 728
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gIg:Lcom/tencent/mm/ui/bindgooglecontact/x;

    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIb:Lcom/tencent/mm/ui/bindgooglecontact/x;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->e(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->e(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIb:Lcom/tencent/mm/ui/bindgooglecontact/x;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->e(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->a(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;Lcom/tencent/mm/ui/bindgooglecontact/x;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIc:Lcom/tencent/mm/ui/bindgooglecontact/x;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->a(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;Lcom/tencent/mm/ui/bindgooglecontact/x;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gIg:Lcom/tencent/mm/ui/bindgooglecontact/x;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->a(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;Lcom/tencent/mm/ui/bindgooglecontact/x;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 749
    const-string v0, "MicroMsg.GoogleContact.GoogleAPIAsyncTask"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->e(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 753
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/y;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->f(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 754
    return-void
.end method
