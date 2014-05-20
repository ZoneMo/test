.class final Lcom/tencent/mm/plugin/search/model/u;
.super Lcom/tencent/mm/plugin/search/model/z;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private eho:Ljava/lang/String;

.field private ehq:Z

.field private ehr:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;ZLcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/u;->egV:Lcom/tencent/mm/plugin/search/model/b;

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/tencent/mm/plugin/search/model/z;-><init>(Ljava/lang/String;ILcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/u;->ehr:I

    .line 93
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/u;->eho:Ljava/lang/String;

    .line 94
    iput-boolean p3, p0, Lcom/tencent/mm/plugin/search/model/u;->ehq:Z

    .line 95
    return-void
.end method


# virtual methods
.method protected final a([Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 105
    if-lez p3, :cond_3

    if-eqz p2, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/u;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/u;->eho:Ljava/lang/String;

    sget-object v3, Lcom/tencent/mm/plugin/search/model/a;->egx:[I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/search/model/ap;->a(Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v3

    .line 107
    const/4 v1, 0x0

    .line 108
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Lcom/tencent/mm/plugin/search/model/as;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/search/model/as;-><init>()V

    .line 110
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mm/plugin/search/model/as;->eik:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/tencent/mm/plugin/search/model/as;->type:I

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/mm/plugin/search/model/as;->eic:J

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/tencent/mm/plugin/search/model/as;->score:I

    .line 111
    new-instance v4, Landroid/util/Pair;

    iget v5, v2, Lcom/tencent/mm/plugin/search/model/as;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v2, Lcom/tencent/mm/plugin/search/model/as;->eic:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    new-array v1, v1, [Lcom/tencent/mm/plugin/search/model/aq;

    .line 115
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v10, v1

    .line 121
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->u([Ljava/lang/String;)[I

    move-result-object v2

    .line 123
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/plugin/search/model/u;->ehq:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egx:[I

    .line 125
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/plugin/search/model/u;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v3}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a([Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v3

    .line 127
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 129
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 132
    :cond_1
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    new-instance v5, Lcom/tencent/mm/plugin/search/model/aq;

    invoke-direct {v5}, Lcom/tencent/mm/plugin/search/model/aq;-><init>()V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v5, v3, v2, v1}, Lcom/tencent/mm/plugin/search/model/aq;->a(Landroid/database/Cursor;[IZ)V

    .line 136
    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    iget v6, v5, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    invoke-static {v1, v6}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->a([II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    iget-object v1, v5, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/search/model/aq;

    .line 138
    if-eqz v1, :cond_2

    sget-object v6, Lcom/tencent/mm/plugin/search/model/a;->egC:[I

    iget v7, v5, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    iget v1, v1, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    invoke-static {v6, v7, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a([III)I

    move-result v1

    if-gez v1, :cond_1

    .line 140
    :cond_2
    iget-object v1, v5, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 117
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/mm/plugin/search/model/aq;

    move-object v10, v1

    goto :goto_1

    .line 123
    :cond_4
    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    goto :goto_2

    .line 142
    :cond_5
    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egz:[I

    iget v6, v5, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    invoke-static {v1, v6}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->a([II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-wide v6, v5, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/search/model/aq;

    .line 144
    if-eqz v1, :cond_6

    sget-object v6, Lcom/tencent/mm/plugin/search/model/a;->egC:[I

    iget v7, v5, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    iget v1, v1, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    invoke-static {v6, v7, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a([III)I

    move-result v1

    if-gez v1, :cond_1

    .line 146
    :cond_6
    iget-wide v6, v5, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 150
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 153
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 156
    :cond_8
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/tencent/mm/plugin/search/model/aq;

    .line 158
    iget v1, v9, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    const v2, 0x20001

    if-ne v1, v2, :cond_f

    iget v1, v9, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_f

    .line 160
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 161
    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egE:[I

    array-length v0, v1

    move/from16 v16, v0

    .line 163
    const/4 v3, 0x0

    :goto_5
    iget-object v1, v9, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    array-length v1, v1

    if-ge v3, v1, :cond_d

    .line 164
    iget-object v1, v9, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    aget-object v1, v1, v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_9
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tencent/mm/plugin/search/model/ar;

    .line 166
    iget v1, v7, Lcom/tencent/mm/plugin/search/model/ar;->eih:I

    div-int v2, v1, v16

    .line 167
    iget v1, v7, Lcom/tencent/mm/plugin/search/model/ar;->eih:I

    rem-int v1, v1, v16

    .line 168
    sget-object v4, Lcom/tencent/mm/plugin/search/model/a;->egE:[I

    aget v4, v4, v1

    .line 170
    new-instance v1, Lcom/tencent/mm/plugin/search/model/s;

    iget-object v5, v9, Lcom/tencent/mm/plugin/search/model/aq;->eie:[Ljava/lang/String;

    iget v6, v7, Lcom/tencent/mm/plugin/search/model/ar;->eih:I

    aget-object v5, v5, v6

    iget v6, v7, Lcom/tencent/mm/plugin/search/model/ar;->eii:I

    iget v7, v7, Lcom/tencent/mm/plugin/search/model/ar;->eij:I

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mm/plugin/search/model/s;-><init>(IIILjava/lang/String;IIB)V

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 176
    if-nez v5, :cond_a

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 184
    :cond_a
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/plugin/search/model/s;

    iget v2, v2, Lcom/tencent/mm/plugin/search/model/s;->ehm:I

    .line 185
    if-ne v2, v4, :cond_b

    .line 186
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 187
    :cond_b
    sget-object v6, Lcom/tencent/mm/plugin/search/model/a;->egC:[I

    invoke-static {v6, v4, v2}, Lcom/tencent/mm/plugin/search/model/ap;->a([III)I

    move-result v2

    if-gez v2, :cond_9

    .line 189
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 190
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 163
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 197
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 199
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 200
    :cond_e
    iput-object v2, v9, Lcom/tencent/mm/plugin/search/model/aq;->CE:Ljava/lang/Object;

    .line 204
    :cond_f
    new-instance v1, Landroid/util/Pair;

    iget v2, v9, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v9, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 206
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    array-length v3, v10

    if-ge v2, v3, :cond_10

    .line 208
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v9, v10, v1

    goto/16 :goto_4

    .line 211
    :cond_10
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 215
    :cond_11
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 221
    :cond_12
    new-instance v1, Lcom/tencent/mm/plugin/search/model/v;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/tencent/mm/plugin/search/model/v;-><init>(Lcom/tencent/mm/plugin/search/model/u;)V

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 277
    if-eqz p2, :cond_14

    .line 278
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 279
    array-length v2, v10

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_14

    aget-object v3, v10, v1

    .line 280
    if-eqz v3, :cond_13

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 284
    :cond_14
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/tencent/mm/plugin/search/model/u;->ehr:I

    .line 285
    return-object v13
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchContact(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/u;->eho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/u;->ehr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
