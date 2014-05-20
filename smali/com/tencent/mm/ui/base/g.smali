.class final Lcom/tencent/mm/ui/base/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic gys:Lcom/tencent/mm/ui/base/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/f;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/mm/ui/base/g;->gys:Lcom/tencent/mm/ui/base/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/mm/ui/base/g;->gys:Lcom/tencent/mm/ui/base/f;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/f;->SM()V

    .line 65
    const/4 v0, 0x0

    return v0
.end method
