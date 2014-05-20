.class final Lcom/tencent/mapapi/map/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic VV:Lcom/tencent/mapapi/map/v;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/v;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/tencent/mapapi/map/w;->VV:Lcom/tencent/mapapi/map/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 390
    :goto_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/w;->VV:Lcom/tencent/mapapi/map/v;

    iget-boolean v0, v0, Lcom/tencent/mapapi/map/v;->c:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/tencent/mapapi/map/w;->VV:Lcom/tencent/mapapi/map/v;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/v;->ms()V

    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method
