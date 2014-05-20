.class final Lcom/tencent/mm/ui/chatting/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gLC:Lcom/tencent/mm/ui/chatting/aq;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ar;->gLC:Lcom/tencent/mm/ui/chatting/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ar;->gLC:Lcom/tencent/mm/ui/chatting/aq;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/aq;->aIX()Z

    .line 147
    return-void
.end method
