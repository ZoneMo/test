.class final Lcom/tencent/mm/ui/r;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gkY:Lcom/tencent/mm/ui/o;

.field glc:J

.field private final gld:I

.field private final gle:I

.field lastUpdateTime:J


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/o;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/tencent/mm/ui/r;->gkY:Lcom/tencent/mm/ui/o;

    .line 837
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit16 v0, v0, 0x776

    iput v0, p0, Lcom/tencent/mm/ui/r;->gld:I

    .line 834
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit16 v0, v0, 0x77a

    iput v0, p0, Lcom/tencent/mm/ui/r;->gle:I

    .line 838
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/o;->a(Lcom/tencent/mm/ui/o;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 839
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/r;)V
    .locals 1
    .parameter

    .prologue
    .line 830
    iget v0, p0, Lcom/tencent/mm/ui/r;->gld:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/r;->removeMessages(I)V

    iget v0, p0, Lcom/tencent/mm/ui/r;->gle:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/r;->removeMessages(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/r;)V
    .locals 2
    .parameter

    .prologue
    .line 830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/r;->lastUpdateTime:J

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/r;)V
    .locals 1
    .parameter

    .prologue
    .line 830
    iget v0, p0, Lcom/tencent/mm/ui/r;->gle:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/r;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 842
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 843
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/tencent/mm/ui/r;->gle:I

    if-ne v0, v1, :cond_4

    .line 844
    iget v0, p0, Lcom/tencent/mm/ui/r;->gld:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/r;->removeMessages(I)V

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 846
    iget-wide v2, p0, Lcom/tencent/mm/ui/r;->glc:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/tencent/mm/ui/r;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v4, v4, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget v4, v4, Lcom/tencent/mm/ui/h;->gkH:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/tencent/mm/ui/r;->glc:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/tencent/mm/ui/r;->lastUpdateTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/mm/ui/r;->lastUpdateTime:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/tencent/mm/ui/r;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v4, v4, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget v4, v4, Lcom/tencent/mm/ui/h;->gkI:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/tencent/mm/ui/r;->lastUpdateTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    .line 847
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/r;->gkY:Lcom/tencent/mm/ui/o;

    invoke-static {v2}, Lcom/tencent/mm/ui/o;->c(Lcom/tencent/mm/ui/o;)V

    .line 851
    :goto_0
    iput-wide v0, p0, Lcom/tencent/mm/ui/r;->glc:J

    .line 855
    :cond_2
    :goto_1
    return-void

    .line 849
    :cond_3
    iget v2, p0, Lcom/tencent/mm/ui/r;->gld:I

    iget-object v3, p0, Lcom/tencent/mm/ui/r;->gkY:Lcom/tencent/mm/ui/o;

    iget-object v3, v3, Lcom/tencent/mm/ui/o;->gkP:Lcom/tencent/mm/ui/h;

    iget v3, v3, Lcom/tencent/mm/ui/h;->gkH:I

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/tencent/mm/ui/r;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 852
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/tencent/mm/ui/r;->gld:I

    if-ne v0, v1, :cond_2

    .line 853
    iget-object v0, p0, Lcom/tencent/mm/ui/r;->gkY:Lcom/tencent/mm/ui/o;

    invoke-static {v0}, Lcom/tencent/mm/ui/o;->c(Lcom/tencent/mm/ui/o;)V

    goto :goto_1
.end method
