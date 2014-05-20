.class final Lcom/tencent/mm/plugin/search/model/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private egL:Lcom/tencent/mm/ap/i;

.field private ehs:Ljava/util/HashMap;

.field private eht:[Ljava/lang/String;

.field final synthetic ehu:Lcom/tencent/mm/plugin/search/model/u;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/u;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/v;->ehu:Lcom/tencent/mm/plugin/search/model/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->ehs:Ljava/util/HashMap;

    .line 250
    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->egL:Lcom/tencent/mm/ap/i;

    .line 251
    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->eht:[Ljava/lang/String;

    return-void
.end method

.method private mG(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->ehs:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->ehs:Ljava/util/HashMap;

    .line 257
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sq()Lcom/tencent/mm/ap/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->egL:Lcom/tencent/mm/ap/i;

    .line 258
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->eht:[Ljava/lang/String;

    .line 262
    :cond_0
    const-string v0, "SELECT conversationTime FROM rconversation WHERE username=?;"

    .line 263
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/v;->eht:[Ljava/lang/String;

    aput-object p1, v1, v3

    .line 264
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/v;->egL:Lcom/tencent/mm/ap/i;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/v;->eht:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 269
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 271
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/v;->ehs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_1
    return-object v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/v;->ehs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 268
    :cond_2
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 221
    check-cast p1, Lcom/tencent/mm/plugin/search/model/aq;

    check-cast p2, Lcom/tencent/mm/plugin/search/model/aq;

    sget-object v0, Lcom/tencent/mm/plugin/search/model/a;->egA:Ljava/util/Map;

    iget v1, p1, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    iget v2, p2, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->a(Ljava/util/Map;II)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/plugin/search/model/a;->egC:[I

    iget v1, p1, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    iget v2, p2, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->a([III)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/search/model/aq;->aaW()Lcom/tencent/mm/plugin/search/model/ar;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/mm/plugin/search/model/aq;->aaW()Lcom/tencent/mm/plugin/search/model/ar;

    move-result-object v2

    iget v0, v1, Lcom/tencent/mm/plugin/search/model/ar;->eii:I

    iget v3, v2, Lcom/tencent/mm/plugin/search/model/ar;->eii:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/plugin/search/model/aq;->eie:[Ljava/lang/String;

    iget v1, v1, Lcom/tencent/mm/plugin/search/model/ar;->eih:I

    aget-object v0, v0, v1

    iget-object v1, p2, Lcom/tencent/mm/plugin/search/model/aq;->eie:[Ljava/lang/String;

    iget v2, v2, Lcom/tencent/mm/plugin/search/model/ar;->eih:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/search/model/v;->mG(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/search/model/v;->mG(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method
