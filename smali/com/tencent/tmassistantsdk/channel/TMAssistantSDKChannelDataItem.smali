.class public Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATEITEM_VERSION:I = 0x0

.field private static final ENCRYPT_KEY:Ljava/lang/String; = "&-*)Wb5_U,[^!9\'+"


# instance fields
.field private mDBIdentity:I

.field private mDataItemAction:Ljava/lang/String;

.field private mDataItemEndTime:J

.field private mDataItemStartTime:J

.field private mDataItemType:I

.field private mDataItemVersion:I

.field private mHostPackageName:Ljava/lang/String;

.field private mHostUserIdentity:Ljava/lang/String;

.field private mHostVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDBIdentity:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostPackageName:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostVersion:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostUserIdentity:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemType:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemAction:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemStartTime:J

    .line 30
    iput-wide v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemEndTime:J

    .line 31
    iput v1, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemVersion:I

    .line 38
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostPackageName:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostPackageName:Ljava/lang/String;

    .line 43
    :cond_0
    iput p2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostVersion:I

    .line 44
    iput-object p3, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostUserIdentity:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostUserIdentity:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostUserIdentity:Ljava/lang/String;

    .line 50
    :cond_1
    iput p4, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemType:I

    .line 51
    iput-object p5, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemAction:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemAction:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemAction:Ljava/lang/String;

    .line 56
    :cond_2
    iput-wide p6, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemStartTime:J

    .line 57
    iput-wide p8, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemEndTime:J

    .line 58
    iput p10, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemVersion:I

    .line 59
    return-void
.end method

.method public static getDataItemFromByte([B)Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 69
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v11

    .line 110
    :goto_0
    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lcom/tencent/tmassistantsdk/util/Cryptor;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/util/Cryptor;-><init>()V

    .line 75
    const-string v1, "&-*)Wb5_U,[^!9\'+"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/tmassistantsdk/util/Cryptor;->decrypt([B[B)[B

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 81
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v1, "mHostPackageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "mHostVersion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 89
    const-string v3, "mHostUserIdentity"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v4, "mDataItemType"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 92
    const-string v5, "mDataItemAction"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    const-string v6, "mDataItemStartTime"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 94
    const-string v8, "mDataItemEndTime"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 95
    const-string v10, "mDataItemVersion"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 97
    new-instance v0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;

    invoke-direct/range {v0 .. v10}, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    move-object v0, v11

    .line 110
    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getBuffer()[B
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    :try_start_0
    const-string v1, "mHostPackageName"

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "mHostVersion"

    iget v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string v1, "mHostUserIdentity"

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostUserIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "mDataItemType"

    iget v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v1, "mDataItemAction"

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "mDataItemStartTime"

    iget-wide v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string v1, "mDataItemEndTime"

    iget-wide v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemEndTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 134
    const-string v1, "mDataItemVersion"

    iget v2, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 139
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Lcom/tencent/tmassistantsdk/util/Cryptor;

    invoke-direct {v1}, Lcom/tencent/tmassistantsdk/util/Cryptor;-><init>()V

    .line 143
    const-string v2, "&-*)Wb5_U,[^!9\'+"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmassistantsdk/util/Cryptor;->encrypt([B[B)[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getDBIdentity()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDBIdentity:I

    return v0
.end method

.method public getDataItemAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDataItemEndTime()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemEndTime:J

    return-wide v0
.end method

.method public getDataItemStartTime()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemStartTime:J

    return-wide v0
.end method

.method public getDataItemType()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemType:I

    return v0
.end method

.method public getDataItemVersion()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDataItemVersion:I

    return v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostUserIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostUserIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getHostVersion()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mHostVersion:I

    return v0
.end method

.method public setDBIdentity(I)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput p1, p0, Lcom/tencent/tmassistantsdk/channel/TMAssistantSDKChannelDataItem;->mDBIdentity:I

    .line 176
    return-void
.end method
