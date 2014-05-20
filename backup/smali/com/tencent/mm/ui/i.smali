.class final Lcom/tencent/mm/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/n;


# instance fields
.field final synthetic gkP:Lcom/tencent/mm/ui/h;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/h;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aEe()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 751
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v1, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v1}, Lcom/tencent/mm/ui/h;->b(Lcom/tencent/mm/ui/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/h;->a(Lcom/tencent/mm/ui/h;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/h;->b(Lcom/tencent/mm/ui/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 754
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/h;->b(Lcom/tencent/mm/ui/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/l;

    .line 755
    iget-object v0, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v0, v0, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v2, "newcursor all event is delete"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/h;->c(Lcom/tencent/mm/ui/h;)Lcom/tencent/mm/ui/m;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/m;->notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)V

    .line 784
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/h;->b(Lcom/tencent/mm/ui/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 785
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/h;->b(Lcom/tencent/mm/ui/h;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v1, v1, Lcom/tencent/mm/ui/h;->gkO:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 762
    iget-object v2, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/h;->aDY()[Landroid/util/SparseArray;

    move-result-object v2

    .line 763
    iget-object v3, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v5}, Lcom/tencent/mm/ui/h;->b(Lcom/tencent/mm/ui/h;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mm/ui/h;->a(Ljava/util/HashSet;[Landroid/util/SparseArray;)[Landroid/util/SparseArray;

    move-result-object v3

    .line 764
    iget-object v4, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v4, v4, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v5, "newcursor refreshPosistion last :%d, oldpos size is %d ,newpos size is %d  "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v9

    aget-object v0, v2, v9

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v10

    const/4 v0, 0x2

    aget-object v1, v3, v9

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/h;->b(Lcom/tencent/mm/ui/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/l;

    .line 766
    if-eqz v0, :cond_3

    .line 767
    iget-object v2, v0, Lcom/tencent/mm/ui/l;->gkS:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 768
    iget-object v2, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v2, v2, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v4, "newcursor notify cache update : key : %s "

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    aput-object v6, v5, v9

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v2}, Lcom/tencent/mm/ui/h;->c(Lcom/tencent/mm/ui/h;)Lcom/tencent/mm/ui/m;

    move-result-object v2

    iget-object v4, v0, Lcom/tencent/mm/ui/l;->fc:Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/mm/ui/l;->gkS:Ljava/lang/Object;

    check-cast v0, Linfo/guardianproject/database/CursorDataItem;

    invoke-virtual {v2, v4, v0}, Lcom/tencent/mm/ui/m;->notifyChange(Ljava/lang/Object;Linfo/guardianproject/database/CursorDataItem;)V

    goto :goto_2

    .line 771
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v2, v2, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v4, "newcursor event is null ! "

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 775
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/h;->a([Landroid/util/SparseArray;)V

    .line 776
    iget-object v0, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v0, v0, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v1, "newcursor after resort new pos size :%d  "

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-static {v3}, Lcom/tencent/mm/ui/h;->c(Lcom/tencent/mm/ui/h;)Lcom/tencent/mm/ui/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/m;->getPosistionMaps()[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 778
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 779
    iget-object v2, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    new-instance v3, Lcom/tencent/mm/ui/m;

    iget-object v4, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v5, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    invoke-virtual {v5}, Lcom/tencent/mm/ui/h;->aDX()Linfo/guardianproject/database/IHeapCursor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/mm/ui/m;-><init>(Lcom/tencent/mm/ui/h;Linfo/guardianproject/database/IHeapCursor;)V

    invoke-static {v2, v3, v10, v9}, Lcom/tencent/mm/ui/h;->a(Lcom/tencent/mm/ui/h;Lcom/tencent/mm/ui/m;ZZ)V

    .line 780
    iget-object v2, p0, Lcom/tencent/mm/ui/i;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v2, v2, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    const-string v3, "cache unuseful,reset cursor,last : %d"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
