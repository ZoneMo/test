.class final Lcom/tencent/mm/ui/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic gom:Lcom/tencent/mm/ui/cy;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/tencent/mm/ui/df;->gom:Lcom/tencent/mm/ui/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/mm/ui/df;->gom:Lcom/tencent/mm/ui/cy;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/cy;->SM()V

    .line 409
    const/4 v0, 0x0

    return v0
.end method
