.class public Lcom/tencent/mm/ui/chatting/InitCallBackImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private gQI:Z

.field private gQJ:Lcom/tencent/mm/ui/chatting/lz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/lz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/InitCallBackImageView;->gQJ:Lcom/tencent/mm/ui/chatting/lz;

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/InitCallBackImageView;->gQI:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/InitCallBackImageView;->gQI:Z

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/InitCallBackImageView;->gQJ:Lcom/tencent/mm/ui/chatting/lz;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/InitCallBackImageView;->gQJ:Lcom/tencent/mm/ui/chatting/lz;

    invoke-interface {v0}, Lcom/tencent/mm/ui/chatting/lz;->nB()V

    .line 46
    :cond_0
    return-void
.end method
