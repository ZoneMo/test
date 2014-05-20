.class public Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public bTR:Ljava/lang/String;

.field public dCO:Ljava/lang/String;

.field public eWH:Ljava/lang/String;

.field public eWI:Ljava/lang/String;

.field public eWJ:Ljava/lang/String;

.field public eWK:D

.field public eWL:D

.field public eWM:D

.field public eWN:D

.field public eWO:Ljava/lang/String;

.field public eWP:Ljava/lang/String;

.field public eWQ:Ljava/lang/String;

.field public eWR:Ljava/lang/String;

.field public eWS:Ljava/lang/String;

.field public eWT:Ljava/lang/String;

.field public eWU:Z

.field private eWV:I

.field private eWW:I

.field public eWX:Ljava/lang/String;

.field public eWY:I

.field public eWZ:Ljava/lang/String;

.field public eXa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/a;-><init>()V

    sput-object v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWX:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWZ:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eXa:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWX:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWZ:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eXa:Z

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->dCO:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWU:Z

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eXa:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->bTR:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWK:D

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWL:D

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWM:D

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWN:D

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWQ:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWJ:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWV:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWX:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWY:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWZ:Ljava/lang/String;

    .line 302
    return-void

    :cond_0
    move v0, v2

    .line 288
    goto :goto_0

    :cond_1
    move v1, v2

    .line 289
    goto :goto_1
.end method

.method public static aH(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 184
    const-string v0, "MicroMsg.Bankcard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supportBankcardTag : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bankcardTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lorg/json/JSONObject;)Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const-wide/high16 v6, 0x4059

    const/4 v3, 0x1

    .line 136
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;-><init>()V

    .line 138
    :try_start_0
    const-string v4, "bank_name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->dCO:Ljava/lang/String;

    .line 139
    const-string v4, "bank_type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    .line 140
    const-string v4, "bind_serial"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    .line 141
    const-string v4, "bankacc_type"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWU:Z

    .line 142
    const-string v2, "mobile"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "x"

    const-string v5, "%"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v4, "utf-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->bTR:Ljava/lang/String;

    .line 144
    const-string v2, "once_quota_3"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWK:D

    .line 145
    const-string v2, "once_quota_1"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWL:D

    .line 146
    const-string v2, "day_quota_3"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWM:D

    .line 147
    const-string v2, "day_quota_1"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWN:D

    .line 148
    const-string v2, "bind_tail"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWQ:Ljava/lang/String;

    .line 149
    const-string v2, "expired_flag"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 150
    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    .line 156
    :goto_0
    const-string v2, "bank_phone"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWJ:Ljava/lang/String;

    .line 157
    const-string v2, "bank_card_tag"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWV:I

    .line 165
    :goto_1
    return-object v0

    .line 151
    :cond_1
    const-string v2, "bank_flag"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 152
    const/4 v2, 0x2

    iput v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 154
    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static jB(I)Z
    .locals 1
    .parameter

    .prologue
    .line 189
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jC(I)I
    .locals 1
    .parameter

    .prologue
    .line 244
    packed-switch p0, :pswitch_data_0

    .line 260
    sget v0, Lcom/tencent/mm/n;->bGR:I

    :goto_0
    return v0

    .line 246
    :pswitch_0
    sget v0, Lcom/tencent/mm/n;->bGK:I

    goto :goto_0

    .line 248
    :pswitch_1
    sget v0, Lcom/tencent/mm/n;->bGM:I

    goto :goto_0

    .line 250
    :pswitch_2
    sget v0, Lcom/tencent/mm/n;->bGQ:I

    goto :goto_0

    .line 252
    :pswitch_3
    sget v0, Lcom/tencent/mm/n;->bGI:I

    goto :goto_0

    .line 254
    :pswitch_4
    sget v0, Lcom/tencent/mm/n;->bGO:I

    goto :goto_0

    .line 256
    :pswitch_5
    sget v0, Lcom/tencent/mm/n;->bGV:I

    goto :goto_0

    .line 258
    :pswitch_6
    sget v0, Lcom/tencent/mm/n;->bGT:I

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static v(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter

    .prologue
    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    if-eqz p0, :cond_1

    .line 270
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 271
    iget v3, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->anf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(ILcom/tencent/mm/plugin/wallet/order/model/Orders;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 200
    .line 201
    iget-wide v3, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWK:D

    cmpl-double v3, v3, v0

    if-lez v3, :cond_0

    .line 202
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWK:D

    .line 204
    :cond_0
    iget-wide v3, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWL:D

    cmpl-double v3, v3, v0

    if-lez v3, :cond_1

    .line 205
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWL:D

    .line 207
    :cond_1
    iget-wide v3, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWM:D

    cmpl-double v3, v3, v0

    if-lez v3, :cond_2

    .line 208
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWM:D

    .line 210
    :cond_2
    iget-wide v3, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWN:D

    cmpl-double v0, v3, v0

    if-lez v0, :cond_3

    .line 211
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWN:D

    .line 214
    :cond_3
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    if-eqz v0, :cond_4

    .line 215
    const-string v0, "MicroMsg.Bankcard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bankcard : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bankcardState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    .line 235
    :goto_0
    return v0

    .line 221
    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faP:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    const/4 v0, 0x4

    goto :goto_0

    .line 224
    :cond_5
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWV:I

    and-int/2addr v0, p1

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_8

    .line 226
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->anf()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    move v0, v2

    .line 224
    goto :goto_1

    .line 229
    :cond_7
    const/4 v0, 0x6

    goto :goto_0

    .line 231
    :cond_8
    iget-object v0, p2, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p2, Lcom/tencent/mm/plugin/wallet/order/model/Orders;->faZ:Ljava/util/Set;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 233
    const/4 v0, 0x7

    goto :goto_0

    :cond_9
    move v0, v2

    .line 235
    goto :goto_0
.end method

.method public final anf()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWV:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ang()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->dCO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWU:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eXa:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->bTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWK:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 313
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWL:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 314
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWM:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 315
    iget-wide v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWN:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWV:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    return-void

    :cond_0
    move v0, v2

    .line 309
    goto :goto_0

    :cond_1
    move v1, v2

    .line 310
    goto :goto_1
.end method
