.class final Lcom/tencent/mm/plugin/search/model/an;
.super Lcom/tencent/mm/plugin/search/model/z;
.source "SourceFile"


# instance fields
.field final synthetic ehV:Lcom/tencent/mm/plugin/search/model/ag;

.field private eho:Ljava/lang/String;

.field private ehr:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/an;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    .line 59
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/tencent/mm/plugin/search/model/z;-><init>(Ljava/lang/String;ILcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)V

    .line 56
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/an;->ehr:I

    .line 60
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/an;->eho:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected final a([Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->u([Ljava/lang/String;)[I

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/an;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/plugin/search/model/a;->egw:[I

    invoke-virtual {v1, p1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->a([Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    new-instance v3, Lcom/tencent/mm/plugin/search/model/aq;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/search/model/aq;-><init>()V

    .line 82
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Lcom/tencent/mm/plugin/search/model/aq;->a(Landroid/database/Cursor;[IZ)V

    .line 83
    new-instance v4, Landroid/util/Pair;

    iget-wide v5, v3, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/mm/plugin/search/model/aq;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    new-instance v1, Lcom/tencent/mm/plugin/search/model/ao;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/search/model/ao;-><init>(Lcom/tencent/mm/plugin/search/model/an;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/search/model/an;->ehr:I

    .line 102
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchMessage(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/an;->eho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/an;->ehr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
