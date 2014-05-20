.class final Lcom/tencent/mapapi/map/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Wt:Lcom/tencent/mapapi/map/aq;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/tencent/mapapi/map/aq;

    invoke-direct {v0, p1}, Lcom/tencent/mapapi/map/aq;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ao;->Wt:Lcom/tencent/mapapi/map/aq;

    .line 107
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/mapapi/map/ap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mapapi/map/ao;->Wt:Lcom/tencent/mapapi/map/aq;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapapi/map/aq;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public final ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/mapapi/map/ao;->Wt:Lcom/tencent/mapapi/map/aq;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/aq;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ap;

    return-object v0
.end method

.method public final ap(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/mapapi/map/ao;->Wt:Lcom/tencent/mapapi/map/aq;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/aq;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ap;

    return-object v0
.end method

.method public final lX()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/mapapi/map/ao;->Wt:Lcom/tencent/mapapi/map/aq;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/aq;->lX()V

    .line 111
    return-void
.end method
