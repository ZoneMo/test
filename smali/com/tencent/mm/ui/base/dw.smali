.class final Lcom/tencent/mm/ui/base/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctv:J

.field final synthetic gDs:F

.field final synthetic gDt:F

.field final synthetic gDu:F

.field final synthetic gDv:F

.field final synthetic gDw:F

.field final synthetic gDx:Lcom/tencent/mm/ui/base/MultiTouchImageView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/MultiTouchImageView;JFFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/tencent/mm/ui/base/dw;->gDx:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    const/high16 v0, 0x4300

    iput v0, p0, Lcom/tencent/mm/ui/base/dw;->gDs:F

    iput-wide p2, p0, Lcom/tencent/mm/ui/base/dw;->ctv:J

    iput p4, p0, Lcom/tencent/mm/ui/base/dw;->gDt:F

    iput p5, p0, Lcom/tencent/mm/ui/base/dw;->gDu:F

    iput p6, p0, Lcom/tencent/mm/ui/base/dw;->gDv:F

    iput p7, p0, Lcom/tencent/mm/ui/base/dw;->gDw:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 484
    iget v2, p0, Lcom/tencent/mm/ui/base/dw;->gDs:F

    iget-wide v3, p0, Lcom/tencent/mm/ui/base/dw;->ctv:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 485
    iget v1, p0, Lcom/tencent/mm/ui/base/dw;->gDt:F

    iget v2, p0, Lcom/tencent/mm/ui/base/dw;->gDu:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 486
    iget-object v2, p0, Lcom/tencent/mm/ui/base/dw;->gDx:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    iget v3, p0, Lcom/tencent/mm/ui/base/dw;->gDv:F

    iget v4, p0, Lcom/tencent/mm/ui/base/dw;->gDw:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->c(FFF)V

    .line 487
    iget v1, p0, Lcom/tencent/mm/ui/base/dw;->gDs:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/tencent/mm/ui/base/dw;->gDx:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/MultiTouchImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_0
    return-void
.end method
