.class final Lcom/tencent/mm/ui/chatting/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ae;


# instance fields
.field final synthetic gNY:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field final synthetic gNZ:Lcom/tencent/mm/ui/chatting/es;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/et;->gNZ:Lcom/tencent/mm/ui/chatting/es;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/et;->gNY:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/ui/applet/am;)V
    .locals 1
    .parameter

    .prologue
    .line 369
    iget v0, p1, Lcom/tencent/mm/pluginsdk/ui/applet/am;->type:I

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/et;->gNZ:Lcom/tencent/mm/ui/chatting/es;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/chatting/es;->a(Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/pluginsdk/ui/applet/am;)V

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/et;->gNY:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->finish()V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
