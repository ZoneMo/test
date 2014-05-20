.class final Lcom/tencent/mm/plugin/whatsnew/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/whatsnew/ui/d;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->e(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->e(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->c(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->f(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->f(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    iget-object v1, v1, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffG:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/e;->ffH:Lcom/tencent/mm/plugin/whatsnew/ui/d;

    iget-object v0, v0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->g(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    .line 197
    return-void
.end method
