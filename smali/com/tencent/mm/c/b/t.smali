.class public abstract Lcom/tencent/mm/c/b/t;
.super Lcom/tencent/mm/sdk/e/ad;
.source "SourceFile"


# static fields
.field public static final bRN:[Ljava/lang/String;

.field private static final bRO:I

.field private static final bRY:I

.field private static final bSU:I

.field private static final bSe:I

.field private static final bSf:I

.field private static final bSh:I

.field private static final bSw:I

.field private static final bUV:I

.field private static final bUu:I

.field private static final bWE:I

.field private static final bWJ:I

.field private static final bWK:I

.field private static final bWL:I

.field private static final bWM:I

.field private static final bWN:I

.field private static final bWO:I

.field private static final bWP:I

.field private static final bWQ:I

.field private static final bWR:I

.field private static final bWm:I

.field private static final bWn:I


# instance fields
.field public bOY:I

.field public bWS:I

.field public bWT:Ljava/lang/String;

.field public bWU:Ljava/lang/String;

.field public bWV:Ljava/lang/String;

.field public bWW:I

.field public bWX:I

.field public bWY:Ljava/lang/String;

.field public bWZ:Ljava/lang/String;

.field public bXa:I

.field public bXb:Ljava/lang/String;

.field public bXc:Ljava/lang/String;

.field public bXd:Ljava/lang/String;

.field public bXe:Ljava/lang/String;

.field public bXf:Ljava/lang/String;

.field public bXg:I

.field public bXh:J

.field public field_appIconUrl:Ljava/lang/String;

.field public field_appId:Ljava/lang/String;

.field public field_appName:Ljava/lang/String;

.field public field_createTime:J

.field public field_downloadUrl:Ljava/lang/String;

.field public field_formatcontent:Ljava/lang/String;

.field public field_fromUserName:Ljava/lang/String;

.field public field_isRead:I

.field public field_localMsgId:J

.field public field_localSeq:J

.field public field_lvbuff:[B

.field public field_md5:Ljava/lang/String;

.field public field_msgId:J

.field public field_msgType:I

.field public field_noticeId:Ljava/lang/String;

.field public field_showiconurl:Ljava/lang/String;

.field public field_toUsername:Ljava/lang/String;

.field public field_updateSeq:J

.field public field_url:Ljava/lang/String;

.field public field_userName:Ljava/lang/String;

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE INDEX IF NOT EXISTS game_message_index ON GameMessage(msgId)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/c/b/t;->bRN:[Ljava/lang/String;

    .line 143
    const-string v0, "msgId"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bSU:I

    .line 144
    const-string v0, "localMsgId"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWJ:I

    .line 145
    const-string v0, "userName"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWK:I

    .line 146
    const-string v0, "msgType"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bUu:I

    .line 147
    const-string v0, "appId"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bRO:I

    .line 148
    const-string v0, "appIconUrl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bSh:I

    .line 149
    const-string v0, "appName"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bSf:I

    .line 150
    const-string v0, "downloadUrl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWE:I

    .line 151
    const-string v0, "url"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWL:I

    .line 152
    const-string v0, "formatcontent"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWM:I

    .line 153
    const-string v0, "isRead"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWN:I

    .line 154
    const-string v0, "createTime"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bRY:I

    .line 155
    const-string v0, "md5"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bUV:I

    .line 156
    const-string v0, "noticeId"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWO:I

    .line 157
    const-string v0, "showiconurl"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWP:I

    .line 158
    const-string v0, "localSeq"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWm:I

    .line 159
    const-string v0, "updateSeq"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWn:I

    .line 160
    const-string v0, "fromUserName"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWQ:I

    .line 161
    const-string v0, "toUsername"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bWR:I

    .line 162
    const-string v0, "lvbuff"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bSw:I

    .line 163
    const-string v0, "rowid"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/t;->bSe:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public convertFrom(Landroid/database/Cursor;)V
    .locals 5
    .parameter

    .prologue
    .line 166
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 167
    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_17

    .line 169
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 170
    sget v4, Lcom/tencent/mm/c/b/t;->bSU:I

    if-ne v4, v3, :cond_3

    .line 171
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/t;->field_msgId:J

    .line 168
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_3
    sget v4, Lcom/tencent/mm/c/b/t;->bWJ:I

    if-ne v4, v3, :cond_4

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/t;->field_localMsgId:J

    goto :goto_2

    .line 176
    :cond_4
    sget v4, Lcom/tencent/mm/c/b/t;->bWK:I

    if-ne v4, v3, :cond_5

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_userName:Ljava/lang/String;

    goto :goto_2

    .line 179
    :cond_5
    sget v4, Lcom/tencent/mm/c/b/t;->bUu:I

    if-ne v4, v3, :cond_6

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/t;->field_msgType:I

    goto :goto_2

    .line 182
    :cond_6
    sget v4, Lcom/tencent/mm/c/b/t;->bRO:I

    if-ne v4, v3, :cond_7

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_appId:Ljava/lang/String;

    goto :goto_2

    .line 185
    :cond_7
    sget v4, Lcom/tencent/mm/c/b/t;->bSh:I

    if-ne v4, v3, :cond_8

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_appIconUrl:Ljava/lang/String;

    goto :goto_2

    .line 188
    :cond_8
    sget v4, Lcom/tencent/mm/c/b/t;->bSf:I

    if-ne v4, v3, :cond_9

    .line 189
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_appName:Ljava/lang/String;

    goto :goto_2

    .line 191
    :cond_9
    sget v4, Lcom/tencent/mm/c/b/t;->bWE:I

    if-ne v4, v3, :cond_a

    .line 192
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_downloadUrl:Ljava/lang/String;

    goto :goto_2

    .line 194
    :cond_a
    sget v4, Lcom/tencent/mm/c/b/t;->bWL:I

    if-ne v4, v3, :cond_b

    .line 195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_url:Ljava/lang/String;

    goto :goto_2

    .line 197
    :cond_b
    sget v4, Lcom/tencent/mm/c/b/t;->bWM:I

    if-ne v4, v3, :cond_c

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_formatcontent:Ljava/lang/String;

    goto :goto_2

    .line 200
    :cond_c
    sget v4, Lcom/tencent/mm/c/b/t;->bWN:I

    if-ne v4, v3, :cond_d

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/t;->field_isRead:I

    goto :goto_2

    .line 203
    :cond_d
    sget v4, Lcom/tencent/mm/c/b/t;->bRY:I

    if-ne v4, v3, :cond_e

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/t;->field_createTime:J

    goto :goto_2

    .line 206
    :cond_e
    sget v4, Lcom/tencent/mm/c/b/t;->bUV:I

    if-ne v4, v3, :cond_f

    .line 207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_md5:Ljava/lang/String;

    goto/16 :goto_2

    .line 209
    :cond_f
    sget v4, Lcom/tencent/mm/c/b/t;->bWO:I

    if-ne v4, v3, :cond_10

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_noticeId:Ljava/lang/String;

    goto/16 :goto_2

    .line 212
    :cond_10
    sget v4, Lcom/tencent/mm/c/b/t;->bWP:I

    if-ne v4, v3, :cond_11

    .line 213
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_showiconurl:Ljava/lang/String;

    goto/16 :goto_2

    .line 215
    :cond_11
    sget v4, Lcom/tencent/mm/c/b/t;->bWm:I

    if-ne v4, v3, :cond_12

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/t;->field_localSeq:J

    goto/16 :goto_2

    .line 218
    :cond_12
    sget v4, Lcom/tencent/mm/c/b/t;->bWn:I

    if-ne v4, v3, :cond_13

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/t;->field_updateSeq:J

    goto/16 :goto_2

    .line 221
    :cond_13
    sget v4, Lcom/tencent/mm/c/b/t;->bWQ:I

    if-ne v4, v3, :cond_14

    .line 222
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_fromUserName:Ljava/lang/String;

    goto/16 :goto_2

    .line 224
    :cond_14
    sget v4, Lcom/tencent/mm/c/b/t;->bWR:I

    if-ne v4, v3, :cond_15

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_toUsername:Ljava/lang/String;

    goto/16 :goto_2

    .line 227
    :cond_15
    sget v4, Lcom/tencent/mm/c/b/t;->bSw:I

    if-ne v4, v3, :cond_16

    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/t;->field_lvbuff:[B

    goto/16 :goto_2

    .line 230
    :cond_16
    sget v4, Lcom/tencent/mm/c/b/t;->bSe:I

    if-ne v4, v3, :cond_2

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/t;->gfy:J

    goto/16 :goto_2

    .line 234
    :cond_17
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/c/b/t;->field_lvbuff:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/c/b/t;->field_lvbuff:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/platformtools/y;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/y;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->field_lvbuff:[B

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->cl([B)I

    move-result v1

    if-eqz v1, :cond_18

    const-string v0, "MicroMsg.SDK.BaseGameMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse LVBuffer error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SDK.BaseGameMessage"

    const-string v1, "get value failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/t;->bWS:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bWT:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bWU:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bWV:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/t;->bWW:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/t;->bWX:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bWY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bWZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/t;->bXa:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bXb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bXc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bXd:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bXe:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/t;->bOY:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/t;->status:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/t;->bXf:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/t;->bXg:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/c/b/t;->bXh:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 238
    :try_start_0
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/y;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/y;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azg()I

    iget v1, p0, Lcom/tencent/mm/c/b/t;->bWS:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bWT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bWU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bWV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/t;->bWW:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget v1, p0, Lcom/tencent/mm/c/b/t;->bWX:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bWY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bWZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/t;->bXa:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bXb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bXc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bXd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bXe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/t;->bOY:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget v1, p0, Lcom/tencent/mm/c/b/t;->status:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/t;->bXf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/t;->bXg:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-wide v1, p0, Lcom/tencent/mm/c/b/t;->bXh:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/y;->bN(J)I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azh()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/t;->field_lvbuff:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 240
    const-string v1, "msgId"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/t;->field_msgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v1, "localMsgId"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/t;->field_localMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    const-string v1, "userName"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "msgType"

    iget v2, p0, Lcom/tencent/mm/c/b/t;->field_msgType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "appId"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "appIconUrl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_appIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "appName"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "downloadUrl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "url"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "formatcontent"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_formatcontent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "isRead"

    iget v2, p0, Lcom/tencent/mm/c/b/t;->field_isRead:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "createTime"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/t;->field_createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v1, "md5"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_md5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "noticeId"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_noticeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "showiconurl"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_showiconurl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "localSeq"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/t;->field_localSeq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    const-string v1, "updateSeq"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/t;->field_updateSeq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    const-string v1, "fromUserName"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_fromUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "toUsername"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_toUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "lvbuff"

    iget-object v2, p0, Lcom/tencent/mm/c/b/t;->field_lvbuff:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 260
    iget-wide v1, p0, Lcom/tencent/mm/c/b/t;->gfy:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 261
    const-string v1, "rowid"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/t;->gfy:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    :cond_0
    return-object v0

    .line 238
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SDK.BaseGameMessage"

    const-string v1, "get value failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
