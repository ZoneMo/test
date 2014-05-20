.class public final Lcom/tencent/mm/ah/b;
.super Lcom/tencent/mm/sdk/e/ah;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/al;


# static fields
.field private static final cAi:[Ljava/lang/String;

.field public static final cjC:[Ljava/lang/String;


# instance fields
.field private crf:Lcom/tencent/mm/sdk/e/af;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/tencent/mm/ah/a;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v2, "fmessage_conversation"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/e/ah;->a(Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/mm/ah/b;->cjC:[Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CREATE INDEX IF NOT EXISTS  fmessageConversationTalkerIndex ON fmessage_conversation ( talker )"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/mm/ah/b;->cAi:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/e/af;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/tencent/mm/ah/a;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v1, "fmessage_conversation"

    sget-object v2, Lcom/tencent/mm/ah/b;->cAi:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/mm/sdk/e/ah;-><init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 35
    return-void
.end method


# virtual methods
.method public final BD()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "select * from fmessage_conversation  ORDER BY lastModifiedTime DESC"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final Dn()Ljava/util/List;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 52
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v1, "getNewLimit, limit = %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-string v1, "select * from fmessage_conversation  where isNew = 1 ORDER BY lastModifiedTime DESC limit 4"

    .line 56
    iget-object v2, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 59
    const-string v3, "MicroMsg.FMessageConversationStorage"

    const-string v4, "getNewLimit, count = %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    if-gtz v2, :cond_0

    .line 62
    const-string v2, "MicroMsg.FMessageConversationStorage"

    const-string v3, "getNewLimit, cursor count is zero"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 76
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Lcom/tencent/mm/ah/a;

    invoke-direct {v2}, Lcom/tencent/mm/ah/a;-><init>()V

    .line 70
    invoke-virtual {v2, v1}, Lcom/tencent/mm/ah/a;->convertFrom(Landroid/database/Cursor;)V

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final Do()Z
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v1, "fmessage_conversation"

    const-string v2, "update fmessage_conversation set isNew = 0"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/e/af;->aQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v1, "clearAllNew success"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/tencent/mm/ah/b;->Ei()V

    .line 125
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 128
    :cond_0
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v1, "clearAllNew fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Dp()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v2, "select count(*) from fmessage_conversation where isNew = 1"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 140
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    const-string v1, "MicroMsg.FMessageConversationStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNewCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return v0
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v1, "onNotifyChange, id is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 249
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 254
    :goto_1
    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 255
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v1, "onNotifyChange fail, sysRowId is invalid"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    const-string v2, "MicroMsg.FMessageConversationStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onNotifyChange, id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, v3

    goto :goto_1

    .line 259
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sd()I

    move-result v3

    if-nez v3, :cond_3

    .line 260
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v1, "onNotifyChange, account not ready, can not insert fmessageconversation"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    new-instance v3, Lcom/tencent/mm/ah/e;

    invoke-direct {v3}, Lcom/tencent/mm/ah/e;-><init>()V

    .line 265
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/tencent/mm/ah/f;->b(JLcom/tencent/mm/sdk/e/ad;)Z

    move-result v4

    .line 266
    if-nez v4, :cond_4

    .line 267
    const-string v0, "MicroMsg.FMessageConversationStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onNotifyChange, get fail, id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_4
    const-string v4, "MicroMsg.FMessageConversationStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onNotifyChange succ, sysRowId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ah/b;->gB(Ljava/lang/String;)Lcom/tencent/mm/ah/a;

    move-result-object v4

    .line 274
    if-nez v4, :cond_9

    .line 275
    const-string v4, "MicroMsg.FMessageConversationStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onNotifyChange, fmessage conversation does not exist, insert a new one, talker = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v4, Lcom/tencent/mm/ah/a;

    invoke-direct {v4}, Lcom/tencent/mm/ah/a;-><init>()V

    .line 278
    iget v5, v3, Lcom/tencent/mm/ah/e;->field_type:I

    if-nez v5, :cond_8

    .line 279
    iget-object v5, v3, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/storage/al;->uQ(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v5

    .line 280
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_displayName:Ljava/lang/String;

    .line 281
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->Gf()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->aCy()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 282
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->aCy()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_displayName:Ljava/lang/String;

    .line 284
    :cond_5
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->Gf()I

    move-result v6

    iput v6, v4, Lcom/tencent/mm/ah/a;->field_addScene:I

    .line 285
    iput v8, v4, Lcom/tencent/mm/ah/a;->field_isNew:I

    .line 288
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_contentFromUsername:Ljava/lang/String;

    .line 289
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->kn()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_contentNickname:Ljava/lang/String;

    .line 290
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_contentPhoneNumMD5:Ljava/lang/String;

    .line 291
    invoke-virtual {v5}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/ah/a;->field_contentFullPhoneNumMD5:Ljava/lang/String;

    .line 305
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/mm/ah/a;->field_lastModifiedTime:J

    .line 306
    iput v0, v4, Lcom/tencent/mm/ah/a;->field_state:I

    .line 307
    iget-object v5, v3, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    .line 308
    iget-object v5, v3, Lcom/tencent/mm/ah/e;->field_encryptTalker:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/ah/a;->field_encryptTalker:Ljava/lang/String;

    .line 310
    iput-wide v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgSysRowId:J

    .line 311
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    iput v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgIsSend:I

    .line 312
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_type:I

    iput v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgType:I

    .line 313
    iget-object v1, v3, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    iput-object v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgContent:Ljava/lang/String;

    .line 314
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    if-nez v1, :cond_7

    iget v0, v3, Lcom/tencent/mm/ah/e;->field_type:I

    :cond_7
    iput v0, v4, Lcom/tencent/mm/ah/a;->field_recvFmsgType:I

    .line 315
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ah/b;->b(Lcom/tencent/mm/sdk/e/ad;)Z

    goto/16 :goto_0

    .line 293
    :cond_8
    iget v5, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    if-nez v5, :cond_6

    .line 294
    iget-object v5, v3, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/storage/ao;->uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v5

    .line 295
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ao;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_displayName:Ljava/lang/String;

    .line 296
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v6

    iput v6, v4, Lcom/tencent/mm/ah/a;->field_addScene:I

    .line 297
    iput v8, v4, Lcom/tencent/mm/ah/a;->field_isNew:I

    .line 299
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_contentFromUsername:Ljava/lang/String;

    .line 300
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ao;->kn()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tencent/mm/ah/a;->field_contentNickname:Ljava/lang/String;

    .line 301
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/ah/a;->field_contentVerifyContent:Ljava/lang/String;

    goto :goto_2

    .line 317
    :cond_9
    const-string v5, "MicroMsg.FMessageConversationStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onNotifyChange, fmessage conversation has existed, talker = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/tencent/mm/ah/e;->field_talker:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget v5, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    if-nez v5, :cond_a

    .line 319
    iput v8, v4, Lcom/tencent/mm/ah/a;->field_isNew:I

    .line 321
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/mm/ah/a;->field_lastModifiedTime:J

    .line 322
    iget-object v5, v3, Lcom/tencent/mm/ah/e;->field_encryptTalker:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/ah/a;->field_encryptTalker:Ljava/lang/String;

    .line 324
    iput-wide v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgSysRowId:J

    .line 325
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    iput v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgIsSend:I

    .line 326
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_type:I

    iput v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgType:I

    .line 327
    iget-object v1, v3, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    iput-object v1, v4, Lcom/tencent/mm/ah/a;->field_fmsgContent:Ljava/lang/String;

    .line 328
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    if-nez v1, :cond_b

    .line 329
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_type:I

    iput v1, v4, Lcom/tencent/mm/ah/a;->field_recvFmsgType:I

    .line 333
    :cond_b
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_type:I

    if-nez v1, :cond_d

    .line 334
    iget-object v1, v3, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/storage/al;->uQ(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/mm/ah/a;->field_contentFromUsername:Ljava/lang/String;

    .line 336
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->kn()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/mm/ah/a;->field_contentNickname:Ljava/lang/String;

    .line 337
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/mm/ah/a;->field_contentPhoneNumMD5:Ljava/lang/String;

    .line 338
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/mm/ah/a;->field_contentFullPhoneNumMD5:Ljava/lang/String;

    .line 346
    :cond_c
    :goto_3
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/tencent/mm/ah/b;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 340
    :cond_d
    iget v1, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    if-nez v1, :cond_c

    .line 341
    iget-object v1, v3, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/storage/ao;->uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/mm/ah/a;->field_contentVerifyContent:Ljava/lang/String;

    goto :goto_3
.end method

.method public final gA(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    const-string v1, "MicroMsg.FMessageConversationStorage"

    const-string v2, "unsetNew fail, talker is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ah/b;->gB(Ljava/lang/String;)Lcom/tencent/mm/ah/a;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    :cond_2
    const-string v1, "MicroMsg.FMessageConversationStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsetNew fail, conversation does not exist, talker = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    iput v0, v1, Lcom/tencent/mm/ah/a;->field_isNew:I

    .line 158
    new-array v0, v0, [Ljava/lang/String;

    invoke-super {p0, v1, v0}, Lcom/tencent/mm/sdk/e/ah;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final gB(Ljava/lang/String;)Lcom/tencent/mm/ah/a;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 190
    :cond_0
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v2, "get fail, talker is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 202
    :cond_1
    :goto_0
    return-object v0

    .line 194
    :cond_2
    new-instance v0, Lcom/tencent/mm/ah/a;

    invoke-direct {v0}, Lcom/tencent/mm/ah/a;-><init>()V

    .line 195
    iput-object p1, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    .line 197
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-super {p0, v0, v2}, Lcom/tencent/mm/sdk/e/ah;->c(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    const-string v0, "MicroMsg.FMessageConversationStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get fail, maybe not exist, talker = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 202
    goto :goto_0
.end method

.method public final gC(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    .line 206
    new-instance v0, Lcom/tencent/mm/ah/a;

    invoke-direct {v0}, Lcom/tencent/mm/ah/a;-><init>()V

    .line 207
    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/mm/ah/a;->field_state:I

    .line 208
    const-string v1, "select %s from %s where %s = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fmessage_conversation"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "talker"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Lcom/tencent/mm/ap/i;->bQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/a;->convertFrom(Landroid/database/Cursor;)V

    .line 219
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    iget v0, v0, Lcom/tencent/mm/ah/a;->field_state:I

    return v0
.end method

.method public final gD(Ljava/lang/String;)Lcom/tencent/mm/ah/a;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    const-string v1, "MicroMsg.FMessageConversationStorage"

    const-string v2, "get fail, encryptTalker is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-object v0

    .line 229
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from fmessage_conversation  where encryptTalker="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/ap/i;->bQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    invoke-interface {v2, v1, v0}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    new-instance v0, Lcom/tencent/mm/ah/a;

    invoke-direct {v0}, Lcom/tencent/mm/ah/a;-><init>()V

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 234
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/a;->convertFrom(Landroid/database/Cursor;)V

    .line 236
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final gE(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 366
    :cond_0
    const-string v1, "MicroMsg.FMessageConversationStorage"

    const-string v2, "deleteByTalker fail, talker is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_1
    :goto_0
    return v0

    .line 370
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete from fmessage_conversation where talker = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "fmessage_conversation"

    invoke-interface {v2, v3, v1}, Lcom/tencent/mm/sdk/e/af;->aQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 372
    if-eqz v1, :cond_1

    .line 373
    const-string v0, "MicroMsg.FMessageConversationStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteByTalker success, talker = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ah/b;->th(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/tencent/mm/ah/b;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v2, "select count(*) from fmessage_conversation"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 87
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    const-string v1, "MicroMsg.FMessageConversationStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return v0
.end method

.method public final v(Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 94
    :cond_0
    const-string v1, "MicroMsg.FMessageConversationStorage"

    const-string v2, "updateState fail, talker is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    :goto_0
    return v0

    .line 98
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ah/b;->gB(Ljava/lang/String;)Lcom/tencent/mm/ah/a;

    move-result-object v2

    .line 99
    if-nez v2, :cond_3

    .line 100
    const-string v1, "MicroMsg.FMessageConversationStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateState fail, get fail, talker = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    iget v3, v2, Lcom/tencent/mm/ah/a;->field_state:I

    if-ne p2, v3, :cond_4

    .line 105
    const-string v0, "MicroMsg.FMessageConversationStorage"

    const-string v2, "updateState, no need to update"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_4
    iput p2, v2, Lcom/tencent/mm/ah/a;->field_state:I

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/mm/ah/a;->field_lastModifiedTime:J

    .line 112
    new-array v3, v0, [Ljava/lang/String;

    invoke-super {p0, v2, v3}, Lcom/tencent/mm/sdk/e/ah;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ah/b;->th(Ljava/lang/String;)V

    move v0, v1

    .line 114
    goto :goto_0
.end method
