.class final Lcom/tencent/mm/ui/chatting/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/gq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gq;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/d;->a(Landroid/widget/ListView;)V

    .line 1628
    return-void
.end method
