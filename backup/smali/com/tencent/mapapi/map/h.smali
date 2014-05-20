.class final Lcom/tencent/mapapi/map/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Vz:Lcom/tencent/mapapi/map/MapView;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/MapView;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/tencent/mapapi/map/h;->Vz:Lcom/tencent/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/tencent/mapapi/map/h;->Vz:Lcom/tencent/mapapi/map/MapView;

    iget-object v0, v0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/ah;->bk(I)Z

    .line 320
    return-void
.end method
