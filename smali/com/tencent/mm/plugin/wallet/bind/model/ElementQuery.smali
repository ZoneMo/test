.class public Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static eXc:Ljava/lang/String;


# instance fields
.field public eWV:I

.field private eXA:Ljava/lang/String;

.field private eXB:Ljava/util/List;

.field public eXb:Lorg/json/JSONObject;

.field public eXd:Ljava/lang/String;

.field public eXe:Ljava/lang/String;

.field public eXf:Ljava/lang/String;

.field public eXg:Z

.field public eXh:Z

.field public eXi:Z

.field public eXj:Z

.field public eXk:Ljava/lang/String;

.field public eXl:Z

.field public eXm:I

.field public eXn:I

.field public eXo:Ljava/lang/String;

.field public eXp:Ljava/lang/String;

.field public eXq:Ljava/lang/String;

.field public eXr:Z

.field public eXs:Z

.field public eXt:Z

.field public eXu:Z

.field public eXv:Z

.field public eXw:Z

.field public eXx:Z

.field public eXy:Z

.field public eXz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "bind_serial"

    sput-object v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXc:Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/b;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/b;-><init>()V

    sput-object v0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXB:Ljava/util/List;

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXB:Ljava/util/List;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXd:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXe:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXf:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXg:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXh:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXi:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXj:Z

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXk:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXd:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXl:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXn:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXp:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXq:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXr:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXs:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXt:Z

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXu:Z

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXv:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXw:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXy:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXx:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_d

    :goto_d
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXz:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXA:Ljava/lang/String;

    .line 217
    return-void

    :cond_0
    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 194
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 195
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 196
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 199
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 206
    goto :goto_5

    :cond_6
    move v0, v2

    .line 207
    goto :goto_6

    :cond_7
    move v0, v2

    .line 208
    goto :goto_7

    :cond_8
    move v0, v2

    .line 209
    goto :goto_8

    :cond_9
    move v0, v2

    .line 210
    goto :goto_9

    :cond_a
    move v0, v2

    .line 211
    goto :goto_a

    :cond_b
    move v0, v2

    .line 212
    goto :goto_b

    :cond_c
    move v0, v2

    .line 213
    goto :goto_c

    :cond_d
    move v1, v2

    .line 214
    goto :goto_d
.end method


# virtual methods
.method public final anh()Z
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXn:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ani()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 102
    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXn:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final anj()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXB:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXB:Ljava/util/List;

    .line 122
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXA:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXB:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXA:Ljava/lang/String;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 115
    invoke-static {v4, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 116
    if-lez v4, :cond_1

    .line 117
    iget-object v5, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXB:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXB:Ljava/util/List;

    goto :goto_0

    .line 122
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 140
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXb:Lorg/json/JSONObject;

    .line 141
    const-string v0, "bank_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXe:Ljava/lang/String;

    .line 142
    const-string v0, "bank_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    .line 143
    const-string v0, "bank_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXq:Ljava/lang/String;

    .line 144
    const-string v0, "bankacc_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXn:I

    .line 146
    const-string v0, "canModifyName"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXg:Z

    .line 147
    const-string v0, "canModifyCreID"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXh:Z

    .line 148
    const-string v0, "0"

    const-string v1, "is_sure"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXl:Z

    .line 149
    const-string v0, "1"

    const-string v1, "needCVV"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXi:Z

    .line 150
    const-string v0, "1"

    const-string v1, "needValiDate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXj:Z

    .line 151
    const-string v0, "time_stamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXf:Ljava/lang/String;

    .line 152
    const-string v0, "uesr_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXk:Ljava/lang/String;

    .line 153
    const-string v0, "bank_flag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXp:Ljava/lang/String;

    .line 154
    const-string v0, "needFirstName"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXr:Z

    .line 155
    const-string v0, "needLastName"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXs:Z

    .line 156
    const-string v0, "needCountry"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXt:Z

    .line 157
    const-string v0, "needArea"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXu:Z

    .line 158
    const-string v0, "needCity"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXv:Z

    .line 159
    const-string v0, "needAddress"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXw:Z

    .line 160
    const-string v0, "needZip"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXx:Z

    .line 161
    const-string v0, "needPhone"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXy:Z

    .line 162
    const-string v0, "needEmail"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXz:Z

    .line 163
    const-string v0, "support_cre_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXA:Ljava/lang/String;

    .line 165
    const-string v0, "bank_card_tag"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    .line 166
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    if-ne v0, v2, :cond_2

    .line 167
    const-string v0, "IsSaveYfq"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "canReturnYfq"

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "auth_mode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 176
    iput v2, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    goto :goto_0

    .line 178
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    goto :goto_0
.end method

.method public final isError()Z
    .locals 3

    .prologue
    .line 94
    const-string v0, "0"

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXp:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXe:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXf:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXg:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXh:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXi:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXj:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXk:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXd:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXl:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXo:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXp:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXq:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXr:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXs:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXt:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXu:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXv:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXw:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXy:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXx:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXz:Z

    if-eqz v0, :cond_d

    :goto_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eXA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return-void

    :cond_0
    move v0, v2

    .line 243
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 244
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 245
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 246
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 249
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 256
    goto :goto_5

    :cond_6
    move v0, v2

    .line 257
    goto :goto_6

    :cond_7
    move v0, v2

    .line 258
    goto :goto_7

    :cond_8
    move v0, v2

    .line 259
    goto :goto_8

    :cond_9
    move v0, v2

    .line 260
    goto :goto_9

    :cond_a
    move v0, v2

    .line 261
    goto :goto_a

    :cond_b
    move v0, v2

    .line 262
    goto :goto_b

    :cond_c
    move v0, v2

    .line 263
    goto :goto_c

    :cond_d
    move v1, v2

    .line 264
    goto :goto_d
.end method
