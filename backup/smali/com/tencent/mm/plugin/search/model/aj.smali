.class final Lcom/tencent/mm/plugin/search/model/aj;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic ehV:Lcom/tencent/mm/plugin/search/model/ag;

.field private ehb:I

.field private ehc:I


# direct methods
.method private constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 116
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehb:I

    .line 117
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/search/model/aj;-><init>(Lcom/tencent/mm/plugin/search/model/ag;)V

    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 14

    .prologue
    .line 121
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egw:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/plugin/search/model/ap;->a([IZZZZZ)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 128
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 129
    new-instance v5, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 138
    :cond_1
    const/16 v2, 0x32

    .line 139
    const/4 v1, 0x0

    .line 140
    const v0, 0x7fffffff

    move v11, v1

    move v1, v2

    .line 141
    :goto_1
    const/16 v2, 0x32

    if-lt v0, v2, :cond_4

    .line 144
    const/4 v0, 0x0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT msgId, talker, createTime, content, type FROM message ORDER BY createTime DESC LIMIT 50 OFFSET "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v3}, Lcom/tencent/mm/plugin/search/model/ag;->b(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/ap/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 149
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    add-int/lit8 v9, v0, 0x1

    .line 153
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 156
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 159
    :cond_2
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 160
    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 162
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 163
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 168
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 170
    const/16 v0, 0x32

    if-lt v1, v0, :cond_8

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    .line 178
    const/4 v10, 0x0

    .line 182
    :goto_3
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_7

    .line 185
    invoke-static {v5, v0}, Lcom/tencent/mm/plugin/search/model/ag;->al(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    const/high16 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    .line 188
    add-int/lit8 v0, v10, 0x1

    .line 189
    iget v1, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehb:I

    move v1, v0

    move v0, v9

    .line 190
    goto/16 :goto_2

    .line 191
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 193
    add-int/lit8 v2, v11, 0x32

    move v11, v2

    .line 194
    goto/16 :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 198
    const/16 v0, 0x32

    .line 199
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/Pair;

    .line 202
    const/16 v0, 0x32

    if-lt v1, v0, :cond_6

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    .line 205
    const/4 v1, 0x0

    move v6, v1

    .line 208
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egw:[I

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/plugin/search/model/ap;->a([IJJ)V

    .line 209
    add-int/lit8 v0, v6, 0x1

    .line 210
    iget v1, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehc:I

    move v1, v0

    .line 211
    goto :goto_4

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 214
    const/4 v0, 0x1

    return v0

    :cond_6
    move v6, v1

    goto :goto_5

    :cond_7
    move v0, v9

    move v1, v10

    goto/16 :goto_2

    :cond_8
    move v10, v1

    goto/16 :goto_3

    :cond_9
    move v0, v9

    goto/16 :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BuildMessageIndex [new: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/aj;->ehc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
