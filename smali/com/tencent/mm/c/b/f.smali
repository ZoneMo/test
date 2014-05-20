.class public abstract Lcom/tencent/mm/c/b/f;
.super Lcom/tencent/mm/sdk/e/ad;
.source "SourceFile"


# static fields
.field public static final bRN:[Ljava/lang/String;

.field private static final bRT:I

.field private static final bSZ:I

.field private static final bSe:I

.field private static final bSw:I

.field private static final bTA:I

.field private static final bTB:I

.field private static final bTC:I

.field private static final bTD:I

.field private static final bTE:I

.field private static final bTF:I

.field private static final bTG:I

.field private static final bTH:I

.field private static final bTI:I

.field private static final bTJ:I

.field private static final bTK:I

.field private static final bTL:I

.field private static final bTx:I

.field private static final bTy:I

.field private static final bTz:I


# instance fields
.field public bTM:I

.field public bTN:I

.field public bTO:Ljava/lang/String;

.field public bTP:J

.field public bTQ:Ljava/lang/String;

.field public bTR:Ljava/lang/String;

.field public bTS:I

.field public bTT:I

.field public bTU:Ljava/lang/String;

.field public bTV:Ljava/lang/String;

.field public bTW:I

.field public bTX:I

.field public bTY:Ljava/lang/String;

.field public bTZ:Ljava/lang/String;

.field public bUa:Ljava/lang/String;

.field public bUb:Ljava/lang/String;

.field public bUc:I

.field public bUd:I

.field public bUe:Ljava/lang/String;

.field public bUf:Ljava/lang/String;

.field public bUg:Ljava/lang/String;

.field public bUh:I

.field public bUi:I

.field public bUj:Ljava/lang/String;

.field public bUk:Ljava/lang/String;

.field public bUl:Ljava/lang/String;

.field public bUm:Ljava/lang/String;

.field public bUn:Ljava/lang/String;

.field public field_alias:Ljava/lang/String;

.field public field_chatroomFlag:I

.field public field_conRemark:Ljava/lang/String;

.field public field_conRemarkPYFull:Ljava/lang/String;

.field public field_conRemarkPYShort:Ljava/lang/String;

.field public field_deleteFlag:I

.field public field_domainList:Ljava/lang/String;

.field public field_encryptUsername:Ljava/lang/String;

.field public field_lvbuff:[B

.field public field_nickname:Ljava/lang/String;

.field public field_pyInitial:Ljava/lang/String;

.field public field_quanPin:Ljava/lang/String;

.field public field_showHead:I

.field public field_type:I

.field public field_username:Ljava/lang/String;

.field public field_verifyFlag:I

.field public field_weiboFlag:I

.field public field_weiboNickname:Ljava/lang/String;

.field public uin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/c/b/f;->bRN:[Ljava/lang/String;

    .line 131
    const-string v0, "username"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bSZ:I

    .line 132
    const-string v0, "alias"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTx:I

    .line 133
    const-string v0, "conRemark"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTy:I

    .line 134
    const-string v0, "domainList"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTz:I

    .line 135
    const-string v0, "nickname"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTA:I

    .line 136
    const-string v0, "pyInitial"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTB:I

    .line 137
    const-string v0, "quanPin"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTC:I

    .line 138
    const-string v0, "showHead"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTD:I

    .line 139
    const-string v0, "type"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bRT:I

    .line 140
    const-string v0, "weiboFlag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTE:I

    .line 141
    const-string v0, "weiboNickname"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTF:I

    .line 142
    const-string v0, "conRemarkPYFull"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTG:I

    .line 143
    const-string v0, "conRemarkPYShort"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTH:I

    .line 144
    const-string v0, "lvbuff"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bSw:I

    .line 145
    const-string v0, "verifyFlag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTI:I

    .line 146
    const-string v0, "encryptUsername"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTJ:I

    .line 147
    const-string v0, "chatroomFlag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTK:I

    .line 148
    const-string v0, "deleteFlag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bTL:I

    .line 149
    const-string v0, "rowid"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/f;->bSe:I

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
    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 153
    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_15

    .line 155
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 156
    sget v4, Lcom/tencent/mm/c/b/f;->bSZ:I

    if-ne v4, v3, :cond_3

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_username:Ljava/lang/String;

    .line 154
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_3
    sget v4, Lcom/tencent/mm/c/b/f;->bTx:I

    if-ne v4, v3, :cond_4

    .line 160
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_alias:Ljava/lang/String;

    goto :goto_2

    .line 162
    :cond_4
    sget v4, Lcom/tencent/mm/c/b/f;->bTy:I

    if-ne v4, v3, :cond_5

    .line 163
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_conRemark:Ljava/lang/String;

    goto :goto_2

    .line 165
    :cond_5
    sget v4, Lcom/tencent/mm/c/b/f;->bTz:I

    if-ne v4, v3, :cond_6

    .line 166
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_domainList:Ljava/lang/String;

    goto :goto_2

    .line 168
    :cond_6
    sget v4, Lcom/tencent/mm/c/b/f;->bTA:I

    if-ne v4, v3, :cond_7

    .line 169
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_nickname:Ljava/lang/String;

    goto :goto_2

    .line 171
    :cond_7
    sget v4, Lcom/tencent/mm/c/b/f;->bTB:I

    if-ne v4, v3, :cond_8

    .line 172
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_pyInitial:Ljava/lang/String;

    goto :goto_2

    .line 174
    :cond_8
    sget v4, Lcom/tencent/mm/c/b/f;->bTC:I

    if-ne v4, v3, :cond_9

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_quanPin:Ljava/lang/String;

    goto :goto_2

    .line 177
    :cond_9
    sget v4, Lcom/tencent/mm/c/b/f;->bTD:I

    if-ne v4, v3, :cond_a

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/f;->field_showHead:I

    goto :goto_2

    .line 180
    :cond_a
    sget v4, Lcom/tencent/mm/c/b/f;->bRT:I

    if-ne v4, v3, :cond_b

    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/f;->field_type:I

    goto :goto_2

    .line 183
    :cond_b
    sget v4, Lcom/tencent/mm/c/b/f;->bTE:I

    if-ne v4, v3, :cond_c

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/f;->field_weiboFlag:I

    goto :goto_2

    .line 186
    :cond_c
    sget v4, Lcom/tencent/mm/c/b/f;->bTF:I

    if-ne v4, v3, :cond_d

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_weiboNickname:Ljava/lang/String;

    goto :goto_2

    .line 189
    :cond_d
    sget v4, Lcom/tencent/mm/c/b/f;->bTG:I

    if-ne v4, v3, :cond_e

    .line 190
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYFull:Ljava/lang/String;

    goto :goto_2

    .line 192
    :cond_e
    sget v4, Lcom/tencent/mm/c/b/f;->bTH:I

    if-ne v4, v3, :cond_f

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYShort:Ljava/lang/String;

    goto/16 :goto_2

    .line 195
    :cond_f
    sget v4, Lcom/tencent/mm/c/b/f;->bSw:I

    if-ne v4, v3, :cond_10

    .line 196
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_lvbuff:[B

    goto/16 :goto_2

    .line 198
    :cond_10
    sget v4, Lcom/tencent/mm/c/b/f;->bTI:I

    if-ne v4, v3, :cond_11

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/f;->field_verifyFlag:I

    goto/16 :goto_2

    .line 201
    :cond_11
    sget v4, Lcom/tencent/mm/c/b/f;->bTJ:I

    if-ne v4, v3, :cond_12

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/c/b/f;->field_encryptUsername:Ljava/lang/String;

    goto/16 :goto_2

    .line 204
    :cond_12
    sget v4, Lcom/tencent/mm/c/b/f;->bTK:I

    if-ne v4, v3, :cond_13

    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/f;->field_chatroomFlag:I

    goto/16 :goto_2

    .line 207
    :cond_13
    sget v4, Lcom/tencent/mm/c/b/f;->bTL:I

    if-ne v4, v3, :cond_14

    .line 208
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/c/b/f;->field_deleteFlag:I

    goto/16 :goto_2

    .line 210
    :cond_14
    sget v4, Lcom/tencent/mm/c/b/f;->bSe:I

    if-ne v4, v3, :cond_2

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/c/b/f;->gfy:J

    goto/16 :goto_2

    .line 214
    :cond_15
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/c/b/f;->field_lvbuff:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/c/b/f;->field_lvbuff:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/sdk/platformtools/y;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/y;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_lvbuff:[B

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->cl([B)I

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "MicroMsg.SDK.BaseContact"

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

    const-string v0, "MicroMsg.SDK.BaseContact"

    const-string v1, "get value failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bTM:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bTN:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bTO:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/c/b/f;->bTP:J

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->uin:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bTQ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bTR:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bTS:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bTT:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bTU:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bTV:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bTW:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bTX:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bTY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bTZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUa:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bUc:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bUd:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUe:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->field_verifyFlag:I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUf:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUg:Ljava/lang/String;

    :cond_17
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bUh:I

    :cond_18
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getInt()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/c/b/f;->bUi:I

    :cond_19
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUj:Ljava/lang/String;

    :cond_1a
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUk:Ljava/lang/String;

    :cond_1b
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUl:Ljava/lang/String;

    :cond_1c
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->bUm:Ljava/lang/String;

    :cond_1d
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azf()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/f;->bUn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 218
    :try_start_0
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/y;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/y;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azg()I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bTM:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bTN:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bTO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/tencent/mm/c/b/f;->bTP:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/y;->bN(J)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->uin:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bTQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bTR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bTS:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bTT:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bTU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bTV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bTW:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bTX:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bTZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bUc:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bUd:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->field_verifyFlag:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bUh:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget v1, p0, Lcom/tencent/mm/c/b/f;->bUi:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->lG(I)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->bUn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/y;->sz(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/y;->azh()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/f;->field_lvbuff:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_username:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 221
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_username:Ljava/lang/String;

    .line 223
    :cond_0
    const-string v1, "username"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_alias:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 225
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_alias:Ljava/lang/String;

    .line 227
    :cond_1
    const-string v1, "alias"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_conRemark:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 229
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_conRemark:Ljava/lang/String;

    .line 231
    :cond_2
    const-string v1, "conRemark"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_conRemark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_domainList:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 233
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_domainList:Ljava/lang/String;

    .line 235
    :cond_3
    const-string v1, "domainList"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_domainList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_nickname:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 237
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_nickname:Ljava/lang/String;

    .line 239
    :cond_4
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_pyInitial:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 241
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_pyInitial:Ljava/lang/String;

    .line 243
    :cond_5
    const-string v1, "pyInitial"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_pyInitial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_quanPin:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 245
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_quanPin:Ljava/lang/String;

    .line 247
    :cond_6
    const-string v1, "quanPin"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_quanPin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "showHead"

    iget v2, p0, Lcom/tencent/mm/c/b/f;->field_showHead:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v1, "type"

    iget v2, p0, Lcom/tencent/mm/c/b/f;->field_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v1, "weiboFlag"

    iget v2, p0, Lcom/tencent/mm/c/b/f;->field_weiboFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_weiboNickname:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 252
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_weiboNickname:Ljava/lang/String;

    .line 254
    :cond_7
    const-string v1, "weiboNickname"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_weiboNickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYFull:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 256
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYFull:Ljava/lang/String;

    .line 258
    :cond_8
    const-string v1, "conRemarkPYFull"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYFull:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYShort:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 260
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYShort:Ljava/lang/String;

    .line 262
    :cond_9
    const-string v1, "conRemarkPYShort"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_conRemarkPYShort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "lvbuff"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_lvbuff:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 264
    const-string v1, "verifyFlag"

    iget v2, p0, Lcom/tencent/mm/c/b/f;->field_verifyFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    iget-object v1, p0, Lcom/tencent/mm/c/b/f;->field_encryptUsername:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 266
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/c/b/f;->field_encryptUsername:Ljava/lang/String;

    .line 268
    :cond_a
    const-string v1, "encryptUsername"

    iget-object v2, p0, Lcom/tencent/mm/c/b/f;->field_encryptUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "chatroomFlag"

    iget v2, p0, Lcom/tencent/mm/c/b/f;->field_chatroomFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v1, "deleteFlag"

    iget v2, p0, Lcom/tencent/mm/c/b/f;->field_deleteFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    iget-wide v1, p0, Lcom/tencent/mm/c/b/f;->gfy:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_b

    .line 272
    const-string v1, "rowid"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/f;->gfy:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    :cond_b
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SDK.BaseContact"

    const-string v1, "get value failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
