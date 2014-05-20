.class public final Lcom/tencent/mm/storage/aa;
.super Lcom/tencent/mm/sdk/e/ah;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ap/h;


# static fields
.field public static final cjC:[Ljava/lang/String;


# instance fields
.field private crf:Lcom/tencent/mm/sdk/e/af;

.field private ghz:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/mm/storage/z;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v3, "EmojiInfoDesc"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/e/ah;->a(Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/storage/aa;->cjC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/e/af;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/mm/storage/z;->cfX:Lcom/tencent/mm/sdk/e/ae;

    const-string v1, "EmojiInfoDesc"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/storage/aa;-><init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/mm/sdk/e/ah;-><init>(Lcom/tencent/mm/sdk/e/af;Lcom/tencent/mm/sdk/e/ae;Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 56
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/aa;->ghz:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method

.method public static aBM()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method private uC(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    const-string v2, "select %s from %s where %s=?"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "desc"

    aput-object v4, v3, v0

    const-string v4, "EmojiInfoDesc"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "groupId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "lang"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v0

    .line 204
    const/4 v2, 0x0

    .line 206
    :try_start_0
    iget-object v5, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    invoke-interface {v5, v3, v4}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 213
    :cond_0
    if-eqz v2, :cond_1

    .line 214
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_1
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    if-eqz v2, :cond_1

    .line 214
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 214
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ap/g;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    .line 64
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 180
    :goto_0
    return v1

    .line 144
    :cond_1
    const/4 v3, 0x0

    .line 145
    const-wide/16 v1, -0x1

    .line 146
    iget-object v4, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    instance-of v4, v4, Lcom/tencent/mm/ap/i;

    if-eqz v4, :cond_7

    .line 147
    iget-object v1, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    check-cast v1, Lcom/tencent/mm/ap/i;

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v2

    move-object v4, v1

    .line 151
    :goto_1
    new-instance v5, Lcom/tencent/mm/storage/z;

    invoke-direct {v5}, Lcom/tencent/mm/storage/z;-><init>()V

    .line 152
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/tencent/mm/storage/z;->field_groupId:Ljava/lang/String;

    .line 153
    move/from16 v0, p3

    iput v0, v5, Lcom/tencent/mm/storage/z;->field_click_flag:I

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/ey;

    .line 155
    iget-object v7, v1, Lcom/tencent/mm/protocal/a/ey;->fFA:Ljava/lang/String;

    iput-object v7, v5, Lcom/tencent/mm/storage/z;->field_md5:Ljava/lang/String;

    .line 156
    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ey;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/a/ml;

    .line 157
    iget-object v8, v1, Lcom/tencent/mm/protocal/a/ml;->fEA:Ljava/lang/String;

    iput-object v8, v5, Lcom/tencent/mm/storage/z;->field_desc:Ljava/lang/String;

    .line 158
    iget-object v1, v1, Lcom/tencent/mm/protocal/a/ml;->fzH:Ljava/lang/String;

    iput-object v1, v5, Lcom/tencent/mm/storage/z;->field_lang:Ljava/lang/String;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/tencent/mm/storage/z;->field_md5:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v5, Lcom/tencent/mm/storage/z;->field_lang:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/mm/storage/z;->field_md5_lang:Ljava/lang/String;

    .line 160
    invoke-virtual {v5}, Lcom/tencent/mm/storage/z;->oa()Landroid/content/ContentValues;

    move-result-object v1

    .line 161
    iget-object v8, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v9, "EmojiInfoDesc"

    const-string v10, "md5_lang"

    invoke-interface {v8, v9, v10, v1}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 163
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gez v1, :cond_3

    .line 164
    if-eqz v4, :cond_4

    .line 165
    invoke-virtual {v4, v2, v3}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 167
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 172
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v6, "EmojiInfoDesc"

    const-string v7, "md5_lang"

    invoke-virtual {v5}, Lcom/tencent/mm/storage/z;->oa()Landroid/content/ContentValues;

    move-result-object v5

    invoke-interface {v1, v6, v7, v5}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 174
    if-eqz v4, :cond_6

    .line 175
    invoke-virtual {v4, v2, v3}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 178
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/storage/aa;->ghz:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "274544"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    move-object v4, v3

    move-wide v12, v1

    move-wide v2, v12

    goto/16 :goto_1
.end method

.method public final synthetic b(Lcom/tencent/mm/sdk/e/ad;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    check-cast p1, Lcom/tencent/mm/storage/z;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/z;->aBE()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/mm/storage/z;->field_md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/mm/storage/z;->field_lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/storage/z;->field_md5_lang:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/z;->oa()Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    const-string v3, "EmojiInfoDesc"

    const-string v4, "md5_lang"

    invoke-interface {v2, v3, v4, v1}, Lcom/tencent/mm/sdk/e/af;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/z;->yK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tencent/mm/storage/aa;->th(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final jh(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    const/4 v0, 0x0

    .line 92
    const-string v1, "select %s from %s where %s=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "desc"

    aput-object v3, v2, v5

    const-string v3, "EmojiInfoDesc"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "md5_lang"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 95
    iget-object v3, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    invoke-interface {v3, v1, v2}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v0, "desc"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 100
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 105
    iget-object v3, p0, Lcom/tencent/mm/storage/aa;->crf:Lcom/tencent/mm/sdk/e/af;

    invoke-interface {v3, v1, v2}, Lcom/tencent/mm/sdk/e/af;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const-string v0, "desc"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final uD(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/tencent/mm/storage/w;->ggW:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/tencent/mm/storage/aa;->ghz:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "274544"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 225
    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/mm/storage/aa;->uC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 231
    goto :goto_0
.end method
