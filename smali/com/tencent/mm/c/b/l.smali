.class public abstract Lcom/tencent/mm/c/b/l;
.super Lcom/tencent/mm/sdk/e/ad;
.source "SourceFile"


# static fields
.field public static final bRN:[Ljava/lang/String;

.field private static final bRT:I

.field private static final bSe:I

.field private static final bUJ:I

.field private static final bUK:I

.field private static final bUL:I

.field private static final bUM:I

.field private static final bUN:I

.field private static final bUO:I

.field private static final bUP:I

.field private static final bUR:I

.field private static final bVA:I

.field private static final bVB:I

.field private static final bVC:I

.field private static final bVo:I

.field private static final bVp:I

.field private static final bVq:I

.field private static final bVr:I

.field private static final bVs:I

.field private static final bVt:I

.field private static final bVu:I

.field private static final bVv:I

.field private static final bVw:I

.field private static final bVx:I

.field private static final bVy:I

.field private static final bVz:I


# instance fields
.field public field_bannerHeight:I

.field public field_bannerImgUrl:Ljava/lang/String;

.field public field_bannerWidth:I

.field public field_coverUrl:Ljava/lang/String;

.field public field_iconUrl:Ljava/lang/String;

.field public field_introduce:Ljava/lang/String;

.field public field_packAuthInfo:Ljava/lang/String;

.field public field_packCopyright:Ljava/lang/String;

.field public field_packDesc:Ljava/lang/String;

.field public field_packExpire:I

.field public field_packFlag:I

.field public field_packName:Ljava/lang/String;

.field public field_packPrice:Ljava/lang/String;

.field public field_packType:I

.field public field_panelUrl:Ljava/lang/String;

.field public field_priceType:Ljava/lang/String;

.field public field_productId:Ljava/lang/String;

.field public field_productId_type:Ljava/lang/String;

.field public field_sendInfo:Ljava/lang/String;

.field public field_stripUrl:Ljava/lang/String;

.field public field_tagUri:Ljava/lang/String;

.field public field_timeLimitStr:Ljava/lang/String;

.field public field_timeStamp:I

.field public field_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/c/b/l;->bRN:[Ljava/lang/String;

    .line 166
    const-string v0, "productId_type"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVo:I

    .line 167
    const-string v0, "productId"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVp:I

    .line 168
    const-string v0, "type"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bRT:I

    .line 169
    const-string v0, "iconUrl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVq:I

    .line 170
    const-string v0, "packName"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUJ:I

    .line 171
    const-string v0, "packDesc"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUK:I

    .line 172
    const-string v0, "packAuthInfo"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUL:I

    .line 173
    const-string v0, "packPrice"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUM:I

    .line 174
    const-string v0, "packType"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUN:I

    .line 175
    const-string v0, "packFlag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUO:I

    .line 176
    const-string v0, "coverUrl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVr:I

    .line 177
    const-string v0, "packExpire"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUP:I

    .line 178
    const-string v0, "packCopyright"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bUR:I

    .line 179
    const-string v0, "timeStamp"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVs:I

    .line 180
    const-string v0, "panelUrl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVt:I

    .line 181
    const-string v0, "priceType"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVu:I

    .line 182
    const-string v0, "sendInfo"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVv:I

    .line 183
    const-string v0, "timeLimitStr"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVw:I

    .line 184
    const-string v0, "bannerImgUrl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVx:I

    .line 185
    const-string v0, "bannerWidth"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVy:I

    .line 186
    const-string v0, "bannerHeight"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVz:I

    .line 187
    const-string v0, "stripUrl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVA:I

    .line 188
    const-string v0, "introduce"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVB:I

    .line 189
    const-string v0, "tagUri"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bVC:I

    .line 190
    const-string v0, "rowid"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/l;->bSe:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public convertFrom(Landroid/database/Cursor;)V
    .locals 5
    .parameter

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 194
    if-nez v1, :cond_1

    .line 273
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 196
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 197
    sget v4, Lcom/tencent/mm/c/b/l;->bVo:I

    if-ne v4, v3, :cond_3

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_productId_type:Ljava/lang/String;

    .line 195
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_3
    sget v4, Lcom/tencent/mm/c/b/l;->bVp:I

    if-ne v4, v3, :cond_4

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_productId:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_4
    sget v4, Lcom/tencent/mm/c/b/l;->bRT:I

    if-ne v4, v3, :cond_5

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/l;->field_type:I

    goto :goto_1

    .line 206
    :cond_5
    sget v4, Lcom/tencent/mm/c/b/l;->bVq:I

    if-ne v4, v3, :cond_6

    .line 207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_iconUrl:Ljava/lang/String;

    goto :goto_1

    .line 209
    :cond_6
    sget v4, Lcom/tencent/mm/c/b/l;->bUJ:I

    if-ne v4, v3, :cond_7

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_packName:Ljava/lang/String;

    goto :goto_1

    .line 212
    :cond_7
    sget v4, Lcom/tencent/mm/c/b/l;->bUK:I

    if-ne v4, v3, :cond_8

    .line 213
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_packDesc:Ljava/lang/String;

    goto :goto_1

    .line 215
    :cond_8
    sget v4, Lcom/tencent/mm/c/b/l;->bUL:I

    if-ne v4, v3, :cond_9

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_packAuthInfo:Ljava/lang/String;

    goto :goto_1

    .line 218
    :cond_9
    sget v4, Lcom/tencent/mm/c/b/l;->bUM:I

    if-ne v4, v3, :cond_a

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_packPrice:Ljava/lang/String;

    goto :goto_1

    .line 221
    :cond_a
    sget v4, Lcom/tencent/mm/c/b/l;->bUN:I

    if-ne v4, v3, :cond_b

    .line 222
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/l;->field_packType:I

    goto :goto_1

    .line 224
    :cond_b
    sget v4, Lcom/tencent/mm/c/b/l;->bUO:I

    if-ne v4, v3, :cond_c

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/l;->field_packFlag:I

    goto :goto_1

    .line 227
    :cond_c
    sget v4, Lcom/tencent/mm/c/b/l;->bVr:I

    if-ne v4, v3, :cond_d

    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_coverUrl:Ljava/lang/String;

    goto :goto_1

    .line 230
    :cond_d
    sget v4, Lcom/tencent/mm/c/b/l;->bUP:I

    if-ne v4, v3, :cond_e

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/l;->field_packExpire:I

    goto :goto_1

    .line 233
    :cond_e
    sget v4, Lcom/tencent/mm/c/b/l;->bUR:I

    if-ne v4, v3, :cond_f

    .line 234
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_packCopyright:Ljava/lang/String;

    goto/16 :goto_1

    .line 236
    :cond_f
    sget v4, Lcom/tencent/mm/c/b/l;->bVs:I

    if-ne v4, v3, :cond_10

    .line 237
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/l;->field_timeStamp:I

    goto/16 :goto_1

    .line 239
    :cond_10
    sget v4, Lcom/tencent/mm/c/b/l;->bVt:I

    if-ne v4, v3, :cond_11

    .line 240
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_panelUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 242
    :cond_11
    sget v4, Lcom/tencent/mm/c/b/l;->bVu:I

    if-ne v4, v3, :cond_12

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_priceType:Ljava/lang/String;

    goto/16 :goto_1

    .line 245
    :cond_12
    sget v4, Lcom/tencent/mm/c/b/l;->bVv:I

    if-ne v4, v3, :cond_13

    .line 246
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_sendInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 248
    :cond_13
    sget v4, Lcom/tencent/mm/c/b/l;->bVw:I

    if-ne v4, v3, :cond_14

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_timeLimitStr:Ljava/lang/String;

    goto/16 :goto_1

    .line 251
    :cond_14
    sget v4, Lcom/tencent/mm/c/b/l;->bVx:I

    if-ne v4, v3, :cond_15

    .line 252
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_bannerImgUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 254
    :cond_15
    sget v4, Lcom/tencent/mm/c/b/l;->bVy:I

    if-ne v4, v3, :cond_16

    .line 255
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/l;->field_bannerWidth:I

    goto/16 :goto_1

    .line 257
    :cond_16
    sget v4, Lcom/tencent/mm/c/b/l;->bVz:I

    if-ne v4, v3, :cond_17

    .line 258
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/l;->field_bannerHeight:I

    goto/16 :goto_1

    .line 260
    :cond_17
    sget v4, Lcom/tencent/mm/c/b/l;->bVA:I

    if-ne v4, v3, :cond_18

    .line 261
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_stripUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 263
    :cond_18
    sget v4, Lcom/tencent/mm/c/b/l;->bVB:I

    if-ne v4, v3, :cond_19

    .line 264
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_introduce:Ljava/lang/String;

    goto/16 :goto_1

    .line 266
    :cond_19
    sget v4, Lcom/tencent/mm/c/b/l;->bVC:I

    if-ne v4, v3, :cond_1a

    .line 267
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/l;->field_tagUri:Ljava/lang/String;

    goto/16 :goto_1

    .line 269
    :cond_1a
    sget v4, Lcom/tencent/mm/c/b/l;->bSe:I

    if-ne v4, v3, :cond_2

    .line 270
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/l;->gfy:J

    goto/16 :goto_1
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 276
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 278
    const-string v1, "productId_type"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_productId_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "productId"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "type"

    iget v2, p0, Lcom/tencent/mm/c/b/l;->field_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_iconUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 282
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_iconUrl:Ljava/lang/String;

    .line 284
    :cond_0
    const-string v1, "iconUrl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 286
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packName:Ljava/lang/String;

    .line 288
    :cond_1
    const-string v1, "packName"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_packName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packDesc:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 290
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packDesc:Ljava/lang/String;

    .line 292
    :cond_2
    const-string v1, "packDesc"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_packDesc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packAuthInfo:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 294
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packAuthInfo:Ljava/lang/String;

    .line 296
    :cond_3
    const-string v1, "packAuthInfo"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_packAuthInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packPrice:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 298
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packPrice:Ljava/lang/String;

    .line 300
    :cond_4
    const-string v1, "packPrice"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_packPrice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "packType"

    iget v2, p0, Lcom/tencent/mm/c/b/l;->field_packType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v1, "packFlag"

    iget v2, p0, Lcom/tencent/mm/c/b/l;->field_packFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_coverUrl:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 304
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_coverUrl:Ljava/lang/String;

    .line 306
    :cond_5
    const-string v1, "coverUrl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "packExpire"

    iget v2, p0, Lcom/tencent/mm/c/b/l;->field_packExpire:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packCopyright:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 309
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_packCopyright:Ljava/lang/String;

    .line 311
    :cond_6
    const-string v1, "packCopyright"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_packCopyright:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "timeStamp"

    iget v2, p0, Lcom/tencent/mm/c/b/l;->field_timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_panelUrl:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 314
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_panelUrl:Ljava/lang/String;

    .line 316
    :cond_7
    const-string v1, "panelUrl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_panelUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_priceType:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 318
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_priceType:Ljava/lang/String;

    .line 320
    :cond_8
    const-string v1, "priceType"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_priceType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_sendInfo:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 322
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_sendInfo:Ljava/lang/String;

    .line 324
    :cond_9
    const-string v1, "sendInfo"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_sendInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_timeLimitStr:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 326
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_timeLimitStr:Ljava/lang/String;

    .line 328
    :cond_a
    const-string v1, "timeLimitStr"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_timeLimitStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_bannerImgUrl:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 330
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_bannerImgUrl:Ljava/lang/String;

    .line 332
    :cond_b
    const-string v1, "bannerImgUrl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_bannerImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "bannerWidth"

    iget v2, p0, Lcom/tencent/mm/c/b/l;->field_bannerWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v1, "bannerHeight"

    iget v2, p0, Lcom/tencent/mm/c/b/l;->field_bannerHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_stripUrl:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 336
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_stripUrl:Ljava/lang/String;

    .line 338
    :cond_c
    const-string v1, "stripUrl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_stripUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/tencent/mm/c/b/l;->field_introduce:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 340
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/l;->field_introduce:Ljava/lang/String;

    .line 342
    :cond_d
    const-string v1, "introduce"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_introduce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "tagUri"

    iget-object v2, p0, Lcom/tencent/mm/c/b/l;->field_tagUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-wide v1, p0, Lcom/tencent/mm/c/b/l;->gfy:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    .line 345
    const-string v1, "rowid"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/l;->gfy:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    :cond_e
    return-object v0
.end method
