.class final Lcom/tencent/mm/ui/chatting/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gQX:Lcom/tencent/mm/ui/chatting/km;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/km;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/kn;->gQX:Lcom/tencent/mm/ui/chatting/km;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kn;->gQX:Lcom/tencent/mm/ui/chatting/km;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/km;->SM()V

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kn;->gQX:Lcom/tencent/mm/ui/chatting/km;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/km;->cancel()V

    .line 42
    return-void
.end method
