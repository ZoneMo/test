.class final Lcom/tencent/mm/ui/chatting/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic gLu:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChatFooterCustom;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ak;->gLu:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ak;->gLu:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->onClick(Landroid/view/View;)V

    .line 163
    return-void
.end method
