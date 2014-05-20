.class final Lcom/tencent/mm/plugin/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/d/c/l;


# instance fields
.field private dZs:Landroid/util/SparseArray;

.field private dZt:Landroid/util/SparseArray;

.field private final dZu:Ljava/util/ArrayList;

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/a;->dZs:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/a;->dZt:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/a;->dZu:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/a;->lock:Ljava/lang/Object;

    return-void
.end method

.method private static Zb()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sS()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "__file_user_action__"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private Zc()Landroid/util/SparseArray;
    .locals 5

    .prologue
    .line 122
    iget-object v1, p0, Lcom/tencent/mm/plugin/d/c/a;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/a;->dZs:Landroid/util/SparseArray;

    .line 124
    iget-object v3, p0, Lcom/tencent/mm/plugin/d/c/a;->dZt:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/a;->dZs:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/a;->dZt:Landroid/util/SparseArray;

    .line 127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 129
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/d/a/a;

    .line 130
    iget v4, v0, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 132
    :cond_0
    return-object v2
.end method

.method private Zd()Lcom/tencent/mm/plugin/d/a/b;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Lcom/tencent/mm/plugin/d/c/a;->Zc()Landroid/util/SparseArray;

    move-result-object v4

    .line 142
    invoke-static {}, Lcom/tencent/mm/plugin/d/c/a;->Zb()Ljava/lang/String;

    move-result-object v5

    .line 143
    if-nez v5, :cond_0

    .line 144
    const-string v0, "MicroMsg.ClickStreamReportHelper"

    const-string v1, "history file name is null, uin is not set"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-object v3

    .line 147
    :cond_0
    const-string v0, "MicroMsg.ClickStreamReportHelper"

    const-string v6, "history file name = %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {v0, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->lF(Ljava/lang/String;)[B

    move-result-object v6

    .line 149
    const-string v7, "MicroMsg.ClickStreamReportHelper"

    const-string v8, "history data is null ? %B"

    new-array v9, v1, [Ljava/lang/Object;

    if-nez v6, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    if-eqz v6, :cond_8

    array-length v0, v6

    if-lez v0, :cond_8

    .line 152
    :try_start_0
    new-instance v0, Lcom/tencent/mm/plugin/d/a/b;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/a/b;-><init>()V

    invoke-virtual {v0, v6}, Lcom/tencent/mm/plugin/d/a/b;->Q([B)Lcom/tencent/mm/plugin/d/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    invoke-static {v5}, Lcom/tencent/mm/plugin/d/c/p;->mk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->deleteFile(Ljava/lang/String;)Z

    .line 164
    :cond_1
    :goto_2
    const-string v3, "MicroMsg.ClickStreamReportHelper"

    const-string v5, "get history list is null ? %B"

    new-array v6, v1, [Ljava/lang/Object;

    if-nez v0, :cond_4

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    if-eqz v0, :cond_6

    .line 167
    iget-object v0, v0, Lcom/tencent/mm/plugin/d/a/b;->dZd:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/d/a/a;

    .line 168
    iget v1, v0, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/d/a/a;

    .line 169
    if-nez v1, :cond_5

    .line 170
    iget v1, v0, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    move v0, v2

    .line 149
    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 157
    invoke-static {v5}, Lcom/tencent/mm/plugin/d/c/p;->mk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 158
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->deleteFile(Ljava/lang/String;)Z

    move-object v0, v3

    goto :goto_2

    .line 157
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/tencent/mm/plugin/d/c/p;->mk(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/cj;->deleteFile(Ljava/lang/String;)Z

    :cond_3
    throw v0

    :cond_4
    move v1, v2

    .line 164
    goto :goto_3

    .line 173
    :cond_5
    iget v5, v0, Lcom/tencent/mm/plugin/d/a/a;->fDQ:I

    iput v5, v1, Lcom/tencent/mm/plugin/d/a/a;->fDQ:I

    .line 174
    iget v0, v0, Lcom/tencent/mm/plugin/d/a/a;->fYQ:I

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/d/a/a;->ht(I)I

    .line 175
    iget v0, v1, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 181
    :cond_6
    new-instance v3, Lcom/tencent/mm/plugin/d/a/b;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/d/a/b;-><init>()V

    .line 182
    :goto_5
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 183
    iget-object v0, v3, Lcom/tencent/mm/plugin/d/a/b;->dZd:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 185
    :cond_7
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, v3, Lcom/tencent/mm/plugin/d/a/b;->dZc:I

    goto/16 :goto_0

    :cond_8
    move-object v0, v3

    goto :goto_2
.end method

.method private a(Lcom/tencent/mm/plugin/d/a/e;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v2, "info must not be null"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 37
    check-cast p1, Lcom/tencent/mm/plugin/d/a/a;

    .line 40
    iget-object v2, p0, Lcom/tencent/mm/plugin/d/c/a;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/a;->dZs:Landroid/util/SparseArray;

    iget v3, p1, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/d/a/a;

    .line 42
    if-nez v0, :cond_0

    .line 43
    const-string v0, "MicroMsg.ClickStreamReportHelper"

    const-string v3, "click count : not found record"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/tencent/mm/plugin/d/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/a/a;-><init>()V

    .line 45
    iget v3, p1, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    iput v3, v0, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    .line 46
    const-string v3, ""

    iput-object v3, v0, Lcom/tencent/mm/plugin/d/a/a;->fYR:Ljava/lang/String;

    .line 47
    iget v3, p1, Lcom/tencent/mm/plugin/d/a/a;->fDQ:I

    iput v3, v0, Lcom/tencent/mm/plugin/d/a/a;->fDQ:I

    .line 48
    :cond_0
    iget v3, p1, Lcom/tencent/mm/plugin/d/a/a;->fDR:I

    iput v3, v0, Lcom/tencent/mm/plugin/d/a/a;->fDR:I

    .line 52
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/d/a/a;->YS()I

    .line 53
    iget-object v3, p0, Lcom/tencent/mm/plugin/d/c/a;->dZs:Landroid/util/SparseArray;

    iget v4, v0, Lcom/tencent/mm/plugin/d/a/a;->fDL:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 56
    :cond_2
    iget v1, v0, Lcom/tencent/mm/plugin/d/a/a;->fYQ:I

    goto :goto_1
.end method


# virtual methods
.method public final Za()Lcom/tencent/mm/n/x;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/tencent/mm/plugin/d/c/a;->Zd()Lcom/tencent/mm/plugin/d/a/b;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_2

    iget v1, v2, Lcom/tencent/mm/plugin/d/a/b;->dZc:I

    if-lez v1, :cond_2

    .line 85
    const-string v1, "MicroMsg.ClickStreamReportHelper"

    const-string v3, "userActionList.size is %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/tencent/mm/plugin/d/a/b;->dZc:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v1, v2, Lcom/tencent/mm/plugin/d/a/b;->dZd:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 89
    iget-object v0, v2, Lcom/tencent/mm/plugin/d/a/b;->dZd:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/d/a/a;

    .line 90
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 94
    :cond_1
    new-instance v1, Lcom/tencent/mm/plugin/d/b/g;

    invoke-direct {v1, v0}, Lcom/tencent/mm/plugin/d/b/g;-><init>(Ljava/util/LinkedList;)V

    move-object v0, v1

    .line 98
    :goto_1
    return-object v0

    .line 97
    :cond_2
    const-string v1, "MicroMsg.ClickStreamReportHelper"

    const-string v2, "userActionList.size is 0, return null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Lcom/tencent/mm/plugin/d/a/e;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/mm/plugin/d/a/e;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/d/c/a;->a(Lcom/tencent/mm/plugin/d/a/e;)I

    goto :goto_0
.end method

.method public final clear()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public final save()V
    .locals 6

    .prologue
    .line 61
    const-string v0, "MicroMsg.ClickStreamReportHelper"

    const-string v1, "do save"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mm/plugin/d/c/a;->Zd()Lcom/tencent/mm/plugin/d/a/b;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v1, "MicroMsg.ClickStreamReportHelper"

    const-string v2, "userActionList = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/tencent/mm/plugin/d/c/a;->Zb()Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "MicroMsg.ClickStreamReportHelper"

    const-string v3, "history file name = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget v2, v0, Lcom/tencent/mm/plugin/d/a/b;->dZc:I

    if-lez v2, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/d/a/b;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->e(Ljava/lang/String;[B)Z

    .line 72
    const-string v1, "MicroMsg.ClickStreamReportHelper"

    const-string v2, "save useraction list ok!"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    const-string v1, "MicroMsg.ClickStreamReportHelper"

    const-string v2, "list size is %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, v0, Lcom/tencent/mm/plugin/d/a/b;->dZc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.ClickStreamReportHelper"

    const-string v1, "save error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
