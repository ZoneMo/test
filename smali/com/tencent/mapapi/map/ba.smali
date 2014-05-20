.class abstract Lcom/tencent/mapapi/map/ba;
.super Lcom/tencent/mapapi/map/bb;
.source "SourceFile"


# instance fields
.field protected Vm:Lcom/tencent/mapapi/map/bh;

.field protected WF:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/tencent/mapapi/map/bb;-><init>()V

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/ba;->WF:Z

    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/mapapi/map/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/tencent/mapapi/map/ba;->Vm:Lcom/tencent/mapapi/map/bh;

    .line 849
    return-void
.end method

.method protected abstract a(Ljava/util/ArrayList;Z)V
.end method

.method protected abstract c(Landroid/graphics/Canvas;)V
.end method

.method protected abstract kY()V
.end method

.method protected abstract lX()V
.end method

.method protected abstract mF()V
.end method

.method protected abstract md()V
.end method

.method protected abstract me()V
.end method
