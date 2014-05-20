.class public final Lcom/tencent/mm/ui/conversation/ab;
.super Lcom/tencent/mm/ui/h;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private cIs:Ljava/lang/String;

.field protected cKz:Ljava/util/List;

.field protected cPK:Lcom/tencent/mm/ui/base/dc;

.field protected cPL:Lcom/tencent/mm/ui/base/cy;

.field protected cPM:Lcom/tencent/mm/ui/base/db;

.field protected cPN:Lcom/tencent/mm/ui/base/cz;

.field eAA:Z

.field private gXT:[Landroid/content/res/ColorStateList;

.field private gXU:Ljava/util/HashMap;

.field private gXV:Z

.field private gXX:Landroid/graphics/Typeface;

.field private gXY:F

.field private gXZ:F

.field private gYH:Lcom/tencent/mm/ui/conversation/ad;

.field private gYI:Ljava/util/HashSet;

.field private gYJ:Ljava/util/HashSet;

.field private gYK:Ljava/util/HashSet;

.field private gYL:Z

.field private gYM:Z

.field final gYN:Lcom/tencent/mm/ui/conversation/ag;

.field private gYO:F

.field private gYa:Lcom/tencent/mm/pluginsdk/ui/e;

.field private gYd:Z

.field private gYg:Lcom/tencent/mm/sdk/b/g;

.field public gYi:Ljava/lang/String;

.field public glB:Z

.field private gpY:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/k;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    const/4 v3, 0x0

    .line 186
    invoke-direct {p0, p1, v3}, Lcom/tencent/mm/ui/h;-><init>(Landroid/content/Context;S)V

    .line 82
    iput-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    .line 85
    iput-boolean v4, p0, Lcom/tencent/mm/ui/conversation/ab;->gXV:Z

    .line 93
    invoke-static {}, Lcom/tencent/mm/ui/base/MMSlideDelView;->aHp()Lcom/tencent/mm/ui/base/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cPN:Lcom/tencent/mm/ui/base/cz;

    .line 96
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gpY:Z

    .line 97
    iput v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXY:F

    .line 98
    iput v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXZ:F

    .line 102
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYd:Z

    .line 104
    iput-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gYg:Lcom/tencent/mm/sdk/b/g;

    .line 105
    iput-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gYH:Lcom/tencent/mm/ui/conversation/ad;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYi:Ljava/lang/String;

    .line 109
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->glB:Z

    .line 114
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYL:Z

    .line 116
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYM:Z

    .line 529
    new-instance v0, Lcom/tencent/mm/ui/conversation/ag;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/ag;-><init>(Lcom/tencent/mm/ui/conversation/ab;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYN:Lcom/tencent/mm/ui/conversation/ag;

    .line 530
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->eAA:Z

    .line 531
    iput v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYO:F

    .line 188
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    iput-object v0, p0, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    .line 189
    invoke-super {p0, p2}, Lcom/tencent/mm/ui/h;->a(Lcom/tencent/mm/ui/k;)V

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c002e

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v3

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c0106

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v4

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    const v2, 0x7f0c002b

    invoke-static {p1, v2}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c0103

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v5

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c0103

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v5

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x4

    const v2, 0x7f0c0030

    invoke-static {p1, v2}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v0, v1

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYJ:Ljava/util/HashSet;

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXY:F

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXZ:F

    .line 207
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXX:Landroid/graphics/Typeface;

    .line 209
    return-void
.end method

.method private a(Lcom/tencent/mm/ui/l;Landroid/util/SparseArray;Ljava/util/HashMap;)Landroid/util/SparseArray;
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1355
    iget-object v1, p1, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1358
    iget-object v2, p1, Lcom/tencent/mm/ui/l;->gkS:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/mm/storage/n;

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1365
    :goto_1
    const-string v3, "MicroMsg.ConversationWithCacheAdapter"

    const-string v6, "resortPosition username %s,  size %d, position %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    iget v3, p1, Lcom/tencent/mm/ui/l;->gkR:I

    packed-switch v3, :pswitch_data_0

    .line 1409
    :cond_0
    :pswitch_0
    if-gez v4, :cond_9

    .line 1410
    const-string v1, "MicroMsg.ConversationWithCacheAdapter"

    const-string v2, "CursorDataAdapter.CHANGE_TYPE_UPDATE  position < 0"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_1
    :goto_2
    return-object p2

    .line 1359
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    move v4, v3

    goto :goto_1

    .line 1369
    :pswitch_1
    if-ltz v4, :cond_1

    .line 1372
    :goto_3
    add-int/lit8 v1, v5, -0x1

    if-ge v4, v1, :cond_4

    .line 1373
    add-int/lit8 v1, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1372
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1375
    :cond_4
    add-int/lit8 v1, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 1378
    :pswitch_2
    if-nez v2, :cond_6

    .line 1379
    const-string v2, "MicroMsg.ConversationWithCacheAdapter"

    const-string v3, "CursorDataAdapter.CHANGE_TYPE_INSERT  cov == null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    if-ltz v4, :cond_1

    .line 1382
    const-string v2, "MicroMsg.ConversationWithCacheAdapter"

    const-string v3, "CursorDataAdapter.CHANGE_TYPE_INSERT  cov == null delete it username %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v2, v3, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    :goto_4
    add-int/lit8 v1, v5, -0x1

    if-ge v4, v1, :cond_5

    .line 1384
    add-int/lit8 v1, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1383
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1386
    :cond_5
    add-int/lit8 v1, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 1391
    :cond_6
    if-gez v4, :cond_0

    .line 1392
    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v5, :cond_7

    .line 1393
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0}, Lcom/tencent/mm/ui/conversation/ab;->c(Ljava/lang/String;Ljava/util/HashMap;)Lcom/tencent/mm/storage/n;

    move-result-object v3

    iget-wide v6, v3, Lcom/tencent/mm/storage/n;->field_flag:J

    .line 1394
    iget-wide v8, v2, Lcom/tencent/mm/storage/n;->field_flag:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_7

    .line 1395
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_7
    move v2, v5

    .line 1400
    :goto_6
    if-le v2, v4, :cond_8

    .line 1401
    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1400
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1403
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1415
    :cond_9
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/conversation/ab;->c(Ljava/lang/String;Ljava/util/HashMap;)Lcom/tencent/mm/storage/n;

    move-result-object v3

    .line 1417
    if-nez v2, :cond_b

    .line 1419
    const-string v2, "MicroMsg.ConversationWithCacheAdapter"

    const-string v3, "CursorDataAdapter.CHANGE_TYPE_UPDATE  cov == null delete it username %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v2, v3, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1420
    :goto_7
    add-int/lit8 v1, v5, -0x1

    if-ge v4, v1, :cond_a

    .line 1421
    add-int/lit8 v1, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1420
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1423
    :cond_a
    add-int/lit8 v1, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_2

    .line 1428
    :cond_b
    iget-wide v6, v3, Lcom/tencent/mm/storage/n;->field_flag:J

    .line 1429
    iget-wide v8, v2, Lcom/tencent/mm/storage/n;->field_flag:J

    .line 1431
    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 1434
    cmp-long v3, v6, v8

    if-gez v3, :cond_c

    .line 1439
    const/4 v6, 0x0

    .line 1440
    add-int/lit8 v5, v4, -0x1

    .line 1441
    const/4 v3, 0x1

    move v13, v3

    move v3, v6

    move v6, v5

    move v5, v13

    .line 1447
    :goto_8
    const/4 v8, 0x0

    move v7, v3

    .line 1449
    :goto_9
    if-gt v7, v6, :cond_11

    .line 1450
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0}, Lcom/tencent/mm/ui/conversation/ab;->c(Ljava/lang/String;Ljava/util/HashMap;)Lcom/tencent/mm/storage/n;

    move-result-object v3

    iget-wide v9, v3, Lcom/tencent/mm/storage/n;->field_flag:J

    .line 1451
    iget-wide v11, v2, Lcom/tencent/mm/storage/n;->field_flag:J

    cmp-long v3, v9, v11

    if-gtz v3, :cond_d

    .line 1452
    const/4 v2, 0x1

    .line 1456
    :goto_a
    if-eqz v2, :cond_1

    .line 1459
    if-eqz v5, :cond_e

    .line 1461
    :goto_b
    if-le v4, v7, :cond_f

    .line 1462
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1461
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 1443
    :cond_c
    add-int/lit8 v6, v4, 0x1

    .line 1444
    add-int/lit8 v5, v5, -0x1

    .line 1445
    const/4 v3, 0x0

    move v13, v3

    move v3, v6

    move v6, v5

    move v5, v13

    goto :goto_8

    .line 1449
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1465
    :cond_e
    add-int/lit8 v2, v7, -0x1

    .line 1466
    :goto_c
    if-ge v4, v2, :cond_10

    .line 1467
    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1466
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_f
    move v2, v7

    .line 1470
    :cond_10
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_11
    move v2, v8

    goto :goto_a

    .line 1367
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/tencent/mm/ui/conversation/af;)V
    .locals 3
    .parameter

    .prologue
    .line 759
    iget-boolean v0, p1, Lcom/tencent/mm/ui/conversation/af;->dtw:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/ui/conversation/af;->cTv:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const v1, 0x7f07022b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/ui/conversation/af;->nickName:Ljava/lang/CharSequence;

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/tencent/mm/ui/conversation/af;->cTv:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gYO:F

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ao/b;->f(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/ui/conversation/af;->nickName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/ab;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYd:Z

    return v0
.end method

.method private aLn()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 324
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/af;

    .line 322
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tencent/mm/ui/conversation/af;->gYo:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static aLu()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method private aLz()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1566
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYJ:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYJ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1621
    :cond_1
    :goto_0
    return-void

    .line 1571
    :cond_2
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    const-string v1, "dealWithContactEvents contactEvents size %d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1573
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1574
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1576
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1577
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/conversation/af;

    .line 1578
    if-eqz v1, :cond_a

    .line 1579
    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/ab;->gYN:Lcom/tencent/mm/ui/conversation/ag;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/conversation/ag;->uK(Ljava/lang/String;)V

    .line 1580
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v5

    .line 1581
    iget-object v7, p0, Lcom/tencent/mm/ui/conversation/ab;->gYN:Lcom/tencent/mm/ui/conversation/ag;

    invoke-virtual {v7}, Lcom/tencent/mm/ui/conversation/ag;->aLq()Lcom/tencent/mm/storage/i;

    move-result-object v7

    .line 1582
    if-eqz v7, :cond_3

    .line 1583
    invoke-static {v7, v0, v5}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1585
    const-string v8, "MicroMsg.ConversationWithCacheAdapter"

    const-string v9, "dealWithContactEvents newdisplayname %s old dispalyname %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v3

    iget-object v11, v1, Lcom/tencent/mm/ui/conversation/af;->cTv:Ljava/lang/String;

    aput-object v11, v10, v4

    invoke-static {v8, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    if-eqz v5, :cond_4

    iget-object v8, v1, Lcom/tencent/mm/ui/conversation/af;->cTv:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1588
    iput-object v5, v1, Lcom/tencent/mm/ui/conversation/af;->cTv:Ljava/lang/String;

    .line 1589
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/conversation/af;)V

    move v2, v4

    .line 1594
    :cond_4
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rf()Z

    move-result v8

    .line 1595
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v5

    if-nez v5, :cond_6

    move v5, v4

    .line 1596
    :goto_2
    iget-boolean v9, v1, Lcom/tencent/mm/ui/conversation/af;->gYu:Z

    if-ne v9, v8, :cond_5

    iget-boolean v9, v1, Lcom/tencent/mm/ui/conversation/af;->gYx:Z

    if-eq v5, v9, :cond_a

    .line 1597
    :cond_5
    iput-boolean v8, v1, Lcom/tencent/mm/ui/conversation/af;->gYu:Z

    .line 1598
    iput-boolean v5, v1, Lcom/tencent/mm/ui/conversation/af;->gYx:Z

    .line 1599
    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rg()Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/mm/ui/conversation/af;->gYy:Z

    .line 1602
    const-string v1, "MicroMsg.ConversationWithCacheAdapter"

    const-string v2, "dealWithContactEvents in cache username %s mute change"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1603
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYJ:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1605
    const/4 v1, 0x3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/tencent/mm/ui/conversation/ab;->a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V

    move v0, v4

    :goto_3
    move v2, v0

    .line 1610
    goto/16 :goto_1

    :cond_6
    move v5, v3

    .line 1595
    goto :goto_2

    .line 1612
    :cond_7
    const-string v1, "MicroMsg.ConversationWithCacheAdapter"

    const-string v5, "dealWithContactEvents not in cache username %s mute change"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v1, v5, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYJ:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1617
    :cond_8
    if-eqz v2, :cond_9

    .line 1618
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/ab;->notifyDataSetChanged()V

    .line 1620
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method private b(Lcom/tencent/mm/storage/n;IZ)Ljava/lang/CharSequence;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x21

    const v7, -0x54fbfc

    const v5, 0x7f0702a6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1091
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_editingMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/tencent/mm/storage/n;->field_atCount:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/tencent/mm/storage/n;->field_unReadCount:I

    if-gtz v0, :cond_1

    .line 1092
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const v2, 0x7f0701aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1093
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1094
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/tencent/mm/storage/n;->field_editingMsg:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/tencent/mm/ao/b;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1182
    :goto_0
    return-object v0

    .line 1099
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1103
    const-string v0, "qqmail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    .line 1105
    :goto_1
    if-nez v0, :cond_3

    .line 1106
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1104
    goto :goto_1

    .line 1111
    :cond_3
    const-string v0, "tmessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1112
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v4, "@t.qq.com"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 1113
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 1114
    :goto_2
    if-nez v0, :cond_5

    .line 1115
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v3

    .line 1113
    goto :goto_2

    .line 1120
    :cond_5
    const-string v0, "qmessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1121
    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    .line 1122
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move v0, v2

    .line 1123
    :goto_3
    if-nez v0, :cond_7

    .line 1124
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v3

    .line 1122
    goto :goto_3

    .line 1130
    :cond_7
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_msgType:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_msgType:Ljava/lang/String;

    const-string v1, "47"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_msgType:Ljava/lang/String;

    const-string v1, "1048625"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1132
    :cond_8
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/ab;->xb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    const-string v0, ""

    .line 1134
    if-eqz v1, :cond_9

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1136
    :cond_9
    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1138
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1139
    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1140
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/ab;->xb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    if-eqz v1, :cond_b

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1147
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const v4, 0x7f0709e8

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v0, v1

    :goto_4
    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    .line 1152
    :cond_c
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1153
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1154
    iget v0, p1, Lcom/tencent/mm/storage/n;->field_isSend:I

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/model/w;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    :goto_5
    :try_start_0
    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1172
    :goto_6
    iget v1, p1, Lcom/tencent/mm/storage/n;->field_atCount:I

    if-lez v1, :cond_11

    iget v1, p1, Lcom/tencent/mm/storage/n;->field_unReadCount:I

    if-lez v1, :cond_11

    .line 1173
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const v4, 0x7f0701ac

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1174
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1175
    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    invoke-static {v3, v0, p2}, Lcom/tencent/mm/ao/b;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    .line 1176
    goto/16 :goto_0

    .line 1149
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1154
    :cond_e
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1161
    :cond_f
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    goto :goto_6

    .line 1158
    :catch_0
    move-exception v0

    .line 1164
    :cond_10
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rO()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rR()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/ui/conversation/ab;->iM(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    invoke-static {v0, v1, v4, v5, v6}, Lcom/tencent/mm/booter/w;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1178
    :cond_11
    if-eqz p3, :cond_12

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v1

    if-le v1, v2, :cond_12

    .line 1179
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const v4, 0x7f0701ab

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    :cond_12
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/tencent/mm/ao/b;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/util/HashMap;)Lcom/tencent/mm/storage/n;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1347
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/n;

    .line 1350
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/conversation/ab;->getItemByKey(Ljava/lang/Object;)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/n;

    goto :goto_0
.end method

.method private f(Lcom/tencent/mm/storage/n;)Ljava/lang/CharSequence;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 263
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getStatus()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 264
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const v1, 0x7f07019f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/mm/pluginsdk/e/e;->b(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static iM(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 883
    .line 884
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 886
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 892
    :cond_0
    :goto_0
    return v0

    .line 888
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static onCreate()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method private static xb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1231
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1232
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/i;->jh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1502
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 1504
    instance-of v4, p2, Lcom/tencent/mm/storage/o;

    if-eqz v4, :cond_7

    .line 1505
    const-string v4, "MicroMsg.ConversationWithCacheAdapter"

    const-string v5, "onConversationStorageNotifyChange event type %d, username %s"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v0, v6, v3

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1506
    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "@chatroom"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "@micromsg.qq.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 1536
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 1506
    goto :goto_0

    .line 1508
    :cond_3
    if-eqz p3, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 1509
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1510
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 1511
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYL:Z

    .line 1512
    const/4 v0, 0x0

    invoke-super {p0, v0, v3}, Lcom/tencent/mm/ui/h;->i(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1516
    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1520
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    move p1, v1

    .line 1522
    :cond_6
    invoke-super {p0, v0, p1}, Lcom/tencent/mm/ui/h;->i(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1523
    :cond_7
    instance-of v4, p2, Lcom/tencent/mm/storage/k;

    if-eqz v4, :cond_1

    .line 1524
    const-string v4, "MicroMsg.ConversationWithCacheAdapter"

    const-string v5, "onContactStorageNotifyChange event type %d, username %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    aput-object p3, v1, v3

    invoke-static {v4, v5, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1530
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 1531
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Lcom/tencent/mm/ui/base/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ab;->cPL:Lcom/tencent/mm/ui/base/cy;

    .line 232
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/db;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ab;->cPM:Lcom/tencent/mm/ui/base/db;

    .line 228
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ab;->cPK:Lcom/tencent/mm/ui/base/dc;

    .line 224
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/conversation/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYH:Lcom/tencent/mm/ui/conversation/ad;

    .line 136
    return-void
.end method

.method public final a(Ljava/util/HashSet;[Landroid/util/SparseArray;)[Landroid/util/SparseArray;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x5

    const/4 v3, 0x0

    .line 1283
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 1300
    :cond_0
    return-object p2

    .line 1287
    :cond_1
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    const-string v1, "refreshPosistion events size %d oldPosistion size %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aget-object v5, p2, v3

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1290
    if-eqz p1, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/l;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/tencent/mm/ui/l;->gkR:I

    if-eq v1, v9, :cond_2

    iget-object v1, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v6, "MicroMsg.ConversationWithCacheAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "searchArray.add(event.object) "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    sget-object v7, Lcom/tencent/mm/g/a;->cgb:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v6, v7}, Lcom/tencent/mm/storage/o;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/tencent/mm/storage/n;

    invoke-direct {v1}, Lcom/tencent/mm/storage/n;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/n;->convertFrom(Landroid/database/Cursor;)V

    iget-object v6, v1, Lcom/tencent/mm/storage/n;->field_username:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/l;

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/tencent/mm/ui/l;->gkR:I

    if-eq v1, v9, :cond_7

    const-string v7, "MicroMsg.ConversationWithCacheAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v1, "evnet name,"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "  event.newObj   =="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v1, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/l;->gkS:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/ui/l;->gkS:Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1291
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1292
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/l;

    .line 1293
    if-eqz v0, :cond_a

    .line 1294
    aget-object v4, p2, v3

    invoke-direct {p0, v0, v4, v1}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/l;Landroid/util/SparseArray;Ljava/util/HashMap;)Landroid/util/SparseArray;

    .line 1296
    iget v4, v0, Lcom/tencent/mm/ui/l;->gkR:I

    if-eq v4, v9, :cond_a

    .line 1297
    iget-object v4, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/mm/ui/l;->gkS:Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public final aDX()Linfo/guardianproject/database/IHeapCursor;
    .locals 5

    .prologue
    .line 1246
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    const-string v1, "createCursor"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    sget-object v3, Lcom/tencent/mm/g/a;->cgb:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/storage/o;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/IHeapCursor;

    return-object v0
.end method

.method public final aKs()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    const v3, 0x8000

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/v;->tu()Z

    move-result v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 275
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYM:Z

    if-eq v1, v0, :cond_1

    .line 276
    if-eqz v1, :cond_5

    .line 277
    const/4 v0, 0x5

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v2

    const-string v3, "floatbottle"

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/mm/ui/conversation/ab;->a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V

    .line 281
    :goto_2
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYM:Z

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYM:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    const-string v1, "floatbottle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 274
    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 279
    :cond_5
    const/4 v0, 0x2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v2

    const-string v3, "floatbottle"

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/mm/ui/conversation/ab;->a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final aLA()V
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYJ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1641
    return-void
.end method

.method public final aLr()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYH:Lcom/tencent/mm/ui/conversation/ad;

    .line 140
    return-void
.end method

.method public final aLs()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYg:Lcom/tencent/mm/sdk/b/g;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/tencent/mm/ui/conversation/ac;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/ac;-><init>(Lcom/tencent/mm/ui/conversation/ab;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYg:Lcom/tencent/mm/sdk/b/g;

    .line 171
    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "BackupResetAccUin"

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gYg:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 172
    return-void
.end method

.method public final aLt()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYg:Lcom/tencent/mm/sdk/b/g;

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "BackupResetAccUin"

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gYg:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYg:Lcom/tencent/mm/sdk/b/g;

    .line 179
    :cond_0
    return-void
.end method

.method public final aLv()V
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/tencent/mm/ui/h;->i(Ljava/lang/Object;I)V

    .line 356
    return-void
.end method

.method public final aLw()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    return-object v0
.end method

.method public final aLx()Z
    .locals 1

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYL:Z

    return v0
.end method

.method public final aLy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1547
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1550
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYL:Z

    if-eqz v0, :cond_2

    .line 1551
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1552
    iput-boolean v4, p0, Lcom/tencent/mm/ui/conversation/ab;->gYL:Z

    .line 1553
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 1556
    :cond_2
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    const-string v1, "dealWithConversationEvents size %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1558
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1561
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYK:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/pluginsdk/ui/e;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYa:Lcom/tencent/mm/pluginsdk/ui/e;

    .line 183
    return-void
.end method

.method public final clearCache()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 923
    :cond_0
    return-void
.end method

.method public final synthetic createItem()Linfo/guardianproject/database/CursorDataItem;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/tencent/mm/storage/n;

    invoke-direct {v0}, Lcom/tencent/mm/storage/n;-><init>()V

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/conversation/ab;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/n;

    .line 545
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 546
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYN:Lcom/tencent/mm/ui/conversation/ag;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/conversation/ag;->uK(Ljava/lang/String;)V

    .line 550
    if-nez p2, :cond_c

    .line 551
    new-instance v2, Lcom/tencent/mm/ui/conversation/ah;

    invoke-direct {v2}, Lcom/tencent/mm/ui/conversation/ah;-><init>()V

    .line 553
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const v3, 0x7f0300c3

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 554
    const v1, 0x7f0a0290

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->cMS:Landroid/widget/ImageView;

    .line 556
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 557
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/pluginsdk/ui/a;

    .line 558
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYa:Lcom/tencent/mm/pluginsdk/ui/e;

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYa:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/pluginsdk/ui/e;->a(Lcom/tencent/mm/pluginsdk/ui/f;)V

    .line 562
    :cond_0
    const v1, 0x7f0a0292

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    .line 563
    const v1, 0x7f0a0293

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    .line 564
    const v1, 0x7f0a0294

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    .line 565
    const v1, 0x7f0a0156

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->cPT:Landroid/widget/TextView;

    .line 566
    const v1, 0x7f0a0296

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYC:Landroid/widget/ImageView;

    .line 567
    const v1, 0x7f0a0295

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYD:Landroid/widget/ImageView;

    .line 568
    const v1, 0x7f0a0291

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYG:Landroid/view/View;

    .line 569
    const v1, 0x7f0a0297

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYE:Landroid/widget/ImageView;

    .line 570
    const v1, 0x7f0a0298

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYF:Landroid/widget/ImageView;

    .line 572
    new-instance v1, Lcom/tencent/mm/ui/conversation/ae;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/ae;-><init>(Lcom/tencent/mm/ui/conversation/ab;)V

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYY:Lcom/tencent/mm/ui/conversation/ae;

    .line 575
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 577
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXZ:F

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->Q(F)V

    .line 578
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXZ:F

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->Q(F)V

    .line 579
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXY:F

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->Q(F)V

    .line 581
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYO:F

    .line 583
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 584
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x4

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 585
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 587
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dA(Z)V

    .line 588
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dA(Z)V

    .line 589
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dA(Z)V

    .line 591
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->context:Landroid/content/Context;

    const/16 v5, 0xa0

    invoke-static {v3, v5}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setMaxWidth(I)V

    .line 592
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->jb()V

    .line 594
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXX:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 600
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/conversation/af;

    .line 602
    const-string v3, "MicroMsg.ConversationWithCacheAdapter"

    const-string v5, "dkpno getview username:%s "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    if-nez v1, :cond_4

    .line 605
    new-instance v3, Lcom/tencent/mm/ui/conversation/af;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/ui/conversation/af;-><init>(Lcom/tencent/mm/ui/conversation/ab;B)V

    .line 607
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYN:Lcom/tencent/mm/ui/conversation/ag;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/conversation/ag;->aLq()Lcom/tencent/mm/storage/i;

    move-result-object v5

    .line 608
    if-eqz v5, :cond_d

    .line 609
    iget v1, v5, Lcom/tencent/mm/storage/i;->bUi:I

    iput v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYr:I

    .line 610
    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/af;->DY:I

    .line 616
    :goto_1
    if-eqz v5, :cond_e

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYw:Z

    .line 617
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rg()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYy:Z

    .line 618
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYx:Z

    .line 619
    invoke-static {v4}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->dtw:Z

    .line 623
    iget-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->dtw:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYx:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYv:Z

    .line 625
    const/4 v1, 0x0

    iput v1, v3, Lcom/tencent/mm/ui/conversation/af;->dws:I

    .line 626
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/ab;->iM(Ljava/lang/String;)I

    move-result v1

    .line 627
    const/16 v6, 0x22

    if-ne v1, v6, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rO()I

    move-result v1

    if-nez v1, :cond_3

    .line 628
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 629
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 631
    const-string v6, "qmessage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "floatbottle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 632
    :cond_1
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 633
    if-eqz v6, :cond_2

    array-length v7, v6

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    :cond_2
    new-instance v6, Lcom/tencent/mm/modelvoice/bf;

    invoke-direct {v6, v1}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/bf;->Ev()Z

    move-result v1

    if-nez v1, :cond_3

    .line 641
    const/4 v1, 0x1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/af;->dws:I

    .line 646
    :cond_3
    iget-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->dtw:Z

    invoke-static {v5, v4, v1}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 647
    iput-object v1, v3, Lcom/tencent/mm/ui/conversation/af;->cTv:Ljava/lang/String;

    .line 648
    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/conversation/af;)V

    .line 656
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/conversation/ab;->f(Lcom/tencent/mm/storage/n;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYo:Ljava/lang/CharSequence;

    .line 657
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iget-object v6, p0, Lcom/tencent/mm/ui/conversation/ab;->gYN:Lcom/tencent/mm/ui/conversation/ag;

    iget-boolean v6, v3, Lcom/tencent/mm/ui/conversation/af;->gYv:Z

    invoke-direct {p0, v0, v1, v6}, Lcom/tencent/mm/ui/conversation/ab;->b(Lcom/tencent/mm/storage/n;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYp:Ljava/lang/CharSequence;

    .line 659
    const-string v1, "MicroMsg.ConversationWithCacheAdapter"

    const-string v6, "dkpno getview conv == null username:%s, convItem.lastMsg:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/tencent/mm/ui/conversation/af;->gYp:Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, -0x1

    :goto_6
    iput v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYq:I

    .line 675
    invoke-static {v0}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/n;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYs:Z

    .line 676
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    invoke-static {v0}, Lcom/tencent/mm/storage/o;->e(Lcom/tencent/mm/storage/n;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYt:Z

    .line 678
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rf()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_7
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYu:Z

    .line 682
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 686
    :cond_4
    iget-object v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYo:Ljava/lang/CharSequence;

    if-nez v3, :cond_5

    .line 687
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/conversation/ab;->f(Lcom/tencent/mm/storage/n;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYo:Ljava/lang/CharSequence;

    .line 690
    :cond_5
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYv:Z

    if-eqz v3, :cond_13

    .line 691
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 696
    :goto_8
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/booter/w;->bt(I)V

    .line 697
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/tencent/mm/booter/w;->bu(I)V

    .line 698
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/booter/w;->a(Landroid/text/TextPaint;)V

    .line 700
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "@t.qq.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHM()V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dz(Z)V

    :goto_9
    iget v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYq:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_15

    iget-object v5, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v5, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->nk(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dy(Z)V

    .line 701
    :goto_a
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, v1, Lcom/tencent/mm/ui/conversation/af;->nickName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, v1, Lcom/tencent/mm/ui/conversation/af;->gYo:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, v1, Lcom/tencent/mm/ui/conversation/af;->gYp:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYC:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->dtw:Z

    if-eqz v3, :cond_16

    .line 710
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYx:Z

    if-eqz v3, :cond_6

    .line 711
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYC:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    :cond_6
    :goto_b
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYD:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->cMS:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 728
    iget-boolean v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXV:Z

    if-eqz v3, :cond_8

    .line 729
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYN:Lcom/tencent/mm/ui/conversation/ag;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    if-nez v1, :cond_17

    :cond_7
    const-string v3, "MicroMsg.ConversationWithCacheAdapter"

    const-string v4, "handle show tip cnt, but conversation or viewholder is null"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_8
    :goto_c
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYs:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYt:Z

    if-eqz v3, :cond_9

    .line 735
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 736
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/o;->d(Lcom/tencent/mm/storage/n;)Z

    .line 740
    :cond_9
    iget-boolean v1, v1, Lcom/tencent/mm/ui/conversation/af;->gYt:Z

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_22

    .line 741
    const v1, 0x7f0a028f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f020195

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 747
    :goto_d
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    .line 748
    new-instance v1, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v3, v1, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/tencent/mm/c/a/gz;->bQU:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    invoke-static {v0, v5, v6, v7}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;IJ)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v4, v4, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v4

    invoke-static {v0, v3, v4, v5}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;IJ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/n;->p(J)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tencent/mm/pluginsdk/aj;->oZ(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_b
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYE:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 750
    :goto_e
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/ap;->kn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v2, Lcom/tencent/mm/ui/conversation/ah;->gYF:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    :goto_f
    return-object p2

    .line 597
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/conversation/ah;

    move-object v2, v1

    goto/16 :goto_0

    .line 612
    :cond_d
    const/4 v1, -0x1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/af;->gYr:I

    .line 613
    const/4 v1, -0x1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/af;->DY:I

    goto/16 :goto_1

    .line 616
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 617
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 618
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 623
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 674
    :pswitch_1
    const/4 v1, -0x1

    goto/16 :goto_6

    :pswitch_2
    const v1, 0x7f020571

    goto/16 :goto_6

    :pswitch_3
    const/4 v1, -0x1

    goto/16 :goto_6

    :pswitch_4
    const v1, 0x7f02056f

    goto/16 :goto_6

    .line 678
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 693
    :cond_13
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    iget v6, v1, Lcom/tencent/mm/ui/conversation/af;->dws:I

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    .line 700
    :cond_14
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dz(Z)V

    goto/16 :goto_9

    :cond_15
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dy(Z)V

    goto/16 :goto_a

    .line 713
    :cond_16
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYu:Z

    if-eqz v3, :cond_6

    .line 714
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYC:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 729
    :cond_17
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->cPT:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYG:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/ah;->gYG:Landroid/view/View;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_18

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_c

    :cond_18
    const/4 v3, 0x4

    goto :goto_10

    :cond_19
    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/ah;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYw:Z

    if-eqz v3, :cond_1b

    iget v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYr:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1b

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    :goto_11
    invoke-virtual {v4, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYw:Z

    if-eqz v3, :cond_1a

    iget v3, v1, Lcom/tencent/mm/ui/conversation/af;->DY:I

    if-nez v3, :cond_1c

    :cond_1a
    const-string v3, "MicroMsg.ConversationWithCacheAdapter"

    const-string v4, "handle show tip count, but talker is null"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1b
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    goto :goto_11

    :cond_1c
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYu:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYy:Z

    if-eqz v3, :cond_1e

    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/ah;->gYG:Landroid/view/View;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_1d

    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1d
    const/4 v3, 0x4

    goto :goto_12

    :cond_1e
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->dtw:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/af;->gYx:Z

    if-eqz v3, :cond_20

    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/ah;->gYG:Landroid/view/View;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_1f

    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1f
    const/4 v3, 0x4

    goto :goto_13

    :cond_20
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_21

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->cPT:Landroid/widget/TextView;

    const v4, 0x7f070a7d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->cPT:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_21
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->cPT:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->cPT:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 743
    :cond_22
    const v1, 0x7f0a028f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f020070

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 748
    :cond_23
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/ah;->gYE:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYE:Landroid/widget/ImageView;

    const v3, 0x7f0207df

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    :cond_24
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/ah;->gYE:Landroid/widget/ImageView;

    const v3, 0x7f0207dd

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 750
    :cond_25
    iget-object v0, v2, Lcom/tencent/mm/ui/conversation/ah;->gYF:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final hasLoadAllData()Z
    .locals 1

    .prologue
    .line 1624
    invoke-super {p0}, Lcom/tencent/mm/ui/h;->hasLoadAllData()Z

    move-result v0

    return v0
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cIs:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cIs:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cIs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gpY:Z

    .line 152
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/conversation/ab;->i(Ljava/lang/Object;I)V

    .line 153
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gpY:Z

    goto :goto_0
.end method

.method public final nN(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 372
    .line 373
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/ab;->getCount()I

    move-result v3

    .line 374
    if-gtz v3, :cond_0

    move v0, v1

    .line 420
    :goto_0
    return v0

    .line 377
    :cond_0
    add-int/lit8 v0, p1, 0x1

    rem-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 379
    :goto_1
    if-eq v2, p1, :cond_2

    .line 380
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/conversation/ab;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/n;

    .line 381
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    .line 383
    goto :goto_0

    .line 385
    :cond_1
    add-int/lit8 v0, v2, 0x1

    rem-int v2, v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 420
    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gYH:Lcom/tencent/mm/ui/conversation/ad;

    .line 365
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/ab;->closeCursor()V

    .line 367
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/ab;->aDU()V

    .line 368
    return-void
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 301
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adpter onPause  hasResume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/conversation/ab;->glB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->glB:Z

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->glB:Z

    .line 307
    invoke-super {p0}, Lcom/tencent/mm/ui/h;->pause()V

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cPN:Lcom/tencent/mm/ui/base/cz;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->cPN:Lcom/tencent/mm/ui/base/cz;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/cz;->aij()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 327
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adpter onResume  hasResume "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/tencent/mm/ui/conversation/ab;->glB:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->glB:Z

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/ab;->glB:Z

    .line 333
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/ab;->aKs()V

    .line 335
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/ab;->aLz()V

    .line 336
    invoke-super {p0}, Lcom/tencent/mm/ui/h;->aEb()V

    .line 338
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const-string v3, "MM/dd"

    invoke-static {v3, v0}, Lcom/tencent/mm/pluginsdk/e/d;->a(Ljava/lang/CharSequence;Landroid/text/format/Time;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->gYi:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/ab;->aLn()V

    .line 341
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYH:Lcom/tencent/mm/ui/conversation/ad;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYH:Lcom/tencent/mm/ui/conversation/ad;

    invoke-interface {v0}, Lcom/tencent/mm/ui/conversation/ad;->aLB()V

    .line 343
    iput-boolean v2, p0, Lcom/tencent/mm/ui/conversation/ab;->gYd:Z

    .line 344
    const/4 v0, 0x0

    invoke-super {p0, v0, v1}, Lcom/tencent/mm/ui/h;->i(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 1252
    const-string v0, "MicroMsg.ConversationWithCacheAdapter"

    const-string v1, "rebulidAllChangeData obj.size() %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1257
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/ab;->cKz:Ljava/util/List;

    sget-object v4, Lcom/tencent/mm/g/a;->cgb:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/tencent/mm/storage/o;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1258
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    new-instance v2, Lcom/tencent/mm/storage/n;

    invoke-direct {v2}, Lcom/tencent/mm/storage/n;-><init>()V

    .line 1260
    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/n;->convertFrom(Landroid/database/Cursor;)V

    .line 1261
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1263
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1264
    return-object v0
.end method

.method public final xc(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xd(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYJ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final xe(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gYI:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final xf(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1644
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/conversation/ab;->xc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1652
    :goto_0
    return v0

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ab;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/af;

    .line 1647
    if-nez v0, :cond_1

    move v0, v1

    .line 1648
    goto :goto_0

    .line 1649
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1650
    iget-boolean v0, v0, Lcom/tencent/mm/ui/conversation/af;->gYx:Z

    goto :goto_0

    .line 1652
    :cond_2
    iget-boolean v0, v0, Lcom/tencent/mm/ui/conversation/af;->gYu:Z

    goto :goto_0
.end method
