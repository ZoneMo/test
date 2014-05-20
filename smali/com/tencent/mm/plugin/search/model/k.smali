.class final Lcom/tencent/mm/plugin/search/model/k;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehd:I

.field private ehe:I

.field private ehf:I


# direct methods
.method private constructor <init>(Lcom/tencent/mm/plugin/search/model/b;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 299
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/k;->ehd:I

    .line 300
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/k;->ehe:I

    .line 301
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/k;->ehf:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/plugin/search/model/b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/search/model/k;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v7, 0x32

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 305
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/plugin/search/model/ap;->a([IZZZZZ)Landroid/database/Cursor;

    move-result-object v1

    .line 310
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 312
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 317
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 318
    if-ne v0, v2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 320
    if-nez v0, :cond_1

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    const/16 v9, 0x10

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    iget-object v9, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v9}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 328
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/k;->ehf:I

    .line 331
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 338
    :cond_3
    const-string v0, "SELECT ROWID, username, alias, conRemark, conRemarkPYFull, conRemarkPYShort, nickname, quanPin, pyInitial, verifyFlag, type FROM rcontact;"

    .line 340
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->c(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/ap/i;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v7

    .line 343
    :cond_4
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 345
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 348
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 353
    :cond_5
    new-instance v3, Lcom/tencent/mm/f/a;

    invoke-direct {v3}, Lcom/tencent/mm/f/a;-><init>()V

    .line 354
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/tencent/mm/f/a;->cfY:J

    .line 355
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    .line 356
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_alias:Ljava/lang/String;

    .line 357
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    .line 358
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    .line 359
    const/4 v4, 0x5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    .line 360
    const/4 v4, 0x6

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    .line 361
    const/4 v4, 0x7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    .line 362
    const/16 v4, 0x8

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    .line 363
    const/16 v4, 0x9

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/tencent/mm/f/a;->field_verifyFlag:I

    .line 364
    const/16 v4, 0xa

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/tencent/mm/f/a;->field_type:I

    .line 367
    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v3}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/f/a;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 372
    iget-object v4, v3, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 376
    if-lt v0, v7, :cond_6

    .line 377
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 378
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    move v0, v5

    .line 383
    :cond_6
    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v4, v3}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;Lcom/tencent/mm/f/a;)I

    move-result v3

    add-int/2addr v0, v3

    .line 384
    iget v3, p0, Lcom/tencent/mm/plugin/search/model/k;->ehd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/mm/plugin/search/model/k;->ehd:I

    goto/16 :goto_1

    .line 386
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 387
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 391
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v7

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 394
    if-lt v3, v7, :cond_8

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    move v3, v5

    .line 400
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 403
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v1

    sget-object v6, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    invoke-virtual {v1, v6, v0}, Lcom/tencent/mm/plugin/search/model/ap;->b([ILjava/lang/String;)V

    .line 404
    add-int/lit8 v3, v3, 0x1

    .line 405
    iget v0, p0, Lcom/tencent/mm/plugin/search/model/k;->ehe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/k;->ehe:I

    .line 407
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    invoke-virtual {v0, v1, v8, v9}, Lcom/tencent/mm/plugin/search/model/ap;->b([IJ)V

    goto :goto_2

    .line 409
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/k;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 411
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BuildContactIndex [new: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/k;->ehd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/k;->ehe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dirty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/k;->ehf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
