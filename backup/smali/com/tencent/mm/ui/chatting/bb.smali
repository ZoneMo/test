.class abstract Lcom/tencent/mm/ui/chatting/bb;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic gLO:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

.field targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bb;->gLO:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final ar(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bb;->targetView:Landroid/view/View;

    .line 512
    return-void
.end method
