.class final Lcom/tencent/mm/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic gkP:Lcom/tencent/mm/ui/h;

.field private gkT:Lcom/tencent/mm/ui/q;

.field private gkU:Lcom/tencent/mm/ui/r;

.field private gkV:Ljava/util/LinkedList;

.field private gkW:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/h;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEf()V

    .line 960
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/o;)I
    .locals 1
    .parameter

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEl()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/o;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/o;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 822
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/o;->mo(I)V

    return-void
.end method

.method private aEf()V
    .locals 2

    .prologue
    .line 963
    new-instance v0, Lcom/tencent/mm/ui/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/q;-><init>(Lcom/tencent/mm/ui/o;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/o;->gkT:Lcom/tencent/mm/ui/q;

    .line 964
    new-instance v0, Lcom/tencent/mm/ui/r;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/r;-><init>(Lcom/tencent/mm/ui/o;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/o;->gkU:Lcom/tencent/mm/ui/r;

    .line 965
    return-void
.end method

.method private aEg()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkU:Lcom/tencent/mm/ui/r;

    invoke-static {v0}, Lcom/tencent/mm/ui/r;->a(Lcom/tencent/mm/ui/r;)V

    .line 977
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkT:Lcom/tencent/mm/ui/q;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/q;->clear()V

    .line 978
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 979
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/o;->gkW:I

    .line 980
    return-void
.end method

.method private aEi()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1005
    .line 1006
    iget-object v1, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 1007
    const/4 v0, 0x2

    .line 1011
    :cond_0
    :goto_0
    return v0

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized aEk()V
    .locals 1

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkU:Lcom/tencent/mm/ui/r;

    invoke-static {v0}, Lcom/tencent/mm/ui/r;->b(Lcom/tencent/mm/ui/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    monitor-exit p0

    return-void

    .line 1020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aEl()I
    .locals 1

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/mm/ui/o;->gkW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/o;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 822
    iput p1, p0, Lcom/tencent/mm/ui/o;->gkW:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/o;)V
    .locals 0
    .parameter

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEk()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/o;)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x2

    .line 822
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEi()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/tencent/mm/ui/p;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/p;-><init>(Lcom/tencent/mm/ui/o;I)V

    iget v0, v1, Lcom/tencent/mm/ui/p;->gkX:I

    if-ne v0, v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/tencent/mm/ui/p;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v0, v0, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/h;->aDX()Linfo/guardianproject/database/IHeapCursor;

    move-result-object v0

    new-instance v4, Lcom/tencent/mm/ui/m;

    iget-object v5, v1, Lcom/tencent/mm/ui/p;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v5, v5, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    invoke-direct {v4, v5, v0}, Lcom/tencent/mm/ui/m;-><init>(Lcom/tencent/mm/ui/h;Linfo/guardianproject/database/IHeapCursor;)V

    invoke-virtual {v4}, Lcom/tencent/mm/ui/m;->getCount()I

    move-result v0

    iget-object v5, v1, Lcom/tencent/mm/ui/p;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v5, v5, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v5, v5, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v6, "newcursor fillCursor last : %d  count %d "

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v2, v9, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/tencent/mm/ui/p;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v0, v0, Lcom/tencent/mm/ui/o;->gkT:Lcom/tencent/mm/ui/q;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/q;->b(Lcom/tencent/mm/ui/m;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/ui/p;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v0, v0, Lcom/tencent/mm/ui/o;->gkT:Lcom/tencent/mm/ui/q;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/q;->aEm()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/o;)I
    .locals 1
    .parameter

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEi()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/o;)I
    .locals 1
    .parameter

    .prologue
    .line 822
    iget v0, p0, Lcom/tencent/mm/ui/o;->gkW:I

    return v0
.end method

.method private declared-synchronized mo(I)V
    .locals 2
    .parameter

    .prologue
    .line 1029
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkV:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEi()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/o;->gkW:I

    .line 1033
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkU:Lcom/tencent/mm/ui/r;

    invoke-static {v0}, Lcom/tencent/mm/ui/r;->c(Lcom/tencent/mm/ui/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    monitor-exit p0

    return-void

    .line 1029
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized aEh()V
    .locals 2

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v0, v0, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v1, "newcursor resetQueue "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEg()V

    .line 985
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    monitor-exit p0

    return-void

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aEj()Z
    .locals 1

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/mm/ui/o;->gkW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized quit()V
    .locals 2

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v0, v0, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v1, "newcursor quit "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-direct {p0}, Lcom/tencent/mm/ui/o;->aEg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    monitor-exit p0

    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
