.class final Lcom/tencent/mm/ui/chatting/bd;
.super Lcom/tencent/mm/ui/chatting/bb;
.source "SourceFile"


# instance fields
.field private cPc:I

.field private cPd:I

.field final synthetic gLO:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

.field private gLQ:F

.field private gLR:F

.field private gLS:F

.field private gLT:F

.field private gLU:F

.field private gLV:F

.field private gLW:F

.field private gLX:F

.field private gLY:F

.field private gLZ:F


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bd;->gLO:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/bb;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;)V

    .line 224
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLU:F

    const v0, 0x3ca3d70a

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLV:F

    .line 232
    iput p2, p0, Lcom/tencent/mm/ui/chatting/bd;->cPc:I

    .line 233
    iput p3, p0, Lcom/tencent/mm/ui/chatting/bd;->cPd:I

    .line 235
    const v0, 0x3dcccccd

    const v1, 0x3f666666

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->o(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLQ:F

    .line 236
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLQ:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLR:F

    .line 237
    const v0, -0x41666666

    const v1, -0x42333333

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->o(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLT:F

    .line 238
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bd;->gm()V

    .line 239
    return-void
.end method

.method private gm()V
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLT:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 260
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLV:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->gLU:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLV:F

    .line 262
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLT:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLS:F

    .line 263
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLT:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->gLV:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLT:F

    .line 265
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLS:F

    const v1, 0x3f8ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bb;->targetView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bb;->targetView:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/chatting/bc;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/bc;-><init>(Lcom/tencent/mm/ui/chatting/bb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 270
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLQ:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->cPc:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLW:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLR:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->cPc:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLX:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLS:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->cPd:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLY:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLT:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->cPd:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLZ:F

    .line 271
    return-void

    .line 266
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 243
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLW:F

    .line 244
    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->gLY:F

    .line 245
    iget v2, p0, Lcom/tencent/mm/ui/chatting/bd;->gLW:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/bd;->gLX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 246
    iget v0, p0, Lcom/tencent/mm/ui/chatting/bd;->gLW:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/bd;->gLX:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/bd;->gLW:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 248
    :cond_0
    iget v2, p0, Lcom/tencent/mm/ui/chatting/bd;->gLY:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/bd;->gLZ:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 249
    iget v1, p0, Lcom/tencent/mm/ui/chatting/bd;->gLY:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/bd;->gLZ:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/bd;->gLY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 251
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 253
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/bd;->gm()V

    .line 256
    :cond_2
    return-void
.end method

.method public final initialize(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/mm/ui/chatting/bb;->initialize(IIII)V

    .line 277
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/bd;->setRepeatCount(I)V

    .line 278
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/bd;->setDuration(J)V

    .line 285
    return-void
.end method
