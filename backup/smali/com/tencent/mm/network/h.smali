.class final Lcom/tencent/mm/network/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cDU:J

.field final synthetic cDV:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/tencent/mm/network/h;->cDU:J

    iput-wide p3, p0, Lcom/tencent/mm/network/h;->cDV:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 355
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fh()Lcom/tencent/mm/network/bh;

    iget-wide v0, p0, Lcom/tencent/mm/network/h;->cDU:J

    iget-wide v2, p0, Lcom/tencent/mm/network/h;->cDV:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/network/bh;->onOOBNotify(JJ)V

    .line 356
    return-void
.end method
