.class final Lcom/tencent/mm/storage/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final ggL:J

.field private ggM:Lcom/tencent/mm/aq/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1744
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/tencent/mm/storage/t;->ggL:J

    .line 1746
    new-instance v0, Lcom/tencent/mm/aq/a;

    invoke-direct {v0}, Lcom/tencent/mm/aq/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checkmsgid.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/a/c;->h(Ljava/lang/String;II)[B

    move-result-object v0

    .line 1750
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->A([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1752
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/aq/a;->cu([B)Lcom/tencent/mm/aq/a;

    .line 1753
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAS()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1757
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.DelSvrIdMgr"

    const-string v1, "DelSvrIDs parse Error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(IIJZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1801
    if-nez p2, :cond_1

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1804
    :cond_1
    if-eqz p5, :cond_2

    .line 1805
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAT()Z

    .line 1807
    :cond_2
    const-wide/32 v0, 0x15180

    div-long v0, p3, v0

    long-to-int v0, v0

    sub-int v0, p1, v0

    .line 1808
    packed-switch v0, :pswitch_data_0

    .line 1819
    const-string v1, "MicroMsg.DelSvrIdMgr"

    const-string v2, "should not add to thease lists, dayIndex:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1821
    :goto_1
    if-eqz p5, :cond_0

    .line 1822
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAS()V

    goto :goto_0

    .line 1810
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1813
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjM:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1816
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjN:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private aAS()V
    .locals 3

    .prologue
    .line 1765
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    invoke-virtual {v0}, Lcom/tencent/mm/aq/a;->toByteArray()[B

    move-result-object v0

    .line 1766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkmsgid.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/a/c;->a(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :goto_0
    return-void

    .line 1768
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private aAT()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1837
    const-string v2, "MicroMsg.DelSvrIdMgr"

    const-string v3, "checkOldData todayIndex:%d, t0Size:%d, t1Size:%d, t2Size:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget v5, v5, Lcom/tencent/mm/aq/a;->gjK:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v5, v5, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v6, v6, Lcom/tencent/mm/aq/a;->gjM:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v6, v6, Lcom/tencent/mm/aq/a;->gjN:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1838
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 1839
    iget-object v3, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget v3, v3, Lcom/tencent/mm/aq/a;->gjK:I

    sub-int v3, v2, v3

    .line 1840
    iget-object v4, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iput v2, v4, Lcom/tencent/mm/aq/a;->gjK:I

    .line 1841
    packed-switch v3, :pswitch_data_0

    .line 1855
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1856
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjM:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1857
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    move v0, v1

    .line 1858
    :goto_0
    :pswitch_0
    return v0

    .line 1845
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v2, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v2, v2, Lcom/tencent/mm/aq/a;->gjM:Ljava/util/LinkedList;

    iput-object v2, v0, Lcom/tencent/mm/aq/a;->gjN:Ljava/util/LinkedList;

    .line 1846
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v2, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v2, v2, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    iput-object v2, v0, Lcom/tencent/mm/aq/a;->gjM:Ljava/util/LinkedList;

    .line 1847
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    move v0, v1

    .line 1848
    goto :goto_0

    .line 1850
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v2, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v2, v2, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    iput-object v2, v0, Lcom/tencent/mm/aq/a;->gjN:Ljava/util/LinkedList;

    .line 1851
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjM:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1852
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    move v0, v1

    .line 1853
    goto :goto_0

    .line 1841
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final a(IIJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1797
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/storage/t;->a(IIJZ)V

    .line 1798
    return-void
.end method

.method protected final c(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1827
    const-string v0, "MicroMsg.DelSvrIdMgr"

    const-string v1, "add size:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1828
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAT()Z

    .line 1829
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int v1, v0

    move v6, v5

    .line 1830
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1831
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/storage/t;->a(IIJZ)V

    .line 1830
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1833
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAS()V

    .line 1834
    return-void
.end method

.method protected final lQ(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1773
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-direct {p0}, Lcom/tencent/mm/storage/t;->aAS()V

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1777
    if-ne v0, p1, :cond_1

    move v0, v1

    .line 1793
    :goto_0
    return v0

    .line 1782
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjM:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1783
    if-ne v0, p1, :cond_3

    move v0, v1

    .line 1784
    goto :goto_0

    .line 1788
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/storage/t;->ggM:Lcom/tencent/mm/aq/a;

    iget-object v0, v0, Lcom/tencent/mm/aq/a;->gjN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1789
    if-ne v0, p1, :cond_5

    move v0, v1

    .line 1790
    goto :goto_0

    .line 1793
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
