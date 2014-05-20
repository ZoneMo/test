.class final Lcom/tencent/mm/ui/chatting/ao;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic gLu:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChatFooterCustom;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ao;->gLu:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    .line 720
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 721
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 2
    .parameter

    .prologue
    .line 725
    check-cast p1, Lcom/tencent/mm/c/a/ec;

    .line 726
    iget-object v0, p1, Lcom/tencent/mm/c/a/ec;->bOW:Lcom/tencent/mm/c/a/ed;

    iget v0, v0, Lcom/tencent/mm/c/a/ed;->bOY:I

    packed-switch v0, :pswitch_data_0

    .line 733
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 728
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ao;->gLu:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->g(ILjava/lang/Object;)Z

    goto :goto_0

    .line 732
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ao;->gLu:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->g(ILjava/lang/Object;)Z

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
