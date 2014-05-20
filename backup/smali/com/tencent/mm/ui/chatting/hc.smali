.class final Lcom/tencent/mm/ui/chatting/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/f;


# instance fields
.field final synthetic gPQ:Lcom/tencent/mm/ui/chatting/hb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/hb;)V
    .locals 0
    .parameter

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/hc;->gPQ:Lcom/tencent/mm/ui/chatting/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2019
    if-eqz p1, :cond_0

    .line 2020
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hc;->gPQ:Lcom/tencent/mm/ui/chatting/hb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/hb;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->l(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->k(Lcom/tencent/mm/storage/i;)V

    .line 2021
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/hc;->gPQ:Lcom/tencent/mm/ui/chatting/hb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/hb;->gPP:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2023
    :cond_0
    return-void
.end method
