.class public final Lcom/tencent/mm/plugin/search/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private egK:Lcom/tencent/mm/plugin/search/model/y;

.field private egL:Lcom/tencent/mm/ap/i;

.field private egM:Lcom/tencent/mm/plugin/search/model/ap;

.field private egN:Z

.field private egO:Ljava/util/HashMap;

.field private egP:Lcom/tencent/mm/sdk/e/ar;

.field private egQ:Lcom/tencent/mm/sdk/e/ar;

.field private egR:Lcom/tencent/mm/sdk/e/al;

.field private egS:Lcom/tencent/mm/sdk/b/g;

.field private egT:Lcom/tencent/mm/sdk/platformtools/ay;

.field private egU:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/y;Lcom/tencent/mm/plugin/search/model/ap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    new-instance v0, Lcom/tencent/mm/plugin/search/model/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/c;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egP:Lcom/tencent/mm/sdk/e/ar;

    .line 990
    new-instance v0, Lcom/tencent/mm/plugin/search/model/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/d;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egQ:Lcom/tencent/mm/sdk/e/ar;

    .line 1015
    new-instance v0, Lcom/tencent/mm/plugin/search/model/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/e;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egR:Lcom/tencent/mm/sdk/e/al;

    .line 1022
    new-instance v0, Lcom/tencent/mm/plugin/search/model/f;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/f;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egS:Lcom/tencent/mm/sdk/b/g;

    .line 1033
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/search/model/g;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/search/model/g;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egT:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 1052
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/search/model/h;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/search/model/h;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egU:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 915
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    .line 916
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sq()Lcom/tencent/mm/ap/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egL:Lcom/tencent/mm/ap/i;

    .line 917
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    .line 919
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egO:Ljava/util/HashMap;

    .line 923
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/search/model/b;->egN:Z

    .line 926
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    new-instance v2, Lcom/tencent/mm/plugin/search/model/ab;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    invoke-direct {v2, v3, v0, v1}, Lcom/tencent/mm/plugin/search/model/ab;-><init>(Lcom/tencent/mm/plugin/search/model/ap;[I[I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const v1, 0x10008

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 929
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const/high16 v1, 0x2

    new-instance v2, Lcom/tencent/mm/plugin/search/model/j;

    invoke-direct {v2, p0, v4}, Lcom/tencent/mm/plugin/search/model/j;-><init>(Lcom/tencent/mm/plugin/search/model/b;B)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 930
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const v1, 0x2000a

    new-instance v2, Lcom/tencent/mm/plugin/search/model/k;

    invoke-direct {v2, p0, v4}, Lcom/tencent/mm/plugin/search/model/k;-><init>(Lcom/tencent/mm/plugin/search/model/b;B)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 931
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egN:Z

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const v1, 0x20014

    new-instance v2, Lcom/tencent/mm/plugin/search/model/l;

    invoke-direct {v2, p0, v4}, Lcom/tencent/mm/plugin/search/model/l;-><init>(Lcom/tencent/mm/plugin/search/model/b;B)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 936
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/b;->egR:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 937
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/b;->egP:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 938
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/b;->egQ:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/i;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 941
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egT:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 944
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "UpdateSearchIndexAtOnce"

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/b;->egS:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 945
    return-void

    .line 926
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x1t 0x0t 0x2t 0x0t
        0x2t 0x0t 0x2t 0x0t
        0x3t 0x0t 0x2t 0x0t
        0x4t 0x0t 0x2t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/model/b;Lcom/tencent/mm/f/a;)I
    .locals 24
    .parameter
    .parameter

    .prologue
    .line 41
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/tencent/mm/f/a;->cfY:J

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/tencent/mm/f/a;->field_alias:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/tencent/mm/f/a;->field_verifyFlag:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x0

    const-string v4, "@chatroom"

    invoke-virtual {v7, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v11, 0x20001

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v4

    if-nez v4, :cond_9

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x0

    move v3, v11

    move v11, v2

    :goto_1
    invoke-static {v7, v13}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->am(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_23

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    move v13, v11

    :goto_2
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    :cond_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object/from16 v23, v2

    move-object v2, v14

    move-object/from16 v14, v23

    :goto_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    const/4 v4, 0x0

    move-object v15, v4

    :goto_4
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1
    const/4 v2, 0x0

    move-object v11, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v4, 0x9

    move-object v10, v15

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v4, 0xa

    move-object v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    :cond_3
    add-int/lit8 v13, v13, 0x3

    :cond_4
    if-eqz v18, :cond_1f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object v14, v2

    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_6
    const/4 v2, 0x0

    move-object v11, v2

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/4 v4, 0x2

    move-object/from16 v10, v18

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/4 v4, 0x7

    move-object v10, v14

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v4, 0x8

    move-object v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    :cond_8
    add-int/lit8 v11, v13, 0x3

    :goto_7
    const/high16 v2, 0x2

    if-ne v3, v2, :cond_1d

    const-string v2, "SELECT moblie FROM addr_upload WHERE username=?;"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/plugin/search/model/b;->egL:Lcom/tencent/mm/ap/i;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v7, v10, v12

    invoke-virtual {v4, v2, v10}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v4, 0xf

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v2, v11, 0x1

    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :goto_9
    return v2

    :cond_9
    sget-object v2, Lcom/tencent/mm/plugin/search/model/a;->egG:Ljava/util/regex/Pattern;

    iget-object v3, v4, Lcom/tencent/mm/storage/b;->field_memberlist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v3, v2

    if-nez v3, :cond_b

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "SELECT username, alias, conRemark, conRemarkPYFull, conRemarkPYShort, nickname, quanPin, pyInitial FROM rcontact WHERE username IN "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ORDER BY username;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/plugin/search/model/b;->egL:Lcom/tencent/mm/ap/i;

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v10}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->am(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, ""

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x200b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    :cond_d
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, ""

    :cond_e
    const/4 v3, 0x7

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_f

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    :cond_f
    const-string v3, ""

    :cond_10
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x200b

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x200b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x200b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u200b\u200b\u200b"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/b;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v2, ""

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x200b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_12
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v2, ""

    :cond_13
    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_14

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15

    :cond_14
    const-string v3, ""

    :cond_15
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x200b

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x200b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x200b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v2, ""

    :cond_16
    const/4 v3, 0x7

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_18

    :cond_17
    const-string v3, ""

    :cond_18
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x200b

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x200b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x200b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_19
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const v3, 0x20001

    const/16 v4, 0x15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lcom/tencent/mm/storage/i;->aAr()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1b

    const v3, 0x20002

    move v11, v2

    goto/16 :goto_1

    :cond_1b
    const/high16 v3, 0x2

    move v11, v2

    goto/16 :goto_1

    :cond_1c
    move v2, v11

    goto/16 :goto_8

    :cond_1d
    move v2, v11

    goto/16 :goto_9

    :cond_1e
    move-object v11, v12

    goto/16 :goto_6

    :cond_1f
    move v11, v13

    goto/16 :goto_7

    :cond_20
    move-object v11, v2

    goto/16 :goto_5

    :cond_21
    move-object v15, v4

    goto/16 :goto_4

    :cond_22
    move-object v2, v12

    move-object v4, v15

    move-object/from16 v10, v17

    move-object v12, v14

    move-object/from16 v14, v16

    goto/16 :goto_3

    :cond_23
    move v13, v11

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/model/b;Lcom/tencent/mm/plugin/search/model/i;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 41
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v1, p1, Lcom/tencent/mm/plugin/search/model/i;->status:I

    if-eqz v1, :cond_6

    const v1, 0x20003

    :goto_0
    iget-object v2, p1, Lcom/tencent/mm/plugin/search/model/i;->bTR:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/tencent/mm/plugin/search/model/i;->bTR:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v2, 0xf

    iget-wide v3, p1, Lcom/tencent/mm/plugin/search/model/i;->id:J

    iget-object v5, p1, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/mm/plugin/search/model/i;->bTR:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x1

    move v9, v0

    :goto_1
    iget-object v8, p1, Lcom/tencent/mm/plugin/search/model/i;->cqh:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/plugin/search/model/i;->egX:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/mm/plugin/search/model/i;->egY:Ljava/lang/String;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v12, v11

    :goto_2
    if-eqz v12, :cond_0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    move-object v10, v11

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v2, 0x10

    iget-wide v3, p1, Lcom/tencent/mm/plugin/search/model/i;->id:J

    iget-object v5, p1, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    if-eqz v12, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v2, 0x11

    iget-wide v3, p1, Lcom/tencent/mm/plugin/search/model/i;->id:J

    iget-object v5, p1, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    :cond_1
    if-eqz v10, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v2, 0x12

    iget-wide v3, p1, Lcom/tencent/mm/plugin/search/model/i;->id:J

    iget-object v5, p1, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    :cond_2
    iget-object v8, p1, Lcom/tencent/mm/plugin/search/model/i;->cie:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/plugin/search/model/i;->egZ:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/mm/plugin/search/model/i;->eha:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v10, v11

    :goto_4
    if-eqz v10, :cond_3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/tencent/mm/plugin/search/model/i;->id:J

    iget-object v5, p1, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/4 v2, 0x7

    iget-wide v3, p1, Lcom/tencent/mm/plugin/search/model/i;->id:J

    iget-object v5, p1, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    :cond_4
    if-eqz v11, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    const/16 v2, 0x8

    iget-wide v3, p1, Lcom/tencent/mm/plugin/search/model/i;->id:J

    iget-object v5, p1, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/plugin/search/model/ap;->a(IIJLjava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    :cond_5
    return v9

    :cond_6
    const v1, 0x20004

    goto/16 :goto_0

    :cond_7
    move-object v11, v0

    goto :goto_5

    :cond_8
    move-object v10, v2

    goto :goto_4

    :cond_9
    move-object v10, v0

    goto :goto_3

    :cond_a
    move-object v12, v2

    goto/16 :goto_2

    :cond_b
    move v9, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/f/a;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->rd()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "@chatroom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->rb()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const-string v3, "@stranger"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "@qqim"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/o;->ug(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/model/i;)Z
    .locals 2
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/tencent/mm/plugin/search/model/i;->type:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/search/model/i;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/search/model/b;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egO:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/ap/i;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egL:Lcom/tencent/mm/ap/i;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/y;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/search/model/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egN:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egU:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)Lcom/tencent/mm/plugin/search/model/af;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/tencent/mm/plugin/search/model/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mm/plugin/search/model/t;-><init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)V

    .line 80
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const v2, 0x1000a

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZLcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/tencent/mm/plugin/search/model/u;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/search/model/u;-><init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;ZLcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)V

    .line 75
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/b;->egK:Lcom/tencent/mm/plugin/search/model/y;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 949
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "UpdateSearchIndexAtOnce"

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/b;->egS:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 951
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egU:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 952
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/b;->egT:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 954
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/b;->egQ:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/i;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 955
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/b;->egP:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 956
    return-void
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/b;->close()V

    .line 961
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 962
    return-void
.end method
