.class public abstract Lcom/tencent/mapapi/map/MapActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private Ua:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/mapapi/map/ax;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 32
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 34
    :goto_0
    if-ge v1, v3, :cond_1

    .line 35
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ax;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/tencent/mapapi/map/ax;->onDestroy()V

    .line 40
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ax;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/tencent/mapapi/map/ax;->onPause()V

    .line 55
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 92
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ax;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/tencent/mapapi/map/ax;->onRestart()V

    .line 94
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 76
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ax;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/tencent/mapapi/map/ax;->onResume()V

    .line 75
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 111
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapActivity;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ax;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/tencent/mapapi/map/ax;->onStop()V

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method
